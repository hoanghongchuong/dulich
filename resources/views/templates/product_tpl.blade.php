@extends('index')
@section('content')

<section class="banner">
    <div class="container-flush">
      <img src="{{asset('public/images/2_03.png')}}" alt="" title="" class="img" />
    </div>
    <div class="container">
      <ul class="breadcumb">
        <li><a href="{{url('')}}" title="">Trang chủ</a></li>
        <li><a href="{{url('san-pham')}}" title="">Sản phẩm</a></li>
      </ul>
    </div>
  </section>

  <section class="filter">
    <div class="container">
      <div class="filter-b">
        <div class="row no-row wrap">
          @foreach($cate_pro as $item)
          <div class="col-xs-12 col-sm-6 col-md-3 filter-wrap">
            <div class="">
              <a href="{{url('san-pham/'.$item->alias)}}" title="" class=""><img src="{{asset('upload/product/'.$item->photo)}}" alt="filter-item" title=""></a>
              <h2 class="text-center filter-item-name">{{$item->name}}<a href="{{url('san-pham/'.$item->alias)}}" title=""></a></h2>
            </div>
          </div>
          @endforeach
        </div>
        
      </div>
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
       <div class="row">
         <div class="paginations">
         {!! $product->links() !!}
       </div>
      </div>
    </div>
  </section>

@endsection
