@extends('master')
@section('body')
    <!-- Banner Title -->
    <div class="banner-container">
        <div class="banner-img"> <img class="banner-img-width" src="images/topbanner-1.jpg" alt=""> </div>
        <div class="banner-head">
            <div class="banner-head-padding banner-head-margin">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12"> <span class="heading-meta">location</span>
                            <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">Contact Us</h2> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact -->
    <div class="contact-section pt-0 pb-60">
        <div class="container-fluid">
            <div class="row pb-60">
                <div class="col-lg-7 col-md-12 mb-30">
                    <div style="height: 400px;" id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleControls" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleControls" data-slide-to="1"></li>
                            <li data-target="#carouselExampleControls" data-slide-to="2"></li>
                          </ol>
                        <div class="carousel-inner" style="height: 100%;">
                          <div class="carousel-item active" style="height: 100%;">
                            <img style="min-height: 400px;" class="d-block w-100" src="images/topbanner-1.jpg" alt="First slide">
                            <div class="carousel-caption d-none d-md-block">
                                <div style="display: inline-block;padding: 20px;padding-bottom: 0;border-radius: 5px;background-color: rgba(0,0,0,0.5); margin-bottom:20px;">
                                    <h5 class="text-white"><i class="ti-location-pin"></i> <b class="text-white">Bangladesh</b></h5>
                                    <p class="text-white">{!! config('office_address') !!}</p>
                                </div>
                            </div>
                          </div>
                          <div class="carousel-item">
                            <img style="min-height: 400px;" class="d-block w-100" src="images/topbanner-1.jpg" alt="Second slide">
                            <div class="carousel-caption d-none d-md-block" >
                                <div style="display: inline-block;padding: 20px;padding-bottom: 0;border-radius: 5px;background-color: rgba(0,0,0,0.5);margin-bottom:20px;">
                                    <h5 class="text-white"><i class="ti-location-pin"></i> <b class="text-white">Bangladesh</b></h5>
                                    <p class="text-white">{!! config('office_address') !!}</p>
                                </div>
                            </div>
                          </div>
                          <div class="carousel-item">
                            <img style="min-height: 400px;" class="d-block w-100" src="images/topbanner-1.jpg" alt="Third slide">
                            <div class="carousel-caption d-none d-md-block">
                                <div style="display: inline-block;padding: 20px;padding-bottom: 0;border-radius: 5px;background-color: rgba(0,0,0,0.5);margin-bottom:20px;">
                                    <h5 class="text-white"><i class="ti-location-pin"></i> <b class="text-white">Bangladesh</b></h5>
                                    <p class="text-white">{!! config('office_address') !!}</p>
                                </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    {{-- <div class="line p-30">
                        <p><i class="ti-location-pin"></i> <b>Bangladesh</b></p>
                        <p class="mb-0">{!! config('office_address') !!}</p>
                        <br>
                        <br>
                        <div class="separator"></div>
                        <p>{{ config('contact_number') }}
                        <br>{{ config('contact_email') }}</p>
                    </div> --}}
                </div>
                <div class="col-lg-5 col-md-12 mb-30">
                    {{-- <h3 class="pwe-about-heading">Contact Form</h3> --}}
                    <p>We would like to hear from you</p>
                    <form method="GET" action="#" class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input name="name" type="text" class="form-control" placeholder="Name" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input name="email" type="text" class="form-control" placeholder="Email">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <input name="subject" type="text" class="form-control" placeholder="Subject">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <textarea name="message" id="message" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <input type="submit" class="btn btn-contact" value="Say Hello!">
                            </div>
                        </div>
                    </form>
                </div>
                
            </div>
            @include('pages.section.google_map')
        </div>
    </div>
    @include('pages.section.clients')
@stop