@extends('master') @section('body') @include('pages.section.slider')
@include('pages.section.services') @include('pages.section.recentPortfolio')
{{-- @include('pages.section.testiominal')
    @include('pages.section.blog')--}}
<x-client-component/>
@include('pages.section.google_map') @stop
