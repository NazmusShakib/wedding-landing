@extends('master')
@section('body')
 <!-- Banner Title -->
 <div class="banner-container">
    <div class="banner-img"> <img class="banner-img-width" src="{{ asset('images/topbanner-1.jpg') }}" alt=""> </div>
    <div class="banner-head">
        <div class="banner-head-padding banner-head-margin">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12"> <span class="heading-meta">.portfolio</span>
                        <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">{{ $portfolio['name'] }}</h2> </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Portfolio -->
<div class="pwe-section pt-0 pb-60">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
                <p>{{ $portfolio['description'] }}</p>
                {!! $shareButtons !!}
            </div>
            <div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
                <p>
                    <b>Package :</b> {{ $portfolio['package']['name'] }}
                    @if($portfolio['event_planner'])
                    <br><b>Event Planner :</b> {{ $portfolio['event_planner'] }}
                    @endif
                    @if($portfolio['photographer_name'])
                    <br><b>Photographer :</b> {{ $portfolio['photographer_name'] }}
                    @endif
                    <br><b>Location :</b> {{ $portfolio['location'] }}
                </p>
            </div>
        </div>
        <!-- Gallery -->
        <div class="row mb-60">

            @if($portfolio['videos'])
            @foreach ($portfolio['videos'] as $video)
                <div class="col-md-4 gallery-item animate-box" data-animate-effect="fadeInLeft">
                    <a href="{{ $video }}" title="{{ $portfolio['name'] }}" class="magnific-youtube">
                        <div class="gallery-box">
                            <div class="gallery-img"> <img src="{{ asset('images/video_thumbnail.jpg') }}" class="img-fluid mx-auto d-block" alt="work-img"> </div>
                            <div class="gallery-detail text-center"> <i class="ti-plus"></i> </div>
                        </div>
                    </a>
                </div>
            @endforeach
            @endif

            @if($portfolio['pictures'])
            @foreach ($portfolio['pictures'] as $picture)
                <div class="col-md-4 gallery-item animate-box" data-animate-effect="fadeInLeft">
                    <a href="{{ Storage::url($picture) }}" title="{{ $portfolio['name'] }}" class="img-zoom">
                        <div class="gallery-box">
                            <div class="gallery-img"> <img src="{{ Storage::url($picture) }}" class="img-fluid mx-auto d-block" alt="work-img"> </div>
                            <div class="gallery-detail text-center"> <i class="ti-plus"></i> </div>
                        </div>
                    </a>
                </div>
            @endforeach
            @endif
        </div>
    </div>
</div>
<x-client-component/>
@stop
