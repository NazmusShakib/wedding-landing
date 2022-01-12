<div class="services-section services clear pt-90 pb-90">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 mb-30"> <span class="heading-meta">weddings . events</span> 
                <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">Our Services</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="owl-carousel owl-theme">
                    @foreach ($services as $service)
                        <div class="item">
                            <div class="position-re o-hidden"> <img src="{{ Storage::url($service['thumbnail']) }}" alt="{{ $service['title'] }}"> </div>
                            <div class="con"> 
                                <span class="category">
                                    <a href="{{ route('service.details', [$service['id'], str_slug($service['title'])]) }}">. {{ $service['category']['name'] }}</a>
                                </span>
                                <h5><a href="{{ route('service.details', [$service['id'], str_slug($service['title'])]) }}">{{ $service['title'] }}</a></h5> 
                                <a href="{{ route('service.details', [$service['id'], str_slug($service['title'])]) }}"><i class="ti-arrow-right"></i></a>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>