<?php

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('event', 'EventController@show');

Route::get('registration', 'PesertaTemaController@show');
Route::get('registration/ajax/{tema}',array('as'=>'registration.ajax','uses'=>'PesertaTemaController@getHarga'));
Route::post('registration/send',array('uses'=>'PesertaTemaController@insert'));

Route::get('contactus', function () {
    return view('contactus');
});
