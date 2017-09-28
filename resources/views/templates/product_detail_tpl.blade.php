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
                <li><a href="#" title="">{{$product_detail->name}}</a></li>
            </ul>
        </div>
    </section>

    <section class="pdetail">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6">
                    <div class="fotorama" data-nav="thumbs" data-width="100%" >
                        @foreach($album_hinh as $album)
                        <a href="javascript:;"><img src="{{asset('upload/hasp/'.$album->photo)}}" class="scale"></a>
                        @endforeach
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6">
                    <div class="pdetail-info">
                        <h1 class="pdetail-name"><a href="javascript:;" title=""><strong>{{$product_detail->name}}</strong></a></h1>
                        <ul class="pdetail-info-list">
                            <li>Mã sản phẩm: <span>{{$product_detail->code}}</span></li>
                            {!!$product_detail->mota!!}
                            <li>Giá: <span class="pdetail-info-list-price"><strong>{{number_format($product_detail->price)}}<span> đ</span></strong></span></li>
                        </ul>
                        <form action="{{ route('addProductToCart') }}" method="post">
                            {!! csrf_field() !!}
                            <input type="hidden" name="product_id" value="{{ $product_detail->id }}">
                            <button type="submit" class="btn buybtn">MUA NGAY</button>
                        </form>
                    </div>
                </div>
            </div>

            <h2 class="text-uppercase pdetail-tit"><span>Thông tin chi tiết</span></h2>
            <div class="pdetail-content">
                {!! $product_detail->content !!}
            </div>
        </div>
    </section>

    <section class="pdetail-re">
        <div class="container">
            <h2 class="text-uppercase text-center pdetail-re-tit"><span>Sản phẩm khác</span></h2>
            <div class="owl-carousel owl-theme carousel_hot carousel_pre">
                @foreach($product_khac as $item)
                <div class="text-center item carousel_hot-item">
                    <a href="{{url('san-pham/'.$item->alias.'.html')}}" title=""><img src="{{asset('upload/product/'.$item->photo)}}" alt="" title="" class="scale"></a>
                </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection
