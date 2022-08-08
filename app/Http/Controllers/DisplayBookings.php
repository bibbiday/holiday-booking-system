<?php

namespace App\Http\Controllers;

use App\Http\Resources\BookingAnswerResource;
use App\Http\Resources\BookingResource;
use App\Models\Booking;
use App\Models\BookingAnswer;
use Illuminate\Http\Request;

class DisplayBookings extends Controller
{
    public function index()
    {
        $bookings = Booking::orderby('id', 'title')->get();

        return response()->json($bookings);

        //$bookings = BookingAnswer::all()->toArray();
       // return array_reverse($bookings);  
        
        // All The Bookings
       // $displayBookings= BookingAnswer::query()
          //  ->join('bookings', 'booking_answers.booking_id', '=', 'bookings.id')
         //   ->where('bookings.user_id', $user->id)
         //   ->getModels('booking_answers.*');    

       // return [
        //    'displayBookings' => BookingAnswerResource::collection($displayBookings)
        //];
    }

    public function show($id)
    {
        $booking = BookingAnswer::find($id);
        return response()->json($booking);
    }

    public function destroy($id)
    {
        $booking = BookingAnswer::find($id);
        $booking->delete();

        return response()->json('Booking deleted!');
    }
}