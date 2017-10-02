@extends('index')
@section('content')
<section class="top-intour">
  <div class="container-flush">
      <?php $img = DB::table('banner_content')->where('position',4)->first() ?>
      <img src="{{asset('upload/banner/'.$img->image)}}" alt="" title="">
  </div>
  <div class="container">
    <ul class="breadcrumb rounded-0">
      <li class="breadcrumb-item"><a href="index.html" title="">Trang chủ</a></li>
      <li class="breadcrumb-item"><a href="#">Tour du lịch</a></li>
      <li class="breadcrumb-item active"><a href="{{url($categoryDetail->alias)}}" title="">{{$categoryDetail->name}}</a></li>
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
      <div class="col-sm-12 col-md-3">
        
        <ul class="intour-list-wrap">
          @foreach($categories as $category)
          <li class="text-uppercase intour-list-parent">{{$category->name}}
            <ul>
              @foreach($category->childs as $child)
              <li><a href="{{ route('detailCategory', ['alias' => $child->alias]) }}">{{ $child->name }}</a></li>
              @endforeach
            </ul>
          </li>
          @endforeach
          
        </ul>
      </div>
      <div class="col-sm-12 col-md-9">
          <div class="intour-list-content">
            <div id="mb1" class="intour-list-content-item show">
              <div class="row wrap">
                @foreach($tours as $tour)
                <div class="col-sm-12 col-md-6 intour-tabcontent-item">
                  <div>
                    <a href="{{url('tour/'.$tour->alias)}}" title=""><img src="{{asset('upload/tour/'.$tour->photo)}}" alt="" title="" class="tour-img"></a>
                  </div>
                  <div class="intour-tab-content-text">
                    <h2 class="text-center text-uppercase intour-tabcontent-item-tit"><a href="{{url('tour/'.$tour->alias)}}" title="">{{$tour->name}}</a></h2>
                    <ul class="py-3 intour-info-detail">
                    <li class="text-center intour-info-price">{{number_format($tour->price)}} <span>đ</span></li>
                    <li class="intour-info-time">{{$tour->number_date}}</li>
                    <li class="intour-info-date">{{date('d/m/Y',strtotime($tour->date_start))}}</li>
                    <li class="text-center"><a href="{{url('tour/'.$tour->alias)}}" title="" class="btn rounded-0 intour-btn">Xem thêm</a></li>
                  </ul>
                  </div>
                </div>
                @endforeach
              </div>
              <div class="paginations">
                {!! $tours->links() !!}
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
          </div>
        </div>
    </div>
  </div>
</section>
@endsection
