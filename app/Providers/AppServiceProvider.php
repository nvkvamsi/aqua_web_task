<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Gig;
use App\Observers\GigObserver;
use App\Models\Career;
use App\Observers\CareerObserver;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Gig::observe(GigObserver::class);
        Career::observe(CareerObserver::class);
    }
}
