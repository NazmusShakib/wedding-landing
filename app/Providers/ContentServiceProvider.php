<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Slider;
use App\Models\Service;
use App\Models\Package;
use App\Models\Portfolio;
use App\Models\PostCategory;
use App\Models\Tag;
use App\Models\Post;

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
        $this->services = Service::with('category:id,name')
            ->select('id', 'service_category_id', 'title', 'thumbnail')->get()->toArray();

        $this->packages = Package::select('id', 'name', 'price', 'includes')->get()->toArray();

        $this->portfolios = Portfolio::with('package:id,name,price')
            ->select('id', 'name', 'thumbnail', 'package_id')
            ->published()->descOrdered()->get()->toArray();

        $this->posts = Post::with('category:id,name')
            ->select('id', 'post_category_id', 'title', 'thumbnail', 'body', 'created_at')
            ->published()->descOrdered()->get()->toArray();

        $search = request('title');
        $category = request('category');
        $tag = request('tag');

        $this->postsPaginate = Post::with('category:id,name')
            ->select('id', 'post_category_id', 'title', 'thumbnail', 'body', 'created_at')
            ->where(function ($query) use ($search, $category, $tag) {
                if (!empty($search)) {
                    $query->where('title', 'LIKE', '%' . $search . '%');
                }

                if (!empty($category)) {
                    $query->whereRelation('category', 'name', '=', $category);
                }

                if (!empty($tag)) {
                    $query->whereRelation('tags', 'name', '=', $tag);
                }
            })->published()->descOrdered()->paginate(10);

        $this->latestPosts = Post::with('category:id,name')
            ->select('id', 'title', 'body', 'thumbnail', 'post_category_id', 'created_at')
            ->published()->limit(6)->descOrdered()->get()->toArray();

        $this->featuredPosts = Post::with('category:id,name')
            ->select('id', 'title', 'body', 'thumbnail', 'post_category_id', 'created_at')
            ->featured()->published()->limit(6)->orderBy('display_order', 'ASC')->get()->toArray();

        $this->postCategories = PostCategory::select('id', 'name')->get()->toArray();
        $this->postTags = Tag::select('id', 'name')->get()->toArray();

        view()->composer('pages.section.slider', function ($view) {
            $view->with(['sliders' => $this->sliders]);
        });

        view()->composer('pages.section.blog', function ($view) {
            $view->with(['featuredPosts' => $this->featuredPosts]);
        });

        view()->composer('pages.blog', function ($view) {
            $view->with([
                'posts' => $this->postsPaginate,
                'latestPosts' => $this->latestPosts,
                'postCategories' => $this->postCategories,
                'postTags' => $this->postTags
            ]);
        });

        view()->composer('pages.section.packages', function ($view) {
            $view->with(['packages' => $this->packages]);
        });

        view()->composer(['pages.portfolio', 'pages.section.recentPortfolio'], function ($view) {
            $view->with(['portfolios' => $this->portfolios]);
        });

        view()->composer(['pages.services', 'pages.section.services'], function ($view) {
            $view->with(['services' => $this->services]);
        });
    }
}