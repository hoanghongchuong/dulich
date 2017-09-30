@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>

 
    <section class="top-intour">
        <div class="container-flush">
            <img src="{{asset('public/images/7_01.jpg')}}" alt="" title="">
        </div>
        <div class="container">
            <ul class="breadcrumb rounded-0">
                <li class="breadcrumb-item"><a href="{{url('')}}" title="">Trang chủ</a></li>
                <li class="breadcrumb-item"><a href="{{url('cam-nang')}}" title="">Cẩm nang</a></li>
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
    <section class="guide">
        <div class="container">
            <h2 class="text-uppercase text-center guide-tit">Cẩm nang du lịch</h2>
            <div class="row wrap">
                @foreach($tintuc as $item)
                <div class="col-sm-12 col-md-4 guide-item">
                    <div>
                        <a href="{{url('cam-nang/'.$item->alias.'.html')}}" title=""><img src="{{asset('upload/news/'.$item->photo)}}" alt="" title=""></a>
                        <h3 class="text-center guide-content-tit"><a href="{{url('cam-nang/'.$item->alias.'.html')}}" title="{{$item->name}}">{{$item->name}}</a></h3>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="paginations">
                {!! $tintuc->links() !!}
            </div>
            <!-- <ul class="pagi">
                <li><a href="#"><i class="fa fa-caret-left"></i></a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#"><i class="fa fa-caret-right"></i></a></li>
            </ul> -->
        </div>
    </section>
@endsection
