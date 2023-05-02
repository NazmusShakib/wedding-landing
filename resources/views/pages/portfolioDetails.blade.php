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
			<div id="gallery">
				@if($portfolio['videos'])
					@foreach ($portfolio['videos'] as $video)
						<div class="gallery-item animate-box" data-animate-effect="fadeInLeft">
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
						<div class="gallery-item animate-box" data-animate-effect="fadeInLeft">
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
</div>
<x-client-component/>
@stop

@push('custom-style')
<style>
    .gallery-item {
        position: relative;
        padding-top: 0px;
    }
    #gallery {
        line-height: 0;
        -webkit-column-count: 4; /* split it into 5 columns */
        -webkit-column-gap: 5px; /* give it a 5px gap between columns */
        -moz-column-count: 4;
        -moz-column-gap: 5px;
        column-count: 4;
        column-gap: 5px;
    }
    #gallery img {
        width: 100% !important;
        height: auto !important;
        margin-bottom: 5px; /* to match column gap */
    }
    @media (max-width: 1600px) {
        #gallery {
            -moz-column-count: 3;
            -webkit-column-count: 3;
            column-count: 3;
        }
    }
    @media (max-width: 1200px) {
        #gallery {
            -moz-column-count: 3;
            -webkit-column-count: 3;
            column-count: 3;
        }
    }
    @media (max-width: 1000px) {
        #gallery {
            -moz-column-count: 3;
            -webkit-column-count: 3;
            column-count: 3;
        }
    }
    @media (max-width: 800px) {
        #gallery {
            -moz-column-count: 2;
            -webkit-column-count: 2;
            column-count: 2;
        }
    }
    @media (max-width: 400px) {
        #gallery {
            -moz-column-count: 1;
            -webkit-column-count: 1;
            column-count: 1;
        }
    }
</style>
@endpush