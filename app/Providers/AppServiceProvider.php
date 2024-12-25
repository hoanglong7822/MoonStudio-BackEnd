<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Services\UserService;
use App\Services\ListService;
class AppServiceProvider extends ServiceProvider
{
    public function register(): void
    {
    //     $this->app->bind((ListService::class), function ($app) {
    //         return new ListService(($app->make(UserService::class)));
    // });
    }
    public function boot(): void{}
}
