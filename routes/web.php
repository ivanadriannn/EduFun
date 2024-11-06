<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\WriterController;

Route::get('/', [CategoryController::class, 'getCategory'])->name('home');
Route::get('/course/{id}', [CourseController::class, 'getCourse'])->name('course');
Route::get('/category/{id}', [CategoryController::class, 'getCategoryDetail'])->name('category');
Route::get('/writers', [WriterController::class, 'getWriter'])->name('writer');
Route::get('/writer/{id}', [WriterController::class, 'getWriterDetail'])->name('writerDetail');
Route::get('/popular', [CourseController::class, 'getPopular'])->name('popular');	
Route::get('/about-us', function () {
    return view('aboutUs');
})->name('about');