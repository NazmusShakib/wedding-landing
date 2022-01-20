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
            {{-- <div class="row pb-60">
                <div class="col-md-4 mb-30 animate-box" data-animate-effect="fadeInLeft">
                    <div class="line p-30">
                        <p><i class="ti-location-pin"></i> <b>Bangladesh</b></p>
                        <p class="mb-0">{!! config('office_address') !!}</p>
                        <div class="separator"></div>
                        <p>{{ config('contact_number') }}
                        <br>{{ config('contact_email') }}</p>
                    </div>
                </div>
                <div class="col-md-4 mb-30 animate-box" data-animate-effect="fadeInLeft">
                    <div class="line p-30">
                        <p><i class="ti-location-pin"></i> <b>PARIS</b></p>
                        <p class="mb-0">39 Rue Jean-Pierre Canne
                            <br>Timbaud Paris, France</p>
                        <div class="separator"></div>
                        <p>+33 13 4050 9077
                            <br>paris@pweddings.com</p>
                    </div>
                </div>
                <div class="col-md-4 mb-30 animate-box" data-animate-effect="fadeInLeft">
                    <div class="line p-30">
                        <p><i class="ti-location-pin"></i> <b>NEW YORK</b></p>
                        <p class="mb-0">Wallaway 5st St Normain
                            <br>New York, USA</p>
                        <div class="separator"></div>
                        <p>+1 98 7276 0079
                            <br>newyork@pweeddings.com</p>
                    </div>
                </div>
            </div> --}}
            <!-- Map Section-->
            <div class="map-section">
                <div class="row">
                    <div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
                        {{-- <h3 class="pwe-about-heading">Contact Form</h3> --}}
                        <p>We would like to hear from you</p>
                        <form method="post" class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Name" required> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Email"> </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Subject"> </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <textarea name="message" id="message" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="submit" class="btn btn-contact" value="Say Hello!"> </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-6 mb-30 animate-box" data-animate-effect="fadeInLeft">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1818.9123250374973!2d89.03483124313816!3d24.24791097955714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc19480ab9e8f1%3A0xb81c6954c89f1ccb!2sWalia%20Bazar!5e0!3m2!1sen!2sbd!4v1641884470509!5m2!1sen!2sbd" style="border:0;height: 100% !important;width: 100% !important;" allowfullscreen="" loading="lazy"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('pages.section.clients')
@stop