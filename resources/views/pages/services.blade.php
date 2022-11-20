@extends('master') @section('body')
<!-- Banner Title -->
<div class="banner-container">
    <div class="banner-img">
        <img class="banner-img-width" src="images/topbanner-1.jpg" alt="" />
    </div>
    <div class="banner-head">
        <div class="banner-head-padding banner-head-margin">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <span class="heading-meta">weddings . events</span>
                        <h2
                            class="pwe-heading animate-box"
                            data-animate-effect="fadeInLeft"
                        >
                            Our Services
                        </h2>
                    </div>
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
                    <div class="position-re o-hidden">
                        <img
                            src="{{ Storage::url($service['thumbnail']) }}"
                            alt="{{ $service['title'] }}"
                        />
                    </div>
                    <div class="con">
                        <span class="category">
                            <a
                                href="{{
                                    route('service.details', [
                                        $service['id'],
                                        str_slug($service['title'])
                                    ])
                                }}"
                                >. {{ $service["category"]["name"] }}</a
                            >
                        </span>
                        <h5>
                            <a
                                href="{{
                                    route('service.details', [
                                        $service['id'],
                                        str_slug($service['title'])
                                    ])
                                }}"
                                >{{ $service["title"] }}</a
                            >
                        </h5>
                        <a
                            href="{{
                                route('service.details', [
                                    $service['id'],
                                    str_slug($service['title'])
                                ])
                            }}"
                            ><i class="ti-arrow-right"></i
                        ></a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
<!-- Pricing -->

<!-- @include('pages.section.packages') -->
@include('pages.section.testiominal') @stop
