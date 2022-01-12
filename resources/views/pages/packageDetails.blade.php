@extends('master')
@section('body')
    <!-- Banner Title -->
    <div class="banner-container">
        <div class="banner-img"> <img class="banner-img-width" src="{{ asset('images/topbanner.jpg') }}" alt=""> </div>
        <div class="banner-head">
            <div class="banner-head-padding banner-head-margin">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12"> <span class="heading-meta">our packages</span>
                            <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">{{ $package['name'] }}</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About Us -->
    <div class="about-section pt-0 pb-60">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5 animate-box" style="margin-bottom: 30px" data-animate-effect="fadeInLeft"> 
                    <div class="card text-center">
                        <div class="card-body">
                            <h1 class="card-title text-success">{{ $package['name'] }}</h1>
                            <h4 class="text-primary mb-0">{{ number_format($package['price'], 0) }}<span>৳</span></h4>
                            <p class="text-info">Starting From</p>
                        </div>
                        <ul class="list-group list-group-flush">
                            @foreach($package['includes'] as $value)
                                <li class="list-group-item">{{ $value }}</li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="bodyDetails col-md-7 animate-box" data-animate-effect="fadeInLeft">
                    {!! $package['body'] !!}
                </div>
            </div>
        </div>
    </div>
    @include('pages.section.packages')
@stop