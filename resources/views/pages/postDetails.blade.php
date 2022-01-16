@extends('master')
@section('body')
<!-- Banner Title -->
<div class="banner-container">
    <div class="banner-img"> <img class="banner-img-width" src="{{ asset('images/topbanner-2.jpg') }}" alt=""> </div>
    <div class="banner-head">
        <div class="banner-head-padding banner-head-margin">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12"> <span class="heading-meta">{{ $post->category->name }}</span>
                        <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">{{ $post->title }}</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Post -->
<div class="post-section pt-0 pb-60">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 image-content animate-box" data-animate-effect="fadeInLeft"> <img src="{{ Storage::url($post->thumbnail) }}" class="img-fluid mb-30" alt="{{ $post->title }}"> </div>
        </div>
        <div class="row">
            <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
                {!! $post->body !!}
            </div>
        </div>
    </div>
</div>
@include('pages.section.clients')
@stop