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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

//=============API Routes without Authentication=============================//
Route::post('register', 'API\UserController@register');
Route::post('login', 'API\UserController@login');
Route::post('logout', 'API\UserController@logout');
Route::get('productDetails/{id}', 'API\ProductController@productDetails');
Route::get('allProducts', 'API\ProductController@allProducts');
// ============= API Routes with Authentication ============================= //
Route::group(['middleware' => 'auth:api', 'namespace'=>'API'], function(){
    Route::get('/userDetails', 'UserController@userDetails');
    Route::group(['middleware' => 'admin'], function(){
        Route::resource('/products', 'ProductController');
        Route::post('updateProduct/{id}', 'ProductController@updateProduct');
    });
});
