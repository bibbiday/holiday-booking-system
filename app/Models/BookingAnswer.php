<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BookingAnswer extends Model
{
    use HasFactory;

    public const CREATED_AT = null;
    public const UPDATED_AT = null;

    protected $fillable = ['booking_id', 'start_date', 'end_date'];

    public function booking()
    {
        return $this->belongsTo(Booking::class);
    }
}
