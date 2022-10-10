<div id="pwe-footer2">
    <div class="pwe-narrow-content">
        <div class="row">
            <div class="col-sm-6 col-xs-12 col-lg-4 animate-box" data-animate-effect="fadeInLeft">
                <h2>
                    <img style="width: 180px;" src="{{ asset('images/logo-with-text-mirpur-cultural-convention-center.jpeg') }}" alt="Logo">
                </h2>
                <div class="social" style="margin-bottom: 30px;"> 
                    <a {{ (filter_var(config('social_facebook_url'), FILTER_VALIDATE_URL)) ? 'target="_blank"' : '' }} href="{!! config('social_facebook_url') !!}"><i class="ti-facebook"></i></a>
                    <a {{ (filter_var(config('social_twitter_url'), FILTER_VALIDATE_URL)) ? 'target="_blank"' : '' }} href="{!! config('social_twitter_url') !!}"><i class="ti-twitter-alt"></i></a>
                    <a {{ (filter_var(config('social_instagram_url'), FILTER_VALIDATE_URL)) ? 'target="_blank"' : '' }} href="{!! config('social_instagram_url') !!}"><i class="ti-instagram"></i></a> 
                    <a {{ (filter_var(config('social_pinterest_url'), FILTER_VALIDATE_URL)) ? 'target="_blank"' : '' }} href="{!! config('social_pinterest_url') !!}"><i class="ti-pinterest"></i></a> 
                </div>
            </div>
            <div class="col-sm-6 col-xs-12 col-lg-4 animate-box" data-animate-effect="fadeInLeft">
                <h6>Ring</h6>
                <p>{{ config('contact_number') }}</p>
                <h6>Write</h6>
                <p>{{ config('contact_email') }}</p>
            </div>
            <div class="col-sm-6 col-xs-12 col-lg-4 animate-box" data-animate-effect="fadeInLeft">
                <h6>Address</h6>
                <p>
                    {!! config('office_address') !!}
                </p>
                <p class="copyright">&copy; {{ date('Y') }}. {!! config('copyright') !!}</p>
            </div>
        </div>
    </div>
</div>