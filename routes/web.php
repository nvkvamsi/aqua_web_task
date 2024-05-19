<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\CareerController;
use App\Http\Controllers\GigController;
use App\Http\Controllers\UiController;
Route::get('/', function () {
    return view('pages.careers');
})->name('index');
Route::view('/signup', 'ui.auth.signup')->name('ui.signup');
Route::post('login', [UiController::class, 'login'])->name('ui_login');
Route::post('signup', [UiController::class, 'signup'])->name('ui_signup');
Route::post('logout', [UiController::class, 'logout'])->name('ui.logout');
Route::middleware(['guest'])->group(function () {
    Route::view('/login', 'ui.auth.login')->name('ui.login');
});
Route::resource('jobs', GigController::class)->names([
    'index' => 'jobs.index',
    'show' => 'jobs.show',
    'home' => 'jobs.home',
]);

Route::view('/careers', 'pages/careers')->name('careers');


Route::middleware(['auth'])->group(function () {
    Route::view('/apply-now/{job_id}', 'pages.applynow')->name('apply-now');
});
Route::view('/contact-us', 'pages/contact-us')->name('contact-us');

Route::view('/read-more', 'pages/readmore')->name('read-more');


Route::resource('contact', ContactController::class)->names([
    'store' => 'contact.store',
  
]);
Route::resource('career', CareerController::class)->names([
    'store' => 'career.store',
  
]);