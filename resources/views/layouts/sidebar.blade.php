<!-- Sidebar Section -->
<aside id="pwe-aside">
    <!-- Logo -->
    <h1 id="pwe-logo">
        <a href="{{ route('page', '/') }}">
            <img src="{{ asset('images/sketch-logo-black.png') }}" alt="Logo">
        </a>
    </h1>
    <!-- Menu -->
    <nav id="pwe-main-menu">
        <ul>
            <li class="{{ (request()->is('/')) ? 'pwe-active' : '' }}"><a href="{{ route('page', '/') }}">Home</a></li>
            <li class="{{ (request()->is('about-us*')) ? 'pwe-active' : '' }}"><a href="{{ route('page', 'about-us') }}">About</a></li>
            <li class="{{ (request()->is('service*')) ? 'pwe-active' : '' }}"><a href="{{ route('page', 'services') }}">Services</a></li>
            <li class="{{ (request()->is('portfolio*')) ? 'pwe-active' : '' }}"><a href="{{ route('page', 'portfolio') }}">Portfolio</a></li>
            <li class="{{ (request()->is('blog*')) ? 'pwe-active' : '' }}"><a href="{{ route('page', 'blog') }}">News</a></li>
            <li class="{{ (request()->is('contact-us')) ? 'pwe-active' : '' }}"><a href="{{ route('page', 'contact-us') }}">Contact</a></li>
        </ul>
    </nav>
    <!-- Sidebar Footer -->
    <div class="pwe-footer d-none d-lg-block">
        <div class="separator"></div>
        <p>{{ config('contact_number') }}
            <br />{{ config('contact_email') }}</p>
        <div class="social"> 
            <a {{ (filter_var(config('social_facebook_url'), FILTER_VALIDATE_URL)) ? 'target="_blank"' : '' }} href="{!! config('social_facebook_url') !!}"><i class="ti-facebook"></i></a>
            <a {{ (filter_var(config('social_twitter_url'), FILTER_VALIDATE_URL)) ? 'target="_blank"' : '' }} href="{!! config('social_twitter_url') !!}"><i class="ti-twitter-alt"></i></a>
            <a {{ (filter_var(config('social_instagram_url'), FILTER_VALIDATE_URL)) ? 'target="_blank"' : '' }} href="{!! config('social_instagram_url') !!}"><i class="ti-instagram"></i></a> 
            <a {{ (filter_var(config('social_pinterest_url'), FILTER_VALIDATE_URL)) ? 'target="_blank"' : '' }} href="{!! config('social_pinterest_url') !!}"><i class="ti-pinterest"></i></a> 
        </div>
    </div>
</aside>