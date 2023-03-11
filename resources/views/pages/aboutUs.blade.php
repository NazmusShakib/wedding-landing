@extends('master') @section('body')
<!-- Banner Title -->
<div class="banner-container">
    <div class="banner-img">
        <img class="banner-img-width" src="images/topbanner.jpg" alt="" />
    </div>
    <div class="banner-head">
        <div class="banner-head-padding banner-head-margin">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <span class="heading-meta">.wedding</span>
                        <h2
                            class="pwe-heading animate-box"
                            data-animate-effect="fadeInLeft"
                        >
                            About Us
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
            <div class="col-md-6 text-center">
                <img
                    src="{{ url(config('about_us_thumb')) }}"
                    class="img-fluid mb-30 animate-box"
                    data-animate-effect="fadeInLeft"
                    alt="sketchimagination"
                />
                <h4
                    class="pwe-about-subheading animate-box"
                    data-animate-effect="fadeInUp"
                >
                    To Know Us is to Love Us!
                </h4>
            </div>
            <div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
                <!-- <h3 class="pwe-about-heading">Rachel Starletta</h3> -->

                {!! config('about_us') !!}

                <!-- <h4 class="pwe-about-subheading">
                    "Sketch Imagination" is a full-service event planning and
                    production company that specializes in creating memorable
                    experiences for corporate, non-profit and social clients. We
                    pride ourselves on our ability to execute flawless events
                    that exceed our client's expectations.
                </h4>
                <p>
                    Our team of experienced event planners and production
                    specialists have a passion for creating unique and
                    innovative events that are tailored to our client's specific
                    needs and goals. We are committed to delivering exceptional
                    service, attention to detail and creativity in every event
                    we produce.
                </p>
                <p>
                    Our services include event planning, production, design,
                    logistics, vendor management, and on-site event management.
                    We have extensive experience in planning and executing
                    events of all sizes, from intimate gatherings to large-scale
                    events with thousands of guests.
                </p>
                <p>
                    Our portfolio of events includes product launches,
                    conferences, gala dinners, award ceremonies, team-building
                    activities, and other corporate events. We also specialize
                    in creating memorable weddings, birthday parties, and other
                    social events.
                </p>
                <p>
                    At Sketch Imagination, we are dedicated to creating events
                    that leave a lasting impression. We look forward to working
                    with you to make your next event a success.
                </p> -->
            </div>
        </div>
    </div>
</div>
<!-- Team -->
<!-- <div class="team-section team pt-90 pb-90 bg-pink">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 mb-30">
                <span class="heading-meta">associate</span>
                <h2
                    class="pwe-heading mb-30 animate-box"
                    data-animate-effect="fadeInLeft"
                >
                    Creative Team
                </h2>
            </div>
        </div>
        <div class="row">
            <div
                class="col-md-12 owl-carousel owl-theme animate-box"
                data-animate-effect="fadeInLeft"
            >
                <div class="item">
                    <div class="img">
                        <img src="images/team/01.jpg" alt="" />
                    </div>
                    <div class="info">
                        <h6>Jennifer Anna</h6>
                        <p>Professional Wedding Planner</p>
                        <div class="social valign">
                            <div class="full-width">
                                <p><i>Follow Me!</i></p>
                                <a href="#"><i class="ti-facebook"></i></a>
                                <a href="#"><i class="ti-twitter-alt"></i></a>
                                <a href="#"><i class="ti-instagram"></i></a>
                                <a href="#"><i class="ti-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="images/team/02.jpg" alt="" />
                    </div>
                    <div class="info">
                        <h6>Vanessa Clarke</h6>
                        <p>Planner/Onsite Coordinator</p>
                        <div class="social valign">
                            <div class="full-width">
                                <p><i>Follow Me!</i></p>
                                <a href="#"><i class="ti-facebook"></i></a>
                                <a href="#"><i class="ti-twitter-alt"></i></a>
                                <a href="#"><i class="ti-instagram"></i></a>
                                <a href="#"><i class="ti-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="images/team/03.jpg" alt="" />
                    </div>
                    <div class="info">
                        <h6>Samantha Coyle</h6>
                        <p>Associate Wedding Planner</p>
                        <div class="social valign">
                            <div class="full-width">
                                <p><i>Follow Me!</i></p>
                                <a href="#"><i class="ti-facebook"></i></a>
                                <a href="#"><i class="ti-twitter-alt"></i></a>
                                <a href="#"><i class="ti-instagram"></i></a>
                                <a href="#"><i class="ti-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="images/team/04.jpg" alt="" />
                    </div>
                    <div class="info">
                        <h6>Janet Lewis</h6>
                        <p>Wedding & Event Photographer</p>
                        <div class="social valign">
                            <div class="full-width">
                                <p><i>Follow Me!</i></p>
                                <a href="#"><i class="ti-facebook"></i></a>
                                <a href="#"><i class="ti-twitter-alt"></i></a>
                                <a href="#"><i class="ti-instagram"></i></a>
                                <a href="#"><i class="ti-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> -->
<!-- Pricing -->

{{-- @include('pages.section.packages') --}}
<x-client-component/>
@stop
