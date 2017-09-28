<?php
    $setting = Cache::get('setting');
    $chinhanh = Cache::get('chinhanh');
?>

<footer class="ft">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-4">
                <h2 class="text-uppercase">{{$setting->company}}</h2>
                <p>{{$setting->address}}</p>
                <p>Điện thoại: <a href="tel:{{$setting->phone}}">{{$setting->phone}}</a> - Fax: <a href="tel:{{$setting->fax}}">{{$setting->fax}}</a></p>
                <p class="ft-hl">Hotline: <a href="tel:{{$setting->hotline}}">{{$setting->hotline}}</a></p>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-3">
                <h2 class="text-uppercase">Du lịch trong nước</h2>
                <ul class="text-capitalize ft-intour">
                    <li><a href="intour.html" title="">Du lịch miền Bắc</a></li>
                    <li><a href="intour.html" title="">Du lịch miền Trung</a></li>
                    <li><a href="intour.html" title="">Du lịch miền Nam</a></li>
                    <li><a href="intour.html" title="">Du lịch khách lẻ</a></li>
                </ul>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-3">
                <h2 class="text-uppercase">Du lịch nước ngoài</h2>
                <ul class="text-capitalize ft-intour">
                    <li><a href="outtour.html" title="">Châu Âu</a></li>
                    <li><a href="outtour.html" title="">Châu á</a></li>
                    <li><a href="outtour.html" title="">Châu úc</a></li>
                    <li><a href="outtour.html" title="">Châu mỹ -phi</a></li>
                </ul>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-2">
                <h2 class="text-uppercase">Về chúng tôi</h2>
                <p><a href="instruc.html" title="">Hướng dẫn thanh toán</a></p>
                <p class="d-flex align-items-center justify-content-around ft-social">
                    <a href="#" title=""><i class="fa fa-facebook"></i></a>
                    <a href="#" title=""><i class="fa fa-instagram"></i></a>
                    <a href="#" title=""><i class="fa fa-skype"></i></a>
                    <a href="#" title=""><i class="fa fa-twitter"></i></a>
                </p>
            </div>
        </div>
    </div>
</footer>
<p class="text-center ft-p">Copyright &copy; 2017. <a href="www.gco.vn" title="">GCO</a>.</p>

<div id="fb-root"></div>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6&appId=124844007858325";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>