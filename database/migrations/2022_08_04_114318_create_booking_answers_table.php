<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBookingAnswersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('booking_answers', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(\App\Models\Booking::class, 'booking_id');
            $table->timestamp('start_date')->nullable();
            $table->timestamp('end_date')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('booking_answers');
    }
}
