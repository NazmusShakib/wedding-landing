<?php

namespace App\Providers;
use Illuminate\Support\ServiceProvider;
use App\Models\Slider;
use App\Models\Service;
use App\Models\Package;
use App\Models\Portfolio;

class ContentServiceProvider extends ServiceProvider
{
    public $sliders, $services;

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        $this->sliders = Slider::select('id', 'thumbnail_type', 'short_title', 'title', 'description', 'thumbnail', 'btn_title', 'btn_url')->get()->toArray();
        $this->services = Service::with('category:id,name')->select('id', 'service_category_id', 'title', 'thumbnail')->get()->toArray();
        $this->packages = Package::select('id', 'name', 'price', 'includes')->get()->toArray();
        $this->portfolios = Portfolio::select('id', 'name', 'thumbnail')->get()->toArray();

        view()->composer('pages.section.slider', function($view) {
            $view->with(['sliders' => $this->sliders]);
        });

        view()->composer('pages.section.packages', function($view) {
            $view->with(['packages' => $this->packages]);
        });

        view()->composer('pages.portfolio', function($view) {
            $view->with(['portfolios' => $this->portfolios]);
        });

        view()->composer(['pages.services', 'pages.section.services'], function($view) {
            $view->with(['services' => $this->services]);
        });
    }
}
