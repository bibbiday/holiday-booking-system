<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreBookingAnswerRequest;
use App\Http\Resources\BookingResource;
use App\Models\Booking;
use App\Http\Requests\StoreBookingRequest;
use App\Http\Requests\UpdateBookingRequest;
use App\Models\BookingAnswer;
use App\Models\BookingQuestion;
use App\Models\BookingQuestionAnswer;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;

class BookingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $user = $request->user();
        
        // Below code shows only signed-in user's packages
        //return BookingResource::collection(Booking::where('user_id', $user->id)->orderBy('created_at', 'DESC')->paginate(10));

        // Below code showss all the packages in DB [Can only delete]
        return BookingResource::collection(Booking::orderBy('created_at', 'DESC')->paginate(10));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \App\Http\Requests\StoreBookingRequest $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreBookingRequest $request)
    {
        $data = $request->validated();

        // Check if image was given and save on local file system
        if (isset($data['image'])) {
            $relativePath  = $this->saveImage($data['image']);
            $data['image'] = $relativePath;
        }

        $booking = Booking::create($data);

        // Create new itinerarys
        foreach ($data['questions'] as $question) {
            $question['booking_id'] = $booking->id;
            $this->createQuestion($question);
        }

        return new BookingResource($booking);
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Booking $booking
     * @return \Illuminate\Http\Response
     */
    public function show(Booking $booking, Request $request)
    {
        $user = $request->user();
        if ($user->id !== $booking->user_id) {
            return abort(403, 'Unauthorized action.');
        }

        return new BookingResource($booking);
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Booking $booking
     * @return \Illuminate\Http\Response
     */
    public function showForGuest(Booking $booking)
    {
        if (!$booking->status) {
            return response("", 404);
        }

        $currentDate = new \DateTime();
        $expireDate = new \DateTime($booking->expire_date);
        if ($currentDate > $expireDate) {
            return response("", 404);
        }

        return new BookingResource($booking);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \App\Http\Requests\UpdateBookingRequest $request
     * @param \App\Models\Booking                     $booking
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateBookingRequest $request, Booking $booking)
    {
        $data = $request->validated();

        // Check if image was given and save on local file system
        if (isset($data['image'])) {
            $relativePath = $this->saveImage($data['image']);
            $data['image'] = $relativePath;

            // If there is an old image, delete it
            if ($booking->image) {
                $absolutePath = public_path($booking->image);
                File::delete($absolutePath);
            }
        }

        // Update package in the database
        $booking->update($data);

        // Get ids as plain array of existing itinerarys
        $existingIds = $booking->questions()->pluck('id')->toArray();
        // Get ids as plain array of new itinerarys
        $newIds = Arr::pluck($data['questions'], 'id');
        // Find itinerarys to delete
        $toDelete = array_diff($existingIds, $newIds);
        //Find itinerarys to add
        $toAdd = array_diff($newIds, $existingIds);

        // Delete itinerarys by $toDelete array
        BookingQuestion::destroy($toDelete);

        // Create new itinerarys
        foreach ($data['questions'] as $question) {
            if (in_array($question['id'], $toAdd)) {
                $question['booking_id'] = $booking->id;
                $this->createQuestion($question);
            }
        }

        // Update existing itinerarys
        $questionMap = collect($data['questions'])->keyBy('id');
        foreach ($booking->questions as $question) {
            if (isset($questionMap[$question->id])) {
                $this->updateQuestion($question, $questionMap[$question->id]);
            }
        }

        return new BookingResource($booking);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Booking $booking
     * @return \Illuminate\Http\Response
     */
    public function destroy(Booking $booking, Request $request)
    {
        $user = $request->user();
        if ($user->id !== $booking->user_id) {
            return abort(403, 'Unauthorized action.');
        }

        $booking->delete();

        // If there is an old image, delete it
        if ($booking->image) {
            $absolutePath = public_path($booking->image);
            File::delete($absolutePath);
        }

        return response('', 204);
    }

    public function storeAnswer(StoreBookingAnswerRequest $request, Booking $booking)
    {
        $validated = $request->validated();
//        var_dump($validated, $booking);

        $bookingAnswer = BookingAnswer::create([
            'booking_id' => $booking->id,
            'start_date' => date('Y-m-d H:i:s'),
            'end_date' => date('Y-m-d H:i:s'),
        ]);

        foreach ($validated['answers'] as $questionId => $answer) {
            $question = BookingQuestion::where(['id' => $questionId, 'booking_id' => $booking->id])->get();
            if (!$question) {
                return response("Invalid question ID: \"$questionId\"", 400);
            }

            $data = [
                'booking_question_id' => $questionId,
                'booking_answer_id' => $bookingAnswer->id,
                'answer' => is_array($answer) ? json_encode($answer) : $answer
            ];

            $questionAnswer = BookingQuestionAnswer::create($data);
        }

        return response("", 201);

    }

    /**
     * Create a question and return
     *
     * @param $data
     * @return mixed
     * @throws \Illuminate\Validation\ValidationException
     */
    private function createQuestion($data)
    {
        if (is_array($data['data'])) {
            $data['data'] = json_encode($data['data']);
        }
        $validator = Validator::make($data, [
            'question' => 'required|string',
            'type' => ['required', Rule::in([
                Booking::TYPE_TEXT,
                Booking::TYPE_TEXTAREA,
                Booking::TYPE_SELECT,
                Booking::TYPE_RADIO,
                Booking::TYPE_CHECKBOX,
            ])],
            'description' => 'nullable|string',
            'data' => 'present',
            'booking_id' => 'exists:App\Models\Booking,id'
        ]);

        return BookingQuestion::create($validator->validated());
    }

    /**
     * Update a itinerary and return true or false
     *
     * @param \App\Models\BookingQuestion $question
     * @param                            $data
     * @return bool
     * @throws \Illuminate\Validation\ValidationException
     */
    private function updateQuestion(BookingQuestion $question, $data)
    {
        if (is_array($data['data'])) {
            $data['data'] = json_encode($data['data']);
        }
        $validator = Validator::make($data, [
            'id' => 'exists:App\Models\BookingQuestion,id',
            'question' => 'required|string',
            'type' => ['required', Rule::in([
                Booking::TYPE_TEXT,
                Booking::TYPE_TEXTAREA,
                Booking::TYPE_SELECT,
                Booking::TYPE_RADIO,
                Booking::TYPE_CHECKBOX,
            ])],
            'description' => 'nullable|string',
            'data' => 'present',
        ]);

        return $question->update($validator->validated());
    }

    /**
     * Save image in local file system and return saved image path
     *
     * @param $image
     * @throws \Exception
     */
    private function saveImage($image)
    {
        // Check if image is valid base64 string
        if (preg_match('/^data:image\/(\w+);base64,/', $image, $type)) {
            // Take out the base64 encoded text without mime type
            $image = substr($image, strpos($image, ',') + 1);
            // Get file extension
            $type = strtolower($type[1]); // jpg, png, gif

            // Check if file is an image
            if (!in_array($type, ['jpg', 'jpeg', 'gif', 'png'])) {
                throw new \Exception('invalid image type');
            }
            $image = str_replace(' ', '+', $image);
            $image = base64_decode($image);

            if ($image === false) {
                throw new \Exception('base64_decode failed');
            }
        } else {
            throw new \Exception('did not match data URI with image data');
        }

        $dir = 'images/';
        $file = Str::random() . '.' . $type;
        $absolutePath = public_path($dir);
        $relativePath = $dir . $file;
        if (!File::exists($absolutePath)) {
            File::makeDirectory($absolutePath, 0755, true);
        }
        file_put_contents($relativePath, $image);

        return $relativePath;
    }

    public function createQuestionAnswer($data)
    {
        if (is_array($data['answer'])) {
            $data['answer'] = json_encode($data['answer']);
        }
    }
}
