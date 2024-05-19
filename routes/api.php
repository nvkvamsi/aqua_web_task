<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GigController;

Route::get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/job_home', [GigController::class, 'home']);
