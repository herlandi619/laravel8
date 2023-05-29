<?php

use App\Http\Controllers\AdminCategoryController;
use App\Http\Controllers\DashboardPostController;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home',
    [
        "title" => "Home",
        "active" => "home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "name" => "vava alamsyah",
        "email" => "vavalamsyah@gmail.com",
        "image" => "sevil.jpg",
        "umur" => 29,
        "jurusan" => "sistem informasi",
        "hobby" => "ngoding",
        "title" => "About",
        "active" => "about"
    ]);
});

Route::get('/posts', [PostController::class, 'index']);

//halaman singel post
Route::get('/posts/{post:slug}', [PostController::class, 'show']);

Route::get('/categories', function(){
    return view('categories', [
        'title' => 'Post Categories',
        'active' => 'categories',
        'categories' => Category::all()
    ]);
});

//route login
Route::get('/login', [LoginController::class,'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class,'authenticate']);

//route logout
Route::post('/logout', [LoginController::class, 'logout']);

//route register
Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

//route dashboard
Route::get('/dashboard', function(){
    return view('dashboard.index');
})->middleware('auth');

//route Dashboardpostcontroller
Route::get('dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');
Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');


Route::resource('/dashboard/categories', AdminCategoryController::class)->except('show')->middleware('admin');