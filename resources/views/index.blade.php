<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <?php 
        $setting = Cache::get('setting'); 
        $product_list = Cache::get('product_list');
    ?>
    <meta http-equiv="content-language" content="vi" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
    <meta name="robots" content="noindex, nofollow" />
    <meta name='revisit-after' content='1 days' />
    
    <title><?php if(!empty($title)) echo $title; else echo $setting->title; ?></title>
    
    <meta name="author" content="{!! $setting->website !!}" />
    <meta name="copyright" content="Hoàng Hồng Chương [chuonghoanghong@gmail.com]" />
    <meta name="keywords" content="<?php if(!empty($keyword)) echo $keyword; else echo $setting->keyword; ?>" />
    <meta name="description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />
    <meta http-equiv="content-language" content="vi" />
    <meta property="og:title" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:locale" content="vi_VN"/>
    <meta property="og:url" content="{!! $setting->website !!}" />
    <meta property="og:site_name" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="<?php if(!empty($img_share)) echo $img_share; else echo asset('upload/hinhanh/'.$setting->photo) ?>" />
    <meta property="og:description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />

    <meta name="googlebot" content="all, index, follow" />
    <meta name="geo.region" content="VN" />
    <meta name="geo.position" content="10.764338, 106.69208" />
    <meta name="geo.placename" content="Hà Nội" />
    <meta name="Area" content="HoChiMinh, Saigon, Hanoi, Danang, Vietnam" />
    <link rel="shortcut icon" href="{!! asset('upload/hinhanh/'.$setting->favico) !!}" type="image/png" />

    <link rel="stylesheet" href="{{ asset('public/css/bootstrap.min.css')}}" />
    <link rel="stylesheet" href="{{ asset('public/css/font-awesome.min.css')}}" />
    <link rel="stylesheet" href="{{ asset('public/css/jquery.fancybox.min.css')}}" />
    <link rel="stylesheet" href="{{ asset('public/css/owl.carousel.min.css')}}" />
    
    <!-- <link rel="stylesheet" href="{{ asset('public/css/owl.theme.default.min.css')}}" /> -->
    <!-- <link rel="stylesheet" href="{{ asset('public/css/fotorama.css')}}" /> -->
    <link href="{{ asset('public/css/style.css') }}" rel="stylesheet">
    
    
    <script src="{{ asset('public/js/jquery.min.js') }}"></script><!--jQuery v1.11.3-->
    
</head>
<body>
    <?php if($com != "lien-he"){        
    ?> 
        @include('templates.layout.header')
    <?php } ?>
   
    @yield('content')
    @include('templates.layout.footer')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="{{ asset('public/js/bootstrap.min.js') }}"></script>
    
    <script src="{{ asset('public/js/jquery.fancybox.min.js') }}"></script>
    <script src="{{ asset('public/js/owl.carousel.js') }}"></script>
    <!-- <script src="{{ asset('public/js/fotorama.js') }}"></script> -->
    <script src="{{ asset('public/js/jquery.js') }}"></script>
    
    <script type="text/javascript">
        jQuery(document).ready(function($){
            $(window).scroll(function(){
                var top = $(window).scrollTop();
                var tourpos = $('.tour').offset().top;
                var tourlength = $('.tour').height();
                if(top >= tourpos && top-1200 < tourlength) {
                    $(".tour-bg").addClass('tour-bg-pos');
                }
                else {
                    $(".tour-bg").removeClass('tour-bg-pos');
                }
                // var b = $('.tour-wrap').offset().top;
                console.log(tourlength, top, tourpos);
            });
        });
    </script>
    
    <script>
        // new WOW().init();
    </script>
    <script type="text/javascript">
        $('.carousel_pro').owlCarousel({
            navText: [ '<img src="public/images/l.png">', '<img src="public/images/r.png">' ],
            loop:true,
            margin:20,
            dots:false,
            autoplay:true,
            autoplayTimeout:3500,
            autoplayHoverPause:true,
            responsiveClass:true,
            responsive:{
                0:{
                    items:1,
                    nav:true
                },
                600:{
                    items:2,
                    nav:true
                },
                1000:{
                    items:3,
                    nav:true,
                    loop:true
                }
            }
            /*animateOut: 'slideOutDown',*/
            /*animateIn: 'rotateIn'*/
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $('#datetimepicker1').datetimepicker();
        });
    </script>
    {{ $setting->codechat }}
    {{ $setting->analytics }}
    @yield('script')
</body>
</html>