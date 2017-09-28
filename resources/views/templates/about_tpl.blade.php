@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
 <div class="main-content cd-main-content">
    @include('templates.layout.slider')
    <section class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="{{url('')}}">Trang chủ</a></li>
              <li class="breadcrumb-item"><a href="{{url('gioi-thieu')}}">Giới thiệu</a></li>
            </ol>
        </div>
    </section>
    <section class="about-us">
        <div class="container">
            {!! $about->content !!}
        </div>
        <!-- <div class="banner-about">
            <img src="images/bn-about-1.png" alt="" title="">
        </div>
        <div class="container">
            <p>Có thể nói, sự hiện diện của cây xanh không chỉ giúp điều hòa không khí, tô điểm nét xanh tươi mới mà còn mang theo ý nghĩa phong thủy, giúp mang lại tài lộc cho gia chủ. Không những thế nếu bạn đang muốn trang trí cho căn phòng nhỏ của mình hoặc F5 bàn làm việc thì những loại cây cảnh dưới đây là lựa chọn vô cùng thích hợp. Có thể nói, sự hiện diện của cây xanh không chỉ giúp điều hòa không khí, tô điểm nét xanh tươi mới mà còn mang theo ý nghĩa phong thủy, giúp mang lại tài lộc cho gia chủ. Không những thế nếu bạn đang muốn trang trí cho căn phòng nhỏ của mình hoặc F5 bàn làm việc thì những loại cây cảnh dưới đây là lựa chọn vô cùng thích hợp.<br><br>
            Có thể nói, sự hiện diện của cây xanh không chỉ giúp điều hòa không khí, tô điểm nét xanh tươi mới mà còn mang theo ý nghĩa phong thủy, giúp mang lại tài lộc cho gia chủ. Không những thế nếu bạn đang muốn trang trí cho căn phòng nhỏ của mình hoặc F5 bàn làm việc thì những loại cây cảnh dưới đây là lựa chọn vô cùng thích hợp. Có thể nói, sự hiện diện của cây xanh không chỉ giúp điều hòa không khí, tô điểm nét xanh tươi mới mà còn mang theo ý nghĩa phong thủy, giúp mang lại tài lộc cho gia chủ. Không những thế nếu bạn đang muốn trang trí cho căn phòng nhỏ của mình hoặc F5 bàn làm việc thì những loại cây cảnh dưới đây là lựa chọn vô cùng thích hợp.
            </p>
        </div> -->
    </section>
    
</div>
@endsection
