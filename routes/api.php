<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SectionController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\FacultyController;
use App\Http\Controllers\ClassroomController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');



Route::get('/sections', [SectionController::class, 'index']);
Route::get('/students', [StudentController::class, 'index']);
Route::get('/faculties', [FacultyController::class, 'index']);
Route::get('/classrooms', [ClassroomController::class, 'index']);


// --------------------------Section----------------------------- 

Route::post('/sections', [SectionController::class, 'store'])->name('SectionList');
Route::post('/students', [StudentController::class, 'store'])->name('StudentList');

Route::get('/delete-section-list/{id}', [SectionController::class, 'delete'])->name('delete');
Route::get('/delete-student-list/{lrn}', [StudentController::class, 'delete'])->name('delete');

