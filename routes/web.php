<?php

use App\Http\Controllers\PostController;
use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('home', [
        'title' => 'Home',
    ]);
});

Route::get('/about', function () {
    return view('about', [
        'title' => 'About',
        'name' => 'Almundarisna',
        'email' => 'wintonalmundarisna@gmail.com',
        'image' => 'winton.jpg'
    ]);
});

Route::get('/posts', [PostController::class, 'index']);

// Halaman single route 
Route::get('posts/{post:slug}', [PostController::class, 'show']);
// Ngirim id berupa slug ke posts

// Route::get('/categories/{category:slug}', function(Category $category) {
//     return view('category', [
//         'title' => $category->name,
//         'posts' => $category->posts,
//         'category' => $category->name,
//     ]);
// });


Route::get('/categories', function() {
    return view('categories', [
        'title' => 'Post Categories',
        'categories' => Category::all()
    ]);
});


Route::get('/categories/{category:slug}', function(Category $category){
    return view('category', [
        'title' => $category->name,
        'posts' => $category->posts,
        'category' => $category->name,
    ]);
});

Route::get('/authors/{author:username}', function(User $author){
    return view('posts', [
        'title' => 'User Title',
        'posts' => $author->posts

    ]);
});