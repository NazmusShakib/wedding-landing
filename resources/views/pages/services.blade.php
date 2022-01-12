@extends('master')
@section('body')
    <!-- Banner Title -->
    <div class="banner-container">
        <div class="banner-img"> <img class="banner-img-width" src="images/topbanner-1.jpg" alt=""> </div>
        <div class="banner-head">
            <div class="banner-head-padding banner-head-margin">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12"> <span class="heading-meta">weddings . events</span>
                            <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">Our Services</h2> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Services -->
    <div class="services-section services pt-0 pb-90">
        <div class="container-fluid">
            <div class="row">
                @foreach ($services as $service)
                    <div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
                        <div class="item mb-30">
                            <div class="position-re o-hidden"> <img src="{{ Storage::url($service['thumbnail']) }}" alt="{{ $service['title'] }}"> </div>
                            <div class="con"> <span class="category">
                                        <a href="{{ route('service.details', [$service['id'], str_slug($service['title'])]) }}">. {{ $service['category']['name'] }}</a>
                                    </span>
                                <h5><a href="{{ route('service.details', [$service['id'], str_slug($service['title'])]) }}">{{ $service['title'] }}</a></h5> <a href="{{ route('service.details', [$service['id'], str_slug($service['title'])]) }}"><i class="ti-arrow-right"></i></a> </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
    <!-- Pricing -->
    <div class="price-section pt-60 pb-60 price bg-pink">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12"> <span class="heading-meta">wedding</span>
                    <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">Planning Packages</h2> </div>
            </div>
            <div class="row">
                <div class="col-md-12 owl-carousel owl-theme">
                    <div class="item">
                        <div class="cont">
                            <div class="type">
                                <h6>Ceremony</h6> </div>
                            <div class="value">
                                <h4>2500<span>$</span></h4>
                                <p>Starting From</p>
                            </div>
                            <div class="feat">
                                <ul>
                                    <li>Decoration</li>
                                    <li>DJ & Sound</li>
                                    <li><del>Photographer</del></li>
                                    <li>Celebrant</li>
                                </ul>
                            </div>
                        </div>
                        <div class="btn-contact"> <a href="#"><span>See more</span></a> </div>
                    </div>
                    <div class="item">
                        <div class="cont">
                            <div class="type">
                                <h6>Party</h6> </div>
                            <div class="value">
                                <h4>3500<span>$</span></h4>
                                <p>Starting From</p>
                            </div>
                            <div class="feat">
                                <ul>
                                    <li>Decoration</li>
                                    <li>DJ & Sound</li>
                                    <li>Photographer</li>
                                    <li>Party Planner</li>
                                </ul>
                            </div>
                        </div>
                        <div class="btn-contact"> <a href="#"><span>See more</span></a> </div>
                    </div>
                    <div class="item">
                        <div class="cont">
                            <div class="type">
                                <h6>Full Wedding</h6> </div>
                            <div class="value">
                                <h4>6500<span>$</span></h4>
                                <p>Starting From</p>
                            </div>
                            <div class="feat">
                                <ul>
                                    <li>Decoration</li>
                                    <li>DJ & Sound</li>
                                    <li>Photographer</li>
                                    <li>Make-Up & Hair Dresser</li>
                                </ul>
                            </div>
                        </div>
                        <div class="btn-contact"><a href="#"><span>See More</span></a></div>
                    </div>
                    <div class="item">
                        <div class="cont">
                            <div class="type">
                                <h6>Pre - Wedding</h6> </div>
                            <div class="value">
                                <h4>5500<span>$</span></h4>
                                <p>Starting From</p>
                            </div>
                            <div class="feat">
                                <ul>
                                    <li>Decoration</li>
                                    <li>DJ & Sound</li>
                                    <li>Photographer</li>
                                    <li>Venue Booking</li>
                                </ul>
                            </div>
                        </div>
                        <div class="btn-contact"><a href="#"><span>See More</span></a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop