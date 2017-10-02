<?php
    $setting = Cache::get('setting');
    $cate_tour = Cache::get('cate_tour');
    // $menu_top = Cache::get('menu_top');
    // $dichvu = Cache::get('dichvu');
?>
<nav class="menu-wrap fixed-top">
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
                    <li><a href="{{ route('detailCategory', ['alias' => $item->alias]) }}" title="">{{$item->name}}</a></li>
                    @endforeach
                </ul>
            </li>            
            <li><a href="{{url('cam-nang')}}" title="">Cẩm nang</a></li>
            <li><a href="{{url('lien-he')}}" title="">Liên hệ</a></li>
        </ul>
    </div>
</nav>