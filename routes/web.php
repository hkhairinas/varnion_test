<?php

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'index']);
Route::get('profesi', [HomeController::class, 'getProfesi']);
Route::get('get-data', [HomeController::class, 'getData']);
