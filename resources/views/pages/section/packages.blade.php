<div class="price-section pt-60 pb-60 price bg-pink">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12"> <span class="heading-meta">includes</span>
                <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">Planning Packages</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 owl-carousel owl-theme">
                @foreach($packages as $package)
                    <div class="item">
                        <div class="cont">
                            <div class="type">
                                <h6>{{ $package['name'] }}</h6>
                            </div>
                            <div class="value">
                                <h4>{{ number_format($package['price'], 0) }}<span>৳</span></h4>
                                <p>Starting From</p>
                            </div>
                            <div class="feat">
                                <ul>
                                    @foreach(array_slice($package['includes'], 0, 4) as $value)
                                        <li>{{ $value }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                        <div class="btn-contact"> <a href="{{ route('package.details', [$package['id'], str_slug($package['name'])]) }}"><span>See more</span></a> </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>