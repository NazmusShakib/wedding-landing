<div class="services-section services clear pt-90 pb-90">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 mb-30"> <span class="heading-meta">our . events</span> 
                <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">Recent Projects</h2>
            </div>
        </div>
        <div class="row">
            {{-- <div class="col-md-12">
                <div class="owl-carousel owl-theme">
                    @foreach ($portfolios as $portfolio)
                        <div class="item">
                            <div class="position-re o-hidden">
                                <img src="{{ Storage::url($portfolio['thumbnail']) }}" alt="{{ $portfolio['name'] }}">
                            </div>
                            <div class="con"> 
                                <span class="category">
                                    <a href="{{ route('portfolio.details', [$portfolio['id'], str_slug($portfolio['name'])]) }}">
                                        . {{ $portfolio['package']['name'] }}
                                    </a>
                                </span>
                                <h5>
                                    <a href="{{ route('portfolio.details', [$portfolio['id'], str_slug($portfolio['name'])]) }}">
                                        {{ $portfolio['name'] }}
                                    </a>
                                </h5> 
                                <a href="{{ route('portfolio.details', [$portfolio['id'], str_slug($portfolio['name'])]) }}">
                                    <i class="ti-arrow-right"></i>
                                </a>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div> --}}
            @foreach($portfolios as $portfolio)
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="item animate-box" data-animate-effect="fadeInLeft" style="margin-bottom: 30px;">
                        <div class="position-re o-hidden">
                            <img src="{{ Storage::url($portfolio['thumbnail']) }}" alt="{{ $portfolio['name'] }}">
                        </div>
                        <div class="con"> 
                            <span class="category">
                                <a href="{{ route('portfolio.details', [$portfolio['id'], str_slug($portfolio['name'])]) }}">
                                    . {{ $portfolio['package']['name'] }}
                                </a>
                            </span>
                            <h5>
                                <a href="{{ route('portfolio.details', [$portfolio['id'], str_slug($portfolio['name'])]) }}">
                                    {{ $portfolio['name'] }}
                                </a>
                            </h5> 
                            <a href="{{ route('portfolio.details', [$portfolio['id'], str_slug($portfolio['name'])]) }}">
                                <i class="ti-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>