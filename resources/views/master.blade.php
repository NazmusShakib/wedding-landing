<!DOCTYPE HTML>
<html lang="en">
<head>
    @include('layouts.head')
    <style>
        .mobile-top-logo {
            display: none;
        }
        @media(max-width:767px){
            .mobile-top-logo {
                position: absolute;
                /* margin: 0px 0px 0px 0%; */
                z-index: 9999;
                cursor: pointer;
                opacity: 1;
                padding: 10px 30% 25px 45%;
                -webkit-transition: 0.5s;
                -o-transition: 0.5s;
                transition: 0.5s;
                display: block;
                /* height: 8%; */
                /* width: 50%;
            }
        }
    </style>
</head>
<body>
    <div id="pwe-page"> 
        <a href="#" class="js-pwe-nav-toggle pwe-nav-toggle"><i></i></a>
        <img class="mobile-top-logo" src="{{ asset('images/sketch-logo-black.png') }}" alt="Logo">
        {{-- <div id="myid" class="img"></div> --}}
        
        @include('layouts.sidebar')

        <div id="pwe-main">
            @yield('body')
            
            @include('layouts.footer')
        </div>
        @include('layouts.footerScripts')
    </div>
</body>
</html>