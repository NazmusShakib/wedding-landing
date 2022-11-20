@extends('master') @section('body')
<!-- Banner Title -->
<div class="banner-container">
    <div class="banner-img">
        <img
            class="banner-img-width"
            src="{{ asset('images/topbanner.jpg') }}"
            alt=""
        />
    </div>
    <div class="banner-head">
        <div class="banner-head-padding banner-head-margin">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <span class="heading-meta">our services</span>
                        <h2
                            class="pwe-heading animate-box"
                            data-animate-effect="fadeInLeft"
                        >
                            {{ $service["title"] }}
                        </h2>
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
            <div
                class="col-md-5 animate-box"
                style="margin-bottom: 30px"
                data-animate-effect="fadeInLeft"
            >
                <img
                    src="{{ Storage::url($service['thumbnail']) }}"
                    class="img-fluid mb-30"
                    alt=""
                />
            </div>
            <div
                class="bodyDetails col-md-7 animate-box"
                data-animate-effect="fadeInLeft"
            >
                {!! $service['body'] !!}
            </div>
        </div>
    </div>
</div>
<!-- @include('pages.section.packages') -->
@stop
