@extends('master')
@section('body')
<!-- Banner Title -->
<div class="banner-container">
    <div class="banner-img"> <img class="banner-img-width" src="{{ asset('images/topbanner.jpg') }}" alt=""> </div>
    <div class="banner-head">
        <div class="banner-head-padding banner-head-margin">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12"> <span class="heading-meta">read</span>
                        <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">News</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Blog -->
<div class="blog-section pt-0 pb-60">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 col-sm-8">
                @foreach($posts as $post)
                    <div class="blog-entry animate-box" data-animate-effect="fadeInLeft">
                        <a href="{{ route('post.details', [$post['id'], str_slug($post['title'])]) }}" class="blog-img"><img src="{{ Storage::url($post['thumbnail']) }}" class="img-fluid" alt="{{ $post['title'] }}"></a>
                        <div class="desc"> <span><small>{{ date('M d, Y', strtotime($post['created_at'])) }} | {{ $post['category']['name'] }}</small></span>
                            <h3><a href="{{ route('post.details', [$post['id'], str_slug($post['title'])]) }}">{{ $post['title'] }}</a></h3>
                            <p>{{ substr(strip_tags($post['body']),0,265) . "..."; }}</p>
                            <div class="btn-contact"><a href="{{ route('post.details', [$post['id'], str_slug($post['title'])]) }}"><span>Read More</span></a></div>
                        </div>
                    </div>
                @endforeach

                {!! $posts->links('vendor.pagination.blogPaginate') !!}
            </div>
            <div class="col-sm-4">
                <div class="pwe-sidebar-part animate-box" data-animate-effect="fadeInLeft">
                    <div class="pwe-sidebar-block pwe-sidebar-block-search">
                        <form action="{{ route('page', 'blog') }}" class="pwe-sidebar-search-form" method="get">
                            <input type="text" name="title" class="form-control search-field" id="search" placeholder="Search...">
                            <button type="submit" class="ti-arrow-right pwe-sidebar-search-submit"></button>
                        </form>
                    </div>
                    <div class="pwe-sidebar-block pwe-sidebar-block-categories">
                        <div class="pwe-sidebar-block-title"> Categories </div>
                        <div class="pwe-sidebar-block-content">
                            <ul class="ul1">
                                @foreach($postCategories as $cat)
                                    <li><a href="{{ route('page', 'blog') }}?category={{ $cat['name'] }}">{{ $cat['name'] }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <div class="pwe-sidebar-block pwe-sidebar-block-latest-posts">
                        <div class="pwe-sidebar-block-title"> Latest Posts </div>
                        <div class="pwe-sidebar-block-content">
                            @foreach($latestPosts as $post)
                                <div class="latest">
                                    <a href="{{ route('post.details', [$post['id'], str_slug($post['title'])]) }}" class="clearfix">
                                        <div class="txt1">{{ $post['title'] }}</div>
                                        <div class="txt2">{{ date('M d, Y', strtotime($post['created_at'])) }}</div>
                                    </a>
                                </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="pwe-sidebar-block pwe-sidebar-block-tags">
                        <div class="pwe-sidebar-block-title"> Tags </div>
                        <div class="pwe-sidebar-block-content">
                            <ul class="tags clearfix">
                                @foreach($postTags as $tag)
                                    <li><a href="{{ route('page', 'blog') }}?tag={{ $tag['name'] }}">{{ $tag['name'] }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@include('pages.section.clients')
@stop