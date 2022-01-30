<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/{page_url?}', 'PublicController@page')->name('page');
Route::get('service/{id}/details/{slug}', 'PublicController@serviceDetails')->name('service.details');
Route::get('package/{id}/details/{slug}', 'PublicController@packageDetails')->name('package.details');
Route::get('portfolio/{id}/details/{slug}', 'PublicController@portfolioDetails')->name('portfolio.details');
Route::get('post/{id}/details/{slug}', 'PublicController@postDetails')->name('post.details');
Route::get('get/facebook/login/url', 'FacebookAccessManageController@getFacebookLoginUrl')->name('getFacebookLoginUrl');
Route::get('get/facebook/callback/url', 'FacebookAccessManageController@getFacebookCallbackUrl')->name('getFacebookCallbackUrl');
