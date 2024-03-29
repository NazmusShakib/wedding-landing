<!DOCTYPE html>
<html lang="en">
    <head>
        @include('layouts.head')
        <style>
            .mobile-top-logo {
                display: none;
            }
            @media (max-width: 767px) {
                .mobile-top-logo {
                    position: absolute;
                    z-index: 9999;
                    display: inherit;
                    width: 100%;
                    height: 140px;
                    text-align: center;
                    z-index: 999;
                }
                .mobile-top-logo img {
                    padding-top: 10px;
                    max-width: 120px;
                }
            }
        </style>
    </head>
    <body>
        <div id="pwe-page">
            <a href="#" class="js-pwe-nav-toggle pwe-nav-toggle"><i></i></a>
            <div class="mobile-top-logo">
                <img src="{{ url(config('logo_secondary')) }}" alt="Logo" />
            </div>

            {{--
            <div id="myid" class="img"></div>
            --}} @include('layouts.sidebar')

            <div id="pwe-main">
                @yield('body') @stack('custom-style') @include('layouts.footer')
            </div>
            @include('layouts.footerScripts')
        </div>
    </body>
</html>
