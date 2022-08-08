<?php

use Illuminate\Support\Facades\Route;
use App\Mail\BookingMail;
use Illuminate\Support\Facades\Mail;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


// Route for Mailing
Route::get('/email',function(){
    Mail::to('publishfresh@gmail.com')->send(new BookingMail()); //Get logged in user's email
    return new BookingMail();
});
