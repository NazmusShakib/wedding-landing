<!DOCTYPE HTML>
<html lang="en">
<head>
    @include('layouts.head')
</head>
<body>
    <div id="pwe-page"> 
        <a href="#" class="js-pwe-nav-toggle pwe-nav-toggle"><i></i></a>
        @include('layouts.sidebar')
        <!-- Main Section -->
        <div id="pwe-main">
            @yield('body')
            
            @include('layouts.footer')
        </div>
        @include('layouts.footerScripts')
    </div>
</body>
</html>