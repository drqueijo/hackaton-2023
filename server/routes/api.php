<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\PublisherController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\ReservationController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\AppController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::resource('authors', AuthorController::class);
Route::resource('courses', CourseController::class);
Route::resource('publishers', PublisherController::class);
Route::resource('books', BookController::class);
Route::resource('students', StudentController::class);
Route::resource('reservations', ReservationController::class);

Route::post('/app/login', [AppController::class, 'login']);
Route::get('/app/books', [AppController::class, 'getBooks']);
Route::get('/app/books/{id}', [AppController::class, 'getBookDetails']);