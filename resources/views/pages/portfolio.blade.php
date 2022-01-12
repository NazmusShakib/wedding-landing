@extends('master')
@section('body')
<!-- Banner Title -->
<div class="banner-container">
    <div class="banner-img"> <img class="banner-img-width" src="images/topbanner-2.jpg" alt=""> </div>
    <div class="banner-head">
        <div class="banner-head-padding banner-head-margin">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12"> <span class="heading-meta">.works</span>
                        <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">Our Portfolio</h2> </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Portfolio -->
<div class="portfolio-section portfolio pt-0 pb-60">
    <div class="container-fluid">
        <div class="row">
            @foreach($portfolios as $portfolio)
                <div class="col-md-4">
                    <div class="item animate-box" data-animate-effect="fadeInLeft">
                        <div class="portfolio-img">
                            <a href="{{ route('portfolio.details', [$portfolio['id'], str_slug($portfolio['name'])]) }}"><img src="{{ Storage::url($portfolio['thumbnail']) }}" alt=""></a>
                        </div>
                        <div class="content">
                            <h5><a href="{{ route('portfolio.details', [$portfolio['id'], str_slug($portfolio['name'])]) }}">{{ $portfolio['name'] }}</a></h5> </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>
@include('pages.section.clients')
@stop