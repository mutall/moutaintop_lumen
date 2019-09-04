<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
 */

$router->get('/', 'HomeController@index');
// $router->get('/', "GalleryController@index");
$router->get('/gallery', 'GalleryController@index');

$router->get('/book', function () {
    return "book";
});

$router->get('/contact', function () {
    return view('contact');
});

$router->get('/tours', 'ToursController@index');

$router->get('/tours/single/{id}', 'ToursController@single');

$router->get('/auth', 'AuthController@page');

$router->post('auth', 'AuthController@authenticate');

$router->get('/insert/user', 'AuthController@user');

$router->post('/rename', 'ChangeController@rename');
$router->post('/delete', 'ChangeController@delete');
$router->post('/move_image', 'ChangeController@change_slider');