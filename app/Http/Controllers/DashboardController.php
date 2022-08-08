<?php

namespace App\Http\Controllers;

use App\Http\Resources\BookingAnswerResource;
use App\Http\Resources\BookingResourceDashboard;
use App\Models\Booking;
use App\Models\BookingAnswer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{   

    public function index(Request $request)
    {
        $user = $request->user();

        // Total Number of Packages
        //$total = Booking::query()->where('user_id', $user->id)->count(); //Shows the package number for logged in user only
        $total = Booking::query()->count();

        // Latest Packages
        //$latest = Booking::query()->where('user_id', $user->id)->latest('created_at')->first(); //Shows the latest package for logged in user only
        $latest = Booking::query()->latest('created_at')->first();

        // Total Number of Bookings  
        $totalAnswers = BookingAnswer::query()
            ->join('bookings', 'booking_answers.booking_id', '=', 'bookings.id')
            //->where('bookings.user_id', $user->id) // Display For Logged in User Only
            ->count();

        // Latest 5 Bookings
        $latestAnswers = BookingAnswer::query()
            ->join('bookings', 'booking_answers.booking_id', '=', 'bookings.id')
            //->where('bookings.user_id', $user->id) // Display For Logged in User Only
            ->orderBy('end_date', 'DESC')
            ->limit(5)
            ->getModels('booking_answers.*');

        // Display All Bookings [ViewBookings.vue]
        $displayBookings = BookingAnswer::query()
            ->join('bookings', 'booking_answers.booking_id', '=', 'bookings.id')
            //->join('booking_answers', 'booking_answers.id', '=', 'booking_question_answers.booking_answer_id')
            //->where('bookings.user_id', $user->id) // Display For Logged in User Only
            ->orderBy('start_date', 'ASC')
            ->getModels('booking_answers.*' , 'booking_question_answers.*');
            
        
       

        return [
            'totalBookings' => $total,
            'latestBooking' => $latest ? new BookingResourceDashboard($latest) : null,
            'totalAnswers' => $totalAnswers,
            'latestAnswers' => BookingAnswerResource::collection($latestAnswers),
            'displayBookings' => BookingAnswerResource::collection($displayBookings)
        ];


    }
}
