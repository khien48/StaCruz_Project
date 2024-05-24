<?php

use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SectionController;
use App\Http\Controllers\StudentController;

use Inertia\Inertia;

Route::get('/', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {


    Route::get('/dashboard', function () {
        return Inertia::render('Dashboard');
    })->name('dashboard');
});


Route::get('/studentlist', function () {
    return Inertia::render('StudentList');
})->name('studentlist');


Route::get('/sectionlist', function () {
    return Inertia::render('Sectionlist');
})->name('sectionlist');

Route::get('/test', function () {
    return Inertia::render('Test');
})->name('test');


Route::post('/sections', [SectionController::class, 'store'])->name('SectionList');
Route::post('/students', [StudentController::class, 'store'])->name('StudentList');

Route::get('/delete-section-list/{id}', [SectionController::class, 'delete'])->name('delete');
Route::get('/delete-student-list/{lrn}', [StudentController::class, 'delete'])->name('delete');


