@extends('index')
@section('content')

<?php
    $setting = Cache::get('setting');
    $cate_tour = Cache::get('cate_tour');
?>
<section class="top">
    <!-- <div class="container-flush">
        <img src="images/slider.png" alt="" title="">
    </div> -->
    <div class="top-wrap">
        <div class="container ">
            <form class="form-group top-filter" method="GET" action="{{url('tim-kiem')}}">
                <div class="row">
                    <div class="col-md-3 mb-3">
                        <select class="top-filter-ip" name="location_start">
                            <option selected>Điểm khởi hành</option>
                            @foreach(DB::table('location_start')->select('id', 'name')->get() as $location)
                            <option value="{{ $location->id }}">{{ $location->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3 mb-3">
                        <select class="top-filter-ip" name="location_finish">
                            <option selected>Điểm đến</option>
                            @foreach(DB::table('location_finish')->select('id', 'name')->get() as $location)
                            <option value="{{ $location->id }}">{{ $location->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3 mb-3">
                        <input type="date" class="top-filter-date" name="date">
                    </div>
                    <div class="col-md-3 mb-3">
                        <!-- <select class="top-filter-ip">
                            <option selected>Thời gian tour</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select> -->
                        <input type="time" class="top-filter-time">
                    </div>
                </div>
                <p class="text-center"><button type="submit" class="btn btn-primary rounded-0 top-filter-btn">Tìm kiếm</button></p>
            </form>
        </div>
    </div>
</section>
<section class="py-4 about">
    <div class="container">
        <div class="row wrap">
            <div class="col-sm-12 col-md-6 d-flex justify-content-center flex-column about-l">
                <div class="about-l-wrap">
                    <h1 class="font-italic mb-3 text-center about-tit"><a href="#" title=""><strong><span>Eaze</span> <span>Tours</span></strong></a></h1>
                    <h2 class="font-italic mb-5 text-center about-stit"><strong>Cùng chúng tôi khám phá Thế Giới!</strong></h2>
                    <p>Chúng tôi luôn cam kết đảm bảo sự an toàn của bạn là trên hết.</p>
                    <p>Hướng dẫn viên của chúng tôi sẽ giúp bạn tìm hiểu các nền văn hóa nơi mà bạn đặt chân đến.</p>
                    <p>Chúng tôi cũng cung cấp các mức giá theo nhóm và công ty.</p>
                </div>
                
            </div>
            <div class="col-sm-12 col-md-6">
                <img src="{{asset('public/images/1-0.jpg')}}" alt="" title="">
            </div>
        </div>
    </div>
</section>
<section class="tour">
    <div class="container-flush tour-bg">
        <img src="{{asset('public/images/bg.png')}}" alt="">
    </div>
    <div class="container tour-wrap">
        <h2 class="text-center text-uppercase tour-tit">Tour trong nước</h2>
        <div class="row wrap">
            <div class="col-md-12 col-lg-6 mb-4 tour-item">
                <div class="row no-gutters">
                    <div class="col-sm-12 col-md-8 text-center">
                        <a href="intour.html" title=""><img src="{{asset('public/images/1_05.png')}}" alt="" title="" class="tour-img"></a>
                    </div>
                    <div class="col-sm-12 col-md-4 d-flex justify-content-center flex-column">
                        <div class="intour-info">
                            <h3 class="text-center text-uppercase intour-info-tit"><a href="#" title="">Huế -Lào - Đông bắc Thái</a></h3>
                            <ul class="py-3 intour-info-detail">
                                <li class="text-center intour-info-price">3.099.000 <span>đ</span></li>
                                <li class="intour-info-time">3 ngày</li>
                                <li class="intour-info-date">02/10/2017</li>
                                <li class="text-center"><a href="#" title="" class="btn rounded-0 intour-btn">Xem thêm</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12 col-lg-6 mb-4 tour-item">
                <div class="row no-gutters">
                    <div class="col-sm-12 col-md-8 text-center">
                        <a href="intour.html" title=""><img src="{{asset('public/images/1_07.png')}}" alt="" title="" class="tour-img"></a>
                    </div>
                    <div class="col-sm-12 col-md-4 d-flex justify-content-center flex-column">
                        <div class="intour-info">
                            <h3 class="text-center text-uppercase intour-info-tit"><a href="intour.html" title="">Huế -Lào - Đông bắc Thái</a></h3>
                            <ul class="py-3 intour-info-detail">
                                <li class="text-center intour-info-price">3.099.000 <span>đ</span></li>
                                <li class="intour-info-time">3 ngày</li>
                                <li class="intour-info-date">02/10/2017</li>
                                <li class="text-center"><a href="intour.html" title="" class="btn rounded-0 intour-btn">Xem thêm</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12 col-lg-6 mb-4 tour-item">
                <div class="row no-gutters">
                    <div class="col-sm-12 col-md-8 text-center">
                        <a href="intour.html" title=""><img src="{{asset('public/images/1_11.png')}}" alt="" title="" class="tour-img"></a>
                    </div>
                    <div class="col-sm-12 col-md-4 d-flex justify-content-center flex-column">
                        <div class="intour-info">
                            <h3 class="text-center text-uppercase intour-info-tit"><a href="intour.html" title="">Huế -Lào - Đông bắc Thái</a></h3>
                            <ul class="py-3 intour-info-detail">
                                <li class="text-center intour-info-price">3.099.000 <span>đ</span></li>
                                <li class="intour-info-time">3 ngày</li>
                                <li class="intour-info-date">02/10/2017</li>
                                <li class="text-center"><a href="intour.html" title="" class="btn rounded-0 intour-btn">Xem thêm</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12 col-lg-6 mb-4 tour-item">
                <div class="row no-gutters">
                    <div class="col-sm-12 col-md-8 text-center">
                        <a href="intour.html" title=""><img src="{{asset('public/images/1_13.png')}}" alt="" title="" class="tour-img"></a>
                    </div>
                    <div class="col-sm-12 col-md-4 d-flex justify-content-center flex-column">
                        <div class="intour-info">
                            <h3 class="text-center text-uppercase intour-info-tit"><a href="intour.html" title="">Huế -Lào - Đông bắc Thái</a></h3>
                            <ul class="py-3 intour-info-detail">
                                <li class="text-center intour-info-price">3.099.000 <span>đ</span></li>
                                <li class="intour-info-time">3 ngày</li>
                                <li class="intour-info-date">02/10/2017</li>
                                <li class="text-center"><a href="intour.html" title="" class="btn rounded-0 intour-btn">Xem thêm</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div><!-- end intour -->

    <div class="container outour-con">
        <h2 class="text-center text-uppercase tour-tit">Tour nước ngoài</h2>
        <div class="row wrap">
            <div class="col-md-12 col-lg-6 mb-4 tour-item">
                <div class="row no-gutters">
                    <div class="col-sm-12 col-md-8 text-center">
                        <a href="intour.html" title=""><img src="{{asset('public/images/1_17.png')}}" alt="" title="" class="tour-img"></a>
                    </div>
                    <div class="col-sm-12 col-md-4 d-flex justify-content-center flex-column">
                        <div class="intour-info">
                            <h3 class="text-center text-uppercase intour-info-tit"><a href="intour.html" title="">Huế -Lào - Đông bắc Thái</a></h3>
                            <ul class="py-3 intour-info-detail">
                                <li class="text-center intour-info-price">3.099.000 <span>đ</span></li>
                                <li class="intour-info-time">3 ngày</li>
                                <li class="intour-info-date">02/10/2017</li>
                                <li class="text-center"><a href="intour.html" title="" class="btn rounded-0 intour-btn">Xem thêm</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12 col-lg-6 mb-4 tour-item">
                <div class="row no-gutters">
                    <div class="col-sm-12 col-md-8 text-center">
                        <a href="intour.html" title=""><img src="{{asset('public/images/1_19.png')}}" alt="" title="" class="tour-img"></a>
                    </div>
                    <div class="col-sm-12 col-md-4 d-flex justify-content-center flex-column">
                        <div class="intour-info">
                            <h3 class="text-center text-uppercase intour-info-tit"><a href="intour.html" title="">Huế -Lào - Đông bắc Thái</a></h3>
                            <ul class="py-3 intour-info-detail">
                                <li class="text-center intour-info-price">3.099.000 <span>đ</span></li>
                                <li class="intour-info-time">3 ngày</li>
                                <li class="intour-info-date">02/10/2017</li>
                                <li class="text-center"><a href="intour.html" title="" class="btn rounded-0 intour-btn">Xem thêm</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12 col-lg-6 mb-4 tour-item">
                <div class="row no-gutters">
                    <div class="col-sm-12 col-md-8 text-center">
                        <a href="intour.html" title=""><img src="{{asset('public/images/1_23.png')}}" alt="" title="" class="tour-img"></a>
                    </div>
                    <div class="col-sm-12 col-md-4 d-flex justify-content-center flex-column">
                        <div class="intour-info">
                            <h3 class="text-center text-uppercase intour-info-tit"><a href="intour.html" title="">Huế -Lào - Đông bắc Thái</a></h3>
                            <ul class="py-3 intour-info-detail">
                                <li class="text-center intour-info-price">3.099.000 <span>đ</span></li>
                                <li class="intour-info-time">3 ngày</li>
                                <li class="intour-info-date">02/10/2017</li>
                                <li class="text-center"><a href="intour.html" title="" class="btn rounded-0 intour-btn">Xem thêm</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12 col-lg-6 mb-4 tour-item">
                <div class="row no-gutters">
                    <div class="col-sm-12 col-md-8 text-center">
                        <a href="intour.html" title=""><img src="{{asset('public/images/1_24.png')}}" alt="" title="" class="tour-img"></a>
                    </div>
                    <div class="col-sm-12 col-md-4 d-flex justify-content-center flex-column">
                        <div class="intour-info">
                            <h3 class="text-center text-uppercase intour-info-tit"><a href="intour.html" title="">Huế -Lào - Đông bắc Thái</a></h3>
                            <ul class="py-3 intour-info-detail">
                                <li class="text-center intour-info-price">3.099.000 <span>đ</span></li>
                                <li class="intour-info-time">3 ngày</li>
                                <li class="intour-info-date">02/10/2017</li>
                                <li class="text-center"><a href="intour.html" title="" class="btn rounded-0 intour-btn">Xem thêm</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<section class="why">
    <div class="container">
        <h2 class="text-center text-uppercase tour-tit">Vì sao chọn eaze tour?</h2>
        <div class="row wrap">
            <div class="col-sm-12 col-md-4 why-wrap">
                <h3 class="text-uppercase">Mạng bán tour số 1 Việt Nam.</h3>
                <h4>Ứng dụng công nghệ mới nhất.</h4>

                <h3 class="text-uppercase">Sản phẩm đa dạng, chất lượng.</h3>
                <h4>Đạt chất lượng tốt nhất.</h4>
            </div>
            <div class="col-sm-12 col-md-4 why-wrap">
                <h3 class="text-uppercase">Mạng bán tour số 1 Việt Nam.</h3>
                <h4>Ứng dụng công nghệ mới nhất.</h4>

                <h3 class="text-uppercase">Sản phẩm đa dạng, chất lượng.</h3>
                <h4>Đạt chất lượng tốt nhất.</h4>
            </div>
            <div class="col-sm-12 col-md-4 why-wrap">
                <h3 class="text-uppercase">Mạng bán tour số 1 Việt Nam.</h3>
                <h4>Ứng dụng công nghệ mới nhất.</h4>

                <h3 class="text-uppercase">Sản phẩm đa dạng, chất lượng.</h3>
                <h4>Đạt chất lượng tốt nhất.</h4>
            </div>
        </div>
    </div>
</section>

<section class="adventure">
    <div class="container-flush adventure-wrap">
        <h2 class="text-center text-uppercase tour-tit">Khám phá thế giới</h2>
        <div class="row no-gutters wrap adventure-row">
            <div class="col">
                <a href="images/1_34.png" data-fancybox="group2" title="">
                    <img src="{{asset('public/images/1_34.png')}}" alt="" title="">
                </a>
                <a href="images/1_35.png" data-fancybox="group2" title="">
                </a>
                <a href="images/1_34.png" data-fancybox="group2" title="">
                </a>
                <a href="images/1_11.png" data-fancybox="group2" title="">
                </a>
            </div>
            <div class="col">
                <div>
                    <a href="images/1_35.png" data-fancybox="group3" title="">
                        <img src="{{asset('public/images/1_35.png')}}" alt="" title="">
                    </a>
                    <a href="images/1_34.png" data-fancybox="group3" title="">
                    </a>
                    <a href="images/1_41.png" data-fancybox="group3" title="">
                    </a>
                    <a href="img/1_23.png" data-fancybox="group3" title="">
                    </a>
                </div>
                <div>
                    <a href="images/1_40.png" data-fancybox="group4" title="">
                        <img src="{{asset('public/images/1_40.png')}}" alt="" title="">
                    </a>
                    <a href="images/1_34.png" data-fancybox="group4" title="">
                    </a>
                    <a href="images/1_41.png" data-fancybox="group4" title="">
                    </a>
                    <a href="img/1_23.png" data-fancybox="group4" title="">
                    </a>
                </div>
            </div>
            <div class="col">
                <div>
                    <a href="images/1_31png" data-fancybox="group5" title="">
                        <img src="{{asset('public/images/1_31.png')}}" alt="" title="">
                    </a>
                    <a href="images/1_42.png" data-fancybox="group5" title="">
                    </a>
                    <a href="images/1_19.png" data-fancybox="group5" title="">
                    </a>
                    <a href="images/1_27.png" data-fancybox="group5" title="">
                    </a>
                </div>
                
                <div>
                    <a href="images/1_41.png" data-fancybox="group6" title="">
                        <img src="{{asset('public/images/1_41.png')}}" alt="" title="">
                    </a>
                    <a href="images/1_34.png" data-fancybox="group6" title="">
                    </a>
                    <a href="images/1_41.png" data-fancybox="group6" title="">
                    </a>
                    <a href="img/1_23.png" data-fancybox="group6" title="">
                    </a>
                </div>
            </div>
            <div class="col">
                <div>
                    <a href="images/1_37.png" data-fancybox="group7" title="">
                        <img src="{{asset('public/images/1_37.png')}}" alt="" title="">
                    </a>
                    <a href="images/1_40.png" data-fancybox="group7" title="">
                    </a>
                    <a href="images/1_05.png" data-fancybox="group7" title="">
                    </a>
                    <a href="images/1_17.png" data-fancybox="group7" title="">
                    </a>
                </div>
                
                <div>
                    <a href="images/1_42.jpg" data-fancybox="group8" title="">
                        <img src="{{asset('public/images/1_42.jpg')}}" alt="" title="">
                    </a>
                    <a href="images/1_34.png" data-fancybox="group8" title="">
                    </a>
                    <a href="images/1_41.png" data-fancybox="group8" title="">
                    </a>
                    <a href="img/1_23.png" data-fancybox="group8" title="">
                    </a>
                </div>
            </div>

            <div class="col">
                <a href="images/1_33.png" data-fancybox="group9" title="">
                    <img src="{{asset('public/images/1_33.png')}}" alt="" title="">
                </a>
                <a href="images/1_34.png" data-fancybox="group9" title="">
                </a>
                <a href="images/1_37.png" data-fancybox="group9" title="">
                </a>
                <a href="images/1_40.png" data-fancybox="group9" title="">
                </a>
            </div>
        </div>
    </div>
</section>
@endsection
