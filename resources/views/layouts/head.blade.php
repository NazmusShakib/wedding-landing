<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>{!! config('website_title') !!}</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="{!! config('website_description') !!}" />
<link rel="icon" type="image/png" href="{{ asset('images/favicon.png') }}" />
<link rel="stylesheet" href="{{ asset('css/fontawesome.css') }}">
<link rel="stylesheet" href="{{ asset('css/animate.css') }}">
<link rel="stylesheet" href="{{ asset('css/themify-icons.css') }}">
<link rel="stylesheet" href="{{ asset('css/bootstrap.css') }}">
<link rel="stylesheet" href="{{ asset('css/magnific-popup.css') }}">
<link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
<link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
<link rel="stylesheet" href="{{ asset('css/flexslider.css') }}">
<link rel="stylesheet" href="{{ asset('css/style.css') }}">
<style>
    #social-links ul{
        margin: 0;
        padding: 0;
        display: block;
    }
    #social-links ul li{
        display: inline-block;
        float: left;
    }
    #social-links ul li a {
        color: #000;
        width: 32px;
        height: 32px;
        line-height: 32px;
        background: transparent;
        margin: 0 5px 20px 0;
        text-align: center;
        border: 1px solid #ddd;
        font-size: 12px;
    }
    #social-links ul li a:hover {
        color: #ffffff;
        background: #000000;
    }
</style>
@stack('css')