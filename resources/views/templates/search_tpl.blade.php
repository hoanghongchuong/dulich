@extends('index')
@section('content')

<section class="banner">
    <div class="container-flush">
      <img src="{{asset('public/images/2_03.png')}}" alt="" title="" class="img" />
    </div>
    <div class="container">
      <ul class="breadcumb">
        <li><a href="{{url('')}}" title="">Trang chủ</a></li>
        <li><a href="javascript:;" title="">Từ khóa tìm kiếm</a></li>
        <li><a href="javascript:;" title="">{{$search}}</a></li>
      </ul>
    </div>
  </section>

  <section class="products">
    <h2 class="text-uppercase text-center products-tit">SẢN PHẨM</h2>
    <div class="container">
      <div class="row wrap">
        @foreach($product as $p)
          <div class="col-xs-12 col-sm-4 product product">
            <div class="products-item">
              <a href="{{url('san-pham/'.$p->alias.'.html')}}" title=""><img src="{{asset('upload/product/'.$p->photo)}}" alt="" title=""></a>
              <div class="products-item-over">
                <p><i class="fa fa-search"></i></p>
                <p><a href="{{url('san-pham/'.$p->alias.'.html')}}">Xem chi tiết</a></p>
              </div>
            </div>
            <div>
              <h3 class="text-center products-item-name"><a href="{{url('san-pham/'.$p->alias.'.html')}}" title="">{{$p->name}}</a></h3>
              <h4 class="text-center products-price">{{number_format($p->price)}}<span> đ</span></h4>
            </div>
          </div>
        @endforeach      
       
      </div>
    </div>
  </section>

@endsection
