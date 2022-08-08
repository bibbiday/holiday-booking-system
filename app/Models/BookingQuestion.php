<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BookingQuestion extends Model
{
    use HasFactory;

    protected $fillable = ['id', 'type', 'question', 'description', 'data', 'booking_id'];

    public function booking()
    {
        return $this->belongsTo(Booking::class);
    }
}
