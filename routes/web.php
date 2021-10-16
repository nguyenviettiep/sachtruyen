<?php

use App\Http\Controllers\DanhmuctruyenController;
use App\Http\Controllers\TruyenController;
use App\Http\Controllers\ChapterController;
use App\Http\Controllers\indexController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Auth::routes();

Route::get('/',[indexController::class,'index']);
Route::get('/danh-muc/{slug}',[indexController::class,'danhmuc']);
Route::get('/xem-truyen/{slug}',[indexController::class,'xemtruyen']);
Route::get('/xem-chapter/{slug}',[indexController::class,'xemchapter']);
Route::get('/tim-kiem',[indexController::class,'timkiem']);





Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::resource('/danhmuc', DanhmuctruyenController::class);
Route::resource('/truyen', TruyenController::class);
Route::resource('/chapter', ChapterController::class);
Route::get('/custom_error', function(){
    return Artisan::call('php artisan vendor:publish --tag=laravel-errors');
});
Route::resource('/user', UserController::class);


