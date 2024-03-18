<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

Route::get('/', [AuthController::class, 'index'])->name('login');
Route::get('register', function () {
    return view('register');
});
Route::prefix('auth')->group(function () {
    Route::post('login', [AuthController::class, 'authLogin'])->name('authLogin');
    Route::post('register', [AuthController::class, 'authRegister'])->name('authRegister');
});

Route::get('logout', [AuthController::class, 'authLogout'])->name('logout')->middleware('auth');
Route::middleware('auth')->group(function () {
    Route::get('home', [HomeController::class, 'index'])->name('home');
    Route::post('add', [HomeController::class, 'addProduct'])->name('add');
    Route::post('edit', [HomeController::class, 'editProduct'])->name('edit');
});
Route::prefix('api')->group(function () {
    Route::get('kategori', [HomeController::class, 'getKategori'])->name('kategori');
});
