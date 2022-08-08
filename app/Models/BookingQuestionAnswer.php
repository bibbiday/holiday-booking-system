<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BookingQuestionAnswer extends Model
{
    use HasFactory;

    protected $fillable = ['booking_question_id', 'booking_answer_id', 'answer'];
}
