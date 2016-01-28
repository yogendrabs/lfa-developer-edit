<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/','DevelopersController@welcome');

Route::get('register',['uses'=>'RegistrationController@register','as'=>'register']);

Route::post('register',['uses'=>'RegistrationController@postRegister','as'=>'postRegister']);

Route::get('developer/list', ['uses'=>'DevelopersController@lists','as'=>'listDeveloper']);

//Route::get('developer/create/{id}', ['uses'=>'DevelopersController@index','as'=>'createDeveloper']);
//
//Route::post('developer/create', ['uses'=>'DevelopersController@store','as'=>'developerCreate'] );

Route::get('developer/edit/{id}', ['uses'=>'DevelopersController@edit','as'=>'editDeveloper']);

Route::post('developer/edit/{id}',['uses'=>'DevelopersController@update','as'=>'postEditDeveloper']);

Route::get('developer/detail/{id}', ['uses'=>'DevelopersController@detail','as'=>'detailDeveloper']);