<?php

use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group.
|
*/

Route::middleware('auth:sanctum')->group(function () {
    Route::get('/user', function (Request $request) {
        return $request->user();
    });
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::resource('/booking', \App\Http\Controllers\BookingController::class);

    Route::get('/dashboard', [\App\Http\Controllers\DashboardController::class, 'index']);
});

Route::get('/booking-by-slug/{booking:slug}', [\App\Http\Controllers\BookingController::class, 'showForGuest']);
Route::post('/booking/{booking}/answer', [\App\Http\Controllers\BookingController::class, 'storeAnswer']);

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
