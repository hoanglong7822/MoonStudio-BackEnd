<?php

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\PaymentController;
Route::get('/products', [ProductController::class, 'index']);
Route::get('/user', [UserController::class, 'index']);
Route::post('/search', [SearchController::class, 'search']);
Route::get('/winter', [HomeController::class, 'index']);
/////products
Route::get('/product/{product_id}', [ProductController::class, 'show']);
Route::get('/men', [ProductController::class, 'men']);
Route::get('/category/{category_id}', action: [ProductController::class, 'Category']);
Route::post('/payment', [PaymentController::class, 'processPayment']);




