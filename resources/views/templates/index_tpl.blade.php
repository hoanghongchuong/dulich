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
                        <select name="time_start" class="top-filter-ip" id="">
                            <option value="">Chọn giờ khởi hành</option>
                            @for($i=0; $i<=23; $i++)
                            <option value="{{$i}}">{{$i}} giờ</option>
                            @endfor
                        </select>
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
                    <h1 class="font-italic mb-3 text-center about-tit"><a href="#" title=""><strong><span>{{$about->name}}</span></strong></a></h1>
                    <div class="">{!! $about->mota !!}</div>
                </div>
                
            </div>
            <div class="col-sm-12 col-md-6">
                <img src="{{asset('upload/hinhanh/'.$about->photo)}}" alt="" title="">
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
            @foreach ($tour_home as $tours)
            <div class="col-md-12 col-lg-6 mb-4 tour-item">
                <div class="row no-gutters">
                    <div class="col-sm-12 col-md-8 text-center">
                        <a href="{{url('tour/'.$tours->alias)}}" title=""><img src="{{asset('upload/tour/'.$tours->photo)}}" alt="" title="" class="tour-img"></a>
                    </div>
                    <div class="col-sm-12 col-md-4 d-flex justify-content-center flex-column">
                        <div class="intour-info">
                            <h3 class="text-center text-uppercase intour-info-tit"><a href="{{url('tour/'.$tours->alias)}}" title="">{{$tours->name}}</a></h3>
                            <ul class="py-3 intour-info-detail">
                                <li class="text-center intour-info-price">{{number_format($tours->price)}} <span>đ</span></li>
                                <li class="intour-info-time">{{$tours->number_date}}</li>
                                <li class="intour-info-date">{{date('d/m/Y',strtotime($tours->date_start))}}</li>
                                <li class="text-center"><a href="{{url('tour/'.$tours->alias)}}" title="" class="btn rounded-0 intour-btn">Xem thêm</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            
        </div>
    </div><!-- end intour -->

    <div class="container outour-con">
        <h2 class="text-center text-uppercase tour-tit">Tour nước ngoài</h2>
        <div class="row wrap">
            @foreach($tour_home1 as $tour1)
            <div class="col-md-12 col-lg-6 mb-4 tour-item">
                <div class="row no-gutters">
                    <div class="col-sm-12 col-md-8 text-center">
                        <a href="{{url('tour/'.$tour1->alias)}}" title=""><img src="{{asset('upload/tour/'.$tour1->photo)}}" alt="" title="" class="tour-img"></a>
                    </div>
                    <div class="col-sm-12 col-md-4 d-flex justify-content-center flex-column">
                        <div class="intour-info">
                            <h3 class="text-center text-uppercase intour-info-tit"><a href="{{url('tour/'.$tour1->alias)}}" title="">{{$tour1->name}}</a></h3>
                            <ul class="py-3 intour-info-detail">
                                <li class="text-center intour-info-price">{{number_format($tour1->price)}} <span>đ</span></li>
                                <li class="intour-info-time">{{$tour1->number_date}}</li>
                                <li class="intour-info-date">{{date('d/m/Y',strtotime($tour1->date_start))}}</li>
                                <li class="text-center"><a href="{{url('tour/'.$tour1->alias)}}" title="" class="btn rounded-0 intour-btn">Xem thêm</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
    </div>
</section>

<section class="why">
    <div class="container">
        <h2 class="text-center text-uppercase tour-tit">Vì sao chọn eaze tour?</h2>
        <div class="row wrap">
            @foreach($slogans as $slogan)
            <div class="col-sm-12 col-md-4 why-wrap">
                <h3 class="text-uppercase">{{$slogan->name}}</h3>
                <h4>{!!$slogan->content!!}</h4>

                
            </div>
            @endforeach
        </div>
    </div>
</section>

<section class="adventure">
    <div class="container-flush adventure-wrap">
        <h2 class="text-center text-uppercase tour-tit">Khám phá thế giới</h2>
        <div class="row no-gutters wrap adventure-row">
            <div class="col">
                <a href="{{asset('upload/hinhanh/'.$list_img['0']->photo)}}" data-fancybox="group2" title="">
                    <img src="{{asset('upload/hinhanh/'.$list_img['0']->photo)}}" alt="" title="">
                </a>
                <a href="{{asset('upload/hinhanh/'.$list_img['1']->photo)}}" data-fancybox="group2" title="">
                </a>
                <a href="{{asset('upload/hinhanh/'.$list_img['2']->photo)}}" data-fancybox="group2" title="">
                </a>
                <a href="{{asset('upload/hinhanh/'.$list_img['3']->photo)}}" data-fancybox="group2" title="">
                </a>
                <a href="{{asset('upload/hinhanh/'.$list_img['4']->photo)}}" data-fancybox="group2" title="">
                </a>
                <a href="{{asset('upload/hinhanh/'.$list_img['5']->photo)}}" data-fancybox="group2" title="">
                </a>
                <a href="{{asset('upload/hinhanh/'.$list_img['6']->photo)}}" data-fancybox="group2" title="">
                </a>
                <a href="{{asset('upload/hinhanh/'.$list_img['7']->photo)}}" data-fancybox="group2" title="">
                </a>
            </div>
            <div class="col">
                <div>
                    <a href="{{asset('upload/hinhanh/'.$list_img['1']->photo)}}" data-fancybox="group3" title="">
                        <img src="{{asset('upload/hinhanh/'.$list_img['1']->photo)}}" alt="" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['2']->photo)}}" data-fancybox="group3" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['3']->photo)}}" data-fancybox="group3" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['4']->photo)}}" data-fancybox="group3" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['5']->photo)}}" data-fancybox="group3" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['6']->photo)}}" data-fancybox="group3" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['7']->photo)}}" data-fancybox="group3" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['0']->photo)}}" data-fancybox="group3" title="">
                    </a>
                </div>
                <div>
                    <a href="{{asset('upload/hinhanh/'.$list_img['2']->photo)}}" data-fancybox="group4" title="">
                        <img src="{{asset('upload/hinhanh/'.$list_img['2']->photo)}}" alt="" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['3']->photo)}}" data-fancybox="group4" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['4']->photo)}}" data-fancybox="group4" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['5']->photo)}}" data-fancybox="group4" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['6']->photo)}}" data-fancybox="group4" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['7']->photo)}}" data-fancybox="group4" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['1']->photo)}}" data-fancybox="group4" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['0']->photo)}}" data-fancybox="group4" title="">
                    </a>
                </div>
            </div>
            <div class="col">
                <div>
                    <a href="{{asset('upload/hinhanh/'.$list_img['3']->photo)}}" data-fancybox="group5" title="">
                        <img src="{{asset('upload/hinhanh/'.$list_img['3']->photo)}}" alt="" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['4']->photo)}}" data-fancybox="group5" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['5']->photo)}}" data-fancybox="group5" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['6']->photo)}}" data-fancybox="group5" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['7']->photo)}}" data-fancybox="group5" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['0']->photo)}}" data-fancybox="group5" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['1']->photo)}}" data-fancybox="group5" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['2']->photo)}}" data-fancybox="group5" title="">
                    </a>
                </div>
                
                <div>
                    <a href="{{asset('upload/hinhanh/'.$list_img['4']->photo)}}" data-fancybox="group6" title="">
                        <img src="{{asset('upload/hinhanh/'.$list_img['4']->photo)}}" alt="" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['5']->photo)}}" data-fancybox="group6" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['6']->photo)}}" data-fancybox="group6" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['7']->photo)}}" data-fancybox="group6" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['0']->photo)}}" data-fancybox="group6" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['1']->photo)}}" data-fancybox="group6" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['2']->photo)}}" data-fancybox="group6" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['3']->photo)}}" data-fancybox="group6" title="">
                    </a>
                </div>
            </div>
            <div class="col">
                <div>
                    <a href="{{asset('upload/hinhanh/'.$list_img['5']->photo)}}" data-fancybox="group7" title="">
                        <img src="{{asset('upload/hinhanh/'.$list_img['5']->photo)}}" alt="" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['6']->photo)}}" data-fancybox="group7" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['7']->photo)}}" data-fancybox="group7" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['0']->photo)}}" data-fancybox="group7" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['1']->photo)}}" data-fancybox="group7" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['2']->photo)}}" data-fancybox="group7" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['3']->photo)}}" data-fancybox="group7" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['4']->photo)}}" data-fancybox="group7" title="">
                    </a>
                </div>
                
                <div>
                    <a href="{{asset('upload/hinhanh/'.$list_img['6']->photo)}}" data-fancybox="group8" title="">
                        <img src="{{asset('upload/hinhanh/'.$list_img['6']->photo)}}" alt="" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['7']->photo)}}" data-fancybox="group8" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['0']->photo)}}" data-fancybox="group8" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['1']->photo)}}" data-fancybox="group8" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['2']->photo)}}" data-fancybox="group8" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['3']->photo)}}" data-fancybox="group8" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['4']->photo)}}" data-fancybox="group8" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['5']->photo)}}" data-fancybox="group8" title="">
                    </a>
                </div>
            </div>

            <div class="col">
                <a href="{{asset('upload/hinhanh/'.$list_img['7']->photo)}}" data-fancybox="group9" title="">
                        <img src="{{asset('upload/hinhanh/'.$list_img['7']->photo)}}" alt="" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['0']->photo)}}" data-fancybox="group9" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['1']->photo)}}" data-fancybox="group9" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['2']->photo)}}" data-fancybox="group9" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['3']->photo)}}" data-fancybox="group9" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['4']->photo)}}" data-fancybox="group9" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['5']->photo)}}" data-fancybox="group9" title="">
                    </a>
                    <a href="{{asset('upload/hinhanh/'.$list_img['6']->photo)}}" data-fancybox="group9" title="">
                    </a>
            </div>
        </div>
    </div>
</section>
@endsection
