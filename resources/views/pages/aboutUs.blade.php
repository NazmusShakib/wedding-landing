@extends('master')
@section('body')
    <!-- Banner Title -->
    <div class="banner-container">
        <div class="banner-img"> <img class="banner-img-width" src="images/topbanner.jpg" alt=""> </div>
        <div class="banner-head">
            <div class="banner-head-padding banner-head-margin">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12"> <span class="heading-meta">.wedding</span>
                            <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">About Us</h2>
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
                <div class="col-md-6 text-center"> <img src="images/wedding-planner.jpg" class="img-fluid mb-30 animate-box" data-animate-effect="fadeInLeft" alt="">
                    <h4 class="pwe-about-subheading animate-box" data-animate-effect="fadeInUp">To Know Us is to Love Us!</h4>
                </div>
                <div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
                    <h3 class="pwe-about-heading">Rachel Starletta</h3>
                    <h4 class="pwe-about-subheading">We would love to meet up and chat about how we can make your dream wedding happen!</h4>
                    <p>Professional Wedding & Event Planner. Curabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tincidunt, felis sed gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat volutpat.</p>
                    <p>Phasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibulum fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quam, sit amet cursus sapien vulputate vitae.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Team -->
    <div class="team-section team pt-90 pb-90 bg-pink">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 mb-30"> <span class="heading-meta">associate</span>
                    <h2 class="pwe-heading mb-30 animate-box" data-animate-effect="fadeInLeft">Creative Team</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 owl-carousel owl-theme animate-box" data-animate-effect="fadeInLeft">
                    <div class="item">
                        <div class="img"> <img src="images/team/01.jpg" alt=""> </div>
                        <div class="info">
                            <h6>Jennifer Anna</h6>
                            <p>Professional Wedding Planner</p>
                            <div class="social valign">
                                <div class="full-width">
                                    <p><i>Follow Me!</i></p> <a href="#"><i class="ti-facebook"></i></a> <a href="#"><i class="ti-twitter-alt"></i></a> <a href="#"><i class="ti-instagram"></i></a> <a href="#"><i class="ti-pinterest"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img"> <img src="images/team/02.jpg" alt=""> </div>
                        <div class="info">
                            <h6>Vanessa Clarke</h6>
                            <p>Planner/Onsite Coordinator</p>
                            <div class="social valign">
                                <div class="full-width">
                                    <p><i>Follow Me!</i></p> <a href="#"><i class="ti-facebook"></i></a> <a href="#"><i class="ti-twitter-alt"></i></a> <a href="#"><i class="ti-instagram"></i></a> <a href="#"><i class="ti-pinterest"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img"> <img src="images/team/03.jpg" alt=""> </div>
                        <div class="info">
                            <h6>Samantha Coyle</h6>
                            <p>Associate Wedding Planner</p>
                            <div class="social valign">
                                <div class="full-width">
                                    <p><i>Follow Me!</i></p> <a href="#"><i class="ti-facebook"></i></a> <a href="#"><i class="ti-twitter-alt"></i></a> <a href="#"><i class="ti-instagram"></i></a> <a href="#"><i class="ti-pinterest"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img"> <img src="images/team/04.jpg" alt=""> </div>
                        <div class="info">
                            <h6>Janet Lewis</h6>
                            <p>Wedding & Event Photographer</p>
                            <div class="social valign">
                                <div class="full-width">
                                    <p><i>Follow Me!</i></p> <a href="#"><i class="ti-facebook"></i></a> <a href="#"><i class="ti-twitter-alt"></i></a> <a href="#"><i class="ti-instagram"></i></a> <a href="#"><i class="ti-pinterest"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Pricing -->

    @include('pages.section.packages')

    @include('pages.section.clients')
@stop