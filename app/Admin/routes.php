<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {
    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('sliders', SliderController::class);
    $router->resource('services', ServiceController::class);
    $router->resource('clients', ClientController::class);
    $router->resource('service-categories', ServiceCategoryController::class);
    $router->resource('packages', PackageController::class);
    $router->resource('portfolios', PortfolioController::class);
    $router->resource('post-categories', PostCategoryController::class);
    $router->resource('tags', TagController::class);
    $router->resource('posts', PostController::class);
});
