@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $cate_tour = Cache::get('cate_tour');
    // $chinhanh = Cache::get('chinhanh');

?>
<nav class="menu-wrap contact-menu">
    <div class="container">
        <div class="menubtn menubtn--spin d-flex align-items-center justify-content-md-center justify-content-between">
            <div class="menubtn-box d-md-none">
                <div class="menubtn-inner"></div>
            </div>
            <a href="{{url('')}}" title="" class="text-sm-center text-right"><img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="" title="" class="logo"></a>
        </div>

        <ul class="menu d-flex align-items-md-center justify-content-md-around flex-md-row flex-column justify-content-start align-items-start">
            <li class="active"><a href="{{url('')}}" title="">Trang chủ</a></li>
            <li class="parent-menu"><a href="#" title="">Tour du lịch<span class="text-right open-submenu"><i class="fa fa-angle-down"></i></span></a>
                <ul class="sub-menu">
                     @foreach($cate_tour as $item)
                    <li><a href="{{url(''.$item->alias)}}" title="">{{$item->name}}</a></li>
                    @endforeach
                </ul>
            </li>            
            <li><a href="{{url('cam-nang')}}" title="">Cẩm nang</a></li>
            <li><a href="{{url('lien-he')}}" title="">Liên hệ</a></li>
        </ul>
    </div>
</nav>
<section class="contact">
    <div class="container-flush">
        <div class="map_container">
            {!!$setting->iframemap!!}
        </div>
    </div>
    <div class="container">
        <ul class="breadcrumb rounded-0">
            <li class="breadcrumb-item"><a href="{{url('')}}" title="">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="{{url('lien-he')}}">Liên hệ</a></li>
        </ul>
        <div class="row">
            <div class="col-sm-12 col-md-6 contact-l">
                <h2 class="contact-tit"><span class="text-uppercase">Liên hệ với chúng tôi</span></h2>
                <div class="contact-l-wrap">
                    <h1 class="text-uppercase">{{$setting->company}}</h1>
                    <p>Địa chỉ: <span>{{$setting->address}}</span></p>
                    <p>Email: <a href="mailto:{{$setting->email}}">{{$setting->email}}</a></p>
                    <p>Điện thoại: <a href="tel:{{$setting->phone}}">{{$setting->phone}}</a> - Fax: <a href="tel:{{$setting->fax}}">{{$setting->fax}}</a></p>
                    <p class="ft-hl">Hotline: <a href="tel:{{$setting->hotline}}">{{$setting->hotline}}</a> </p>
                </div>
                
            </div>
            <div class="col-sm-12 col-md-6 contact-r">
                <h2 class="contact-tit"><span class="text-uppercase">Cảm nhận của bạn</span></h2>
                <form class="form-group contact-frm" method="post" action="{{ route('postContact')}}">
                     <input type="hidden" name="_token" value="{{csrf_token()}}">
                    <input type="text"  name="txtName" placeholder="Tên bạn">
                    <input type="email" name="txtEmail" placeholder="Email">
                    <textarea placeholder="Ý kiến" name="txtContent"></textarea>
                    <p class="text-center"><button type="submit" class="btn btn-primary rounded-0 contact-btn">GỬI</button></p>
                </form>
            </div>
        </div>
    </div>
</section>
@endsection
