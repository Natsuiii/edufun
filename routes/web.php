<?php

use App\Http\Controllers\AuthorController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'index'])->name('home.index');
Route::get('/category/{category:slug}', [CategoryController::class, 'index'])->name('category.index');
Route::get('/writers', [AuthorController::class, 'index'])->name('author.index');
Route::get('/post/{post:slug}', [PostController::class, 'index'])->name('posts.index');
Route::get('/writers/{author:slug}', [AuthorController::class, 'show'])->name('author.show');
Route::get('/about-us', [HomeController::class, 'aboutus'])->name('about.index');
Route::get('/popular', [PostController::class, 'popular'])->name('popular.index');