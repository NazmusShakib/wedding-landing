<aside id="pwe-hero" class="js-fullheight">
    <div class="flexslider js-fullheight">
        <ul class="slides">
            @foreach ($sliders as $slider)
                @if(1 == $slider['thumbnail_type'])
                    <li>
                        <div class="overlay-video">
                            <video autoplay muted playsinline loop>
                                <source src="{{ Storage::url($slider['thumbnail']) }}" type="video/mp4">
                            </video>
                        </div><div class="overlay-color"></div>
                @else
                    <li style="background-image: url({{ Storage::url($slider['thumbnail']) }});">
                        <div class="overlay"></div>
                @endif
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 js-fullheight slider-text">
                                @if($slider['short_title'] || $slider['title'] || $slider['description'])
                                <div class="slider-text-inner">
                                    <div class="desc">
                                        <h6>{{ $slider['short_title'] }}</h6>
                                        <h1>{{ $slider['title'] }}</h1>
                                        <p>{{ $slider['description'] }}</p>
                                        @if (!empty($slider['btn_title']))
                                            <div class="btn-contact">
                                                <a href="{{ $slider['btn_url'] }}" target="_blank"><span>{{ $slider['btn_title'] }}</span>
                                                </a>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                @endif
                            </div>
                        </div>
                    </div>
                </li>
            @endforeach
        </ul>
    </div>
</aside>