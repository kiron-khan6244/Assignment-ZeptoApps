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
// ============= API Routes with Authentication ============================= //
Route::group(['middleware' => 'auth:api', 'namespace'=>'API'], function(){
    Route::get('/userDetails', 'UserController@userDetails');
    Route::group(['middleware' => 'user'], function(){
        // Route::get('/userDetails', 'UserController@userDetails');
    });
    Route::group(['middleware' => 'admin'], function(){
        Route::resource('/products', 'ProductController');
    });
});
