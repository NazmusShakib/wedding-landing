<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>{!! config('website_title') !!}</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="{!! config('website_description') !!}" />
<link rel="icon" type="image/png" href="{{ asset('images/favicon.png') }}" />
<link rel="stylesheet" href="{{ asset('css/animate.css') }}">
<link rel="stylesheet" href="{{ asset('css/themify-icons.css') }}">
<link rel="stylesheet" href="{{ asset('css/bootstrap.css') }}">
<link rel="stylesheet" href="{{ asset('css/magnific-popup.css') }}">
<link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
<link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
<link rel="stylesheet" href="{{ asset('css/flexslider.css') }}">
<link rel="stylesheet" href="{{ asset('css/style.css') }}">
@stack('css')