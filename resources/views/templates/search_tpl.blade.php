@extends('index')
@section('content')
<section class="top-intour">
  <div class="container-flush">
    <img src="{{asset('public/images/7_01.jpg')}}" alt="" title="">
  </div>
  <div class="container">
    <ul class="breadcrumb rounded-0">
      <li class="breadcrumb-item"><a href="index.html" title="">Trang chủ</a></li>
      <li class="breadcrumb-item"><a href="#">Tour du lịch</a></li>
      <li class="breadcrumb-item active"><a href="javascript:;" title="">tìm kiếm</a></li>
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

<section class="intour-list">
  <div class="container">
    <div class="row wrap">
      <!-- <div class="col-sm-12 col-md-3">
        
        <ul class="intour-list-wrap">
          <li class="text-uppercase intour-list-parent">Du lịch Châu Á
            <ul class="text-nomal">
              <li><a href="#mb1">Du lịch Việt Nam</a></li>
              <li><a href="#mb2">Du lịch Thái Lan</a></li>
              <li><a href="#mb3">Du lịch Trung Quốc</a></li>
              <li><a href="#mb4">Du lịch Ấn Độ</a></li>
            </ul>
          </li>
          <li class="text-uppercase intour-list-parent">Du lịch Châu Âu
            <ul>
              <li>Du lịch Tây Âu
                <ul class="text-nomal intour-list-sparent">
                  <li><a href="#ta1">Du lịch Pháp</a></li>
                  <li><a href="#ta2">Du lịch Bỉ</a></li>
                  <li><a href="#ta3">Du lịch Hà Lan</a></li>
                  <li><a href="#ta4">Du lịch Đức</a></li>
                </ul>
              </li>
              <li>Du lịch Đông Âu
                <ul class="text-nomal intour-list-sparent">
                  <li><a href="#da1">Du lịch Nga</a></li>
                  <li><a href="#da2">Du lịch Hungary</a></li>
                </ul>
              </li>
              <li>Du lịch Bắc Âu
                <ul class="text-nomal intour-list-sparent">
                  <li><a href="#ba1">Du lịch Thụy Điển</a></li>
                  <li><a href="#ba2">Du lịch Phần Lan</a></li>
                </ul>
              </li>
              <li>Du lịch Nam Âu
                <ul class="text-nomal intour-list-sparent">
                  <li><a href="#na1">Du lịch Hy Lạp</a></li>
                  <li><a href="#na2">Du lịch Thổ Nhĩ Kỳ</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li class="text-uppercase intour-list-parent">Du lịch Châu Úc
            <ul class="text-nomal">
              <li><a href="#mn1">Du lịch Australia</a></li>
              <li><a href="#mn2">Du lịch New Zealand</a></li>
            </ul>
          </li>
          <li class="text-uppercase">Du lịch Châu Mỹ</li>
          <li class="text-uppercase">Du lịch Châu Phi</li>
        </ul>
      </div> -->
      <div class="col-sm-12 col-md-9">
        <div class="intour-list-content">
          <div id="mb1" class="intour-list-content-item show">
            <div class="row wrap">
              @foreach($tour as $item)             
              <div class="col-sm-12 col-md-6 intour-tabcontent-item">
                  <div>
                    <a href="{{url('tour/'.$item->alias)}}" title=""><img src="{{asset('upload/tour/'.$item->photo)}}" alt="" title="" class="tour-img"></a>
                  </div>
                  <div class="intour-tab-content-text">
                    <h2 class="text-center text-uppercase intour-tabcontent-item-tit"><a href="{{url('tour/'.$item->alias)}}" title="">{{$item->name}}</a></h2>
                    <ul class="py-3 intour-info-detail">
                    <li class="text-center intour-info-price">{{number_format($item->price)}} <span>đ</span></li>
                    <li class="intour-info-time">3 ngày</li>
                    <li class="intour-info-date">{{date('d/m/Y', strtotime($item->date_start))}}</li>
                    <li class="text-center"><a href="{{url('tour/'.$item->alias)}}" class="btn rounded-0 intour-btn">Xem thêm</a></li>
                  </ul>
                  </div>
              </div>
              @endforeach 
            </div>
            
          </div>

        </div>
      </div>
    </div>
  </div>
</section>
@endsection
