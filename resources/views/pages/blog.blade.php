@extends('master')
@section('body')
<!-- Banner Title -->
<div class="banner-container">
    <div class="banner-img"> <img class="banner-img-width" src="images/topbanner.jpg" alt=""> </div>
    <div class="banner-head">
        <div class="banner-head-padding banner-head-margin">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12"> <span class="heading-meta">read</span>
                        <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">Blog</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Blog -->
<div class="blog-section pt-0 pb-60">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 col-sm-8">
                <div class="blog-entry animate-box" data-animate-effect="fadeInLeft">
                    <a href="post.html" class="blog-img"><img src="images/blog/2.jpg" class="img-fluid" alt=""></a>
                    <div class="desc"> <span><small>Apr 02, 2020 | Wedding</small></span>
                        <h3><a href="post.html">Crush Your Wedding Day Style!</a></h3>
                        <p>Quality fusce suscipit the conce viviense ante a hendrerit ullamcorper, risus nisl cursus purus, sit amet viverra ante nulla vel justo. Morbi justo erat, posuere vel libero non drana duru mb derya bibendum convallis enim. Aliquam pharetra neque purus, et molesti.</p>
                        <div class="btn-contact"><a href="post.html"><span>Read More</span></a></div>
                    </div>
                </div>
                <div class="blog-entry animate-box" data-animate-effect="fadeInLeft">
                    <a href="post.html" class="blog-img"><img src="images/blog/3.jpg" class="img-fluid" alt=""></a>
                    <div class="desc"> <span><small>Apr 04, 2020 | Wedding</small></span>
                        <h3><a href="post.html">How to be the best bridesmaid ever!</a></h3>
                        <p>Quality fusce suscipit the conce viviense ante a hendrerit ullamcorper, risus nisl cursus purus, sit amet viverra ante nulla vel justo. Morbi justo erat, posuere vel libero non drana duru mb derya bibendum convallis enim. Aliquam pharetra neque purus, et molesti.</p>
                        <div class="btn-contact"><a href="post.html"><span>Read More</span></a></div>
                    </div>
                </div>
                <div class="blog-entry animate-box" data-animate-effect="fadeInLeft">
                    <a href="post.html" class="blog-img"><img src="images/blog/1.jpg" class="img-fluid" alt=""></a>
                    <div class="desc"> <span><small>Apr 08, 2020 | Wedding</small></span>
                        <h3><a href="post.html">15 Best Bridal Hairstyles Ever</a></h3>
                        <p>Quality fusce suscipit the conce viviense ante a hendrerit ullamcorper, risus nisl cursus purus, sit amet viverra ante nulla vel justo. Morbi justo erat, posuere vel libero non drana duru mb derya bibendum convallis enim. Photo by Brittany Michelle Photography</p>
                        <div class="btn-contact"><a href="post.html"><span>Read More</span></a></div>
                    </div>
                </div>
                <!-- Pagination -->
                <ul class="pwe-pagination-wrap align-center">
                    <li><a href="blog.html#"><i class="ti-arrow-left"></i></a></li>
                    <li><a href="blog.html#">1</a></li>
                    <li><a href="blog.html#" class="active">2</a></li>
                    <li><a href="blog.html#">3</a></li>
                    <li><a href="blog.html#"><i class="ti-arrow-right"></i></a></li>
                </ul>
            </div>
            <div class="col-sm-4">
                <div class="pwe-sidebar-part animate-box" data-animate-effect="fadeInLeft">
                    <div class="pwe-sidebar-block pwe-sidebar-block-search">
                        <form class="pwe-sidebar-search-form" method="get">
                            <input type="text" name="name" class="form-control search-field" id="search" placeholder="Search...">
                            <button type="submit" class="ti-arrow-right pwe-sidebar-search-submit"></button>
                        </form>
                    </div>
                    <div class="pwe-sidebar-block pwe-sidebar-block-categories">
                        <div class="pwe-sidebar-block-title"> Categories </div>
                        <div class="pwe-sidebar-block-content">
                            <ul class="ul1">
                                <li> <a href="blog.html#">Wedding Dress</a> </li>
                                <li> <a href="blog.html#">Event Design</a> </li>
                                <li> <a href="blog.html#">Wedding Ring</a> </li>
                                <li> <a href="blog.html#">Marriage</a> </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pwe-sidebar-block pwe-sidebar-block-latest-posts">
                        <div class="pwe-sidebar-block-title"> Latest Posts </div>
                        <div class="pwe-sidebar-block-content">
                            <div class="latest">
                                <a href="post.html" class="clearfix">
                                    <div class="txt1">Crush Your Wedding Day Style!</div>
                                    <div class="txt2">Sep 27, 2020</div>
                                </a>
                            </div>
                            <div class="latest">
                                <a href="post.html" class="clearfix">
                                    <div class="txt1">How to be the best bridesmaid ever!</div>
                                    <div class="txt2">Sep 26, 2020</div>
                                </a>
                            </div>
                            <div class="latest">
                                <a href="post.html" class="clearfix">
                                    <div class="txt1">15 Best Bridal Hairstyles Ever</div>
                                    <div class="txt2">Sep 25, 2020</div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="pwe-sidebar-block pwe-sidebar-block-tags">
                        <div class="pwe-sidebar-block-title"> Tags </div>
                        <div class="pwe-sidebar-block-content">
                            <ul class="tags clearfix">
                                <li><a href="blog.html#">Event</a></li>
                                <li><a href="blog.html#">Wedding</a></li>
                                <li><a href="blog.html#">Marriage</a></li>
                                <li><a href="blog.html#">Bridesmaid</a></li>
                                <li><a href="blog.html#">Planner</a></li>
                                <li><a href="blog.html#">Design</a></li>
                                <li><a href="blog.html#">Elegant Affairs</a></li>
                                <li><a href="blog.html#">Love</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@include('pages.section.clients')
@stop