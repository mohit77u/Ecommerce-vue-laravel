<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('/user', 'AuthenticationController@user')->middleware('auth:api');
Route::get('/users', 'AuthenticationController@allusers');
Route::post('/signup', 'AuthenticationController@register');
Route::post('/signin', 'AuthenticationController@login');
Route::post('/forgot', 'AuthenticationController@forgot');
Route::post('/reset', 'AuthenticationController@reset');

Route::post('/addadmin', 'AuthenticationController@newadmin');
Route::get('/user/{user}', 'AuthenticationController@usershow');
Route::post('/delete/{user}', 'AuthenticationController@deleteuser');
Route::post('/update/{user}', 'AuthenticationController@updateuser');
Route::post('/forgot', 'AuthenticationController@forgot');
Route::post('/reset', 'AuthenticationController@reset');

Route::apiResource('blogs', 'BlogController');
Route::get('/blog/search', 'BlogController@search');
Route::get('/category/{id}', 'BlogController@categoryblog');
Route::apiResource('blog_categories', 'BlogCategoryController');

Route::apiResource('contacts', 'ContactController');

Route::apiResource('product_categories', 'ProductCategoryController');

Route::apiResource('products', 'ProductController');
Route::get('/mobiles', 'ProductController@mobile');
Route::get('/shoes', 'ProductController@shoes');
Route::get('/shirts', 'ProductController@shirts');
Route::get('/product/category/{id}', 'ProductController@categoryproduct');
Route::get('/product/search', 'ProductController@search');

Route::post('/addtocart', 'ProductController@addtocart');
Route::get('/cart', 'ProductController@viewcart')->middleware('auth:api');
Route::post('/cart/{cart}', 'ProductController@deleteCart');
Route::post('/orders', 'ProductController@orders')->middleware('auth:api');
Route::get('/placeorder', 'ProductController@cartproduct')->middleware('auth:api');