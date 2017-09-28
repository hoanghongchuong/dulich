@extends('index')
@section('content')

<!-- <section class="banner">
    <div class="container-flush">
        <img src="{{asset('public/images/2_03.png')}}" alt="" title="" class="img" />
    </div>
    <div class="container">
        <ul class="breadcumb">
            <li><a href="index.html" title="{{url('')}}">Trang chủ</a></li>
            <li><a href="news.html" title="{{url('tin-tuc')}}">Tin tức</a></li>
            <li><a href="{{url('tin-tuc/'.$news_detail->alias.'.html')}}" title="">{{$news_detail->name}}</a></li>
        </ul>
    </div>
</section>

<section class="ndetail">
    <div class="container ndetail-content">
        <h1 class="ndetail-tit"><a href="news-detail.html" title="">{{$news_detail->name}}</a></h1>
        <div class="like-facbook"></div>
        {!! $news_detail->content !!}
    </div>
</section>

<section class="ndetail-re">
    <h2 class="text-uppercase text-center ndetail-re-tit"><span><strong>Tin tức khác</strong></span></h2>
    <div class="ndetail-re-wrap">
        <div class="container">
            <div class="owl-carousel owl-theme carousel_hot carousel-ndetail">
                @foreach($baiviet_khac as $item)
                <div class="text-center item carousel_hot-item">
                    <a href="{{url('tin-tuc/'.$item->alias.'.html')}}" title=""><img src="{{asset('upload/news/'.$item->photo)}}" alt="" title=""></a>
                    <div class="text-center carousel_content">
                        <h3 class=" pro-name"><a href="{{url('tin-tuc/'.$item->alias.'.html')}}" title=""><strong>{{$item->name}}</strong></a></h3>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    
</section> -->
<section class="top-intour">
    <div class="container-flush">
        <img src="{{asset('public/images/7_01.jpg')}}" alt="" title="">
    </div>
    <div class="container">
        <ul class="breadcrumb rounded-0">
            <li class="breadcrumb-item"><a href="index.html" title="">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="guide.html" title="">Cẩm nang</a></li>
        </ul>
    </div>
    <div class="outtour-filter">
        <div class="container ">
            <p class="text-center top-wrap-p">
                <label class="custom-control custom-radio">
                    <input type="radio" class="custom-control-input" name="choice" required="required">
                    <span class="custom-control-indicator indicator-intour"></span>
                    <span class="text-uppercase custom-control-description">Tour Du lịch</span>
                </label>
                <!-- <label class="custom-control custom-radio">
                    <input type="radio" class="custom-control-input" name="choice" required="required">
                    <span class="custom-control-indicator indicator-intour"></span>
                    <span class="text-uppercase custom-control-description">Khách sạn</span>
                </label> -->
            </p>
            <form class="form-group top-filter">
                <div class="row">
                    <div class="col-md-3 mb-3">
                        <select class="top-filter-ip">
                            <option selected>Điểm khởi hành</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                    <div class="col-md-3 mb-3">
                        <select class="top-filter-ip">
                            <option selected>Điểm đến</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                    <div class="col-md-3 mb-3">
                        <input type="date"c class="top-filter-date">
                    </div>
                    <div class="col-md-3 mb-3">
                        <!-- <select class="top-filter-ip">
                            <option selected>Thời gian tour</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select> -->
                        <input type="time"c class="top-filter-time">
                    </div>
                </div>
                <p class="text-center"><button type="submit" class="btn btn-primary rounded-0 top-filter-btn">Tìm kiếm</button></p>
            </form>
        </div>
    </div>
</section>

<section class="guide">
    <div class="container">
        <div class="row wrap guide-content">
            <div class="col-sm-12">
                <h1 class="gdetail-tit"><a href="guide-detail.html" title="">{{$news_detail->name}}</a></h1>
                <img src="images/fb_03.jpg" alt="" title="">
                
            </div>
            {!! $news_detail->content !!}
            
        </div>
    </div>
</section>

<section class="tdetail-re">
    <h2 class="text-center tdetail-re-tit"><span class="text-uppercase">Bài viết khác</span></h2>
    <div class="container">
        <div class="owl-carousel owl-theme carousel_pro">
            @foreach($tinkhac as $item)
            <div class="text-center item guide-item">
                <div>
                    <a href="{{url('cam-nang/'.$item->alias.'.html')}}" title=""><img src="{{asset('upload/news/'.$item->photo)}}" alt="" title=""></a>
                    <h3 class="text-center guide-content-tit"><a href="{{url('cam-nang/'.$item->alias.'.html')}}" title="">{{$item->name}}</a></h3>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endsection
