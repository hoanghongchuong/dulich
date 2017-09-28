@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<section class="cart" id="cart">
    <div class="container">
        <h2 class="text-uppercase text-center cart-tit">Thông tin đơn hàng</h2>
        <div class="table-responsive">
            <form action="{{route('updateCart')}}" method="post">
                <table class="text-center table cart_tbl">
                    <thead>
                        <tr class="text-uppercase">
                            <th class="text-center cart_tbl-product">&nbsp</th>
                            <th class="text-center cart_tbl-product">Sản phẩm</th>
                            <th class="text-center cart_tbl-product">Đơn giá</th>
                            <th class="text-center">Số lượng</th>
                            <th class="text-center">Thành tiền</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                            <input type="hidden" name="_token" value="{{csrf_token()}}">
                            @foreach($product_cart as $key=>$product)
                            <tr class="action-number">
                                <td><a id="{{$product->rowId}}" href="{{url('xoa-gio-hang/'.$product->rowId)}}"><i class="fa fa-times"></i></a></td>
                                <td><a href="#" title=""><img src="{{asset('upload/product/'.$product->options->photo)}}" title="" alt="" class="img-responsive"></a> <span class="product_name">{{$product->name}}</span></td>
                                <td>{{number_format($product->price)}}</td>
                                <td><input type="number" value="{{$product->qty}}" id="{{ $product->rowId }}"  name="numb[{{$key}}]" class="qty">
                                </td>
                                <td>{{number_format($product->qty*$product->price)}}   đ</td>
                            </tr>
                            @endforeach
                            <tr class="text-uppercase">
                                <td colspan="4">Tạm Tính</td>
                                <td>{{number_format($total)}} đ</td>
                            </tr>
                        
                    </tbody>
                </table>
                <div class="pull-right"><button type="submit" class="btn-update">Cập nhật</button></div>
            </form>
        </div>
    </div>
</section>

<section class="info">
    <div class="container">
        <div class="row wrap">
        <form class="form-group cart-info-frm" method="post" action="{{route('postOrder')}}">
            <input type="hidden" name="_token" value="{{csrf_token()}}">
            <div class="col-xs-12 col-sm-6 col-md-4">
                <h2 class="text-uppercase text-center cart-tit cart-stit">Thông tin khách hàng</h2>
                
                    <input type="text" placeholder="Họ tên khách hàng *" name="full_name" required="required">
                    <input type="text" placeholder="Địa chỉ nhận hàng *" name="address" required="required">
                    <input type="tel" placeholder="Điện thoại *" name="phone" required="required">
                    <input type="email" placeholder="Email *" name="email" required="required">
                    <textarea placeholder="Ghi chú"></textarea>
                
            </div>
            <div class="col-xs-12 col-sm-6 col-md-5">
                <h2 class="text-uppercase text-center cart-tit cart-stit">Phương thức thanh toán</h2>
                <!-- <ul class="cart_radio">
                    <li><label class="radio_btn"></label> Thanh toán khi giao hàng</li>
                    <li class="bank"><label class="radio_btn"></label> Chuyển khoản qua ngân hàng</li>

                </ul> -->
                <div class="">
                    <p><input class="radio-button" name="payment_method" value="0" type="radio">Thanh toán khi giao hàng</p>
                    <p><input class="radio-button" name="payment_method" value="1" type="radio">Chuyển khoản qua ngân hàng</p>
                </div>
                <p class="cart-intro">Hiện nay chúng tôi hỗ trợ chuyển khoản các ngân hàng sau:</p>
                @foreach($bank as $b)
                <div class="cart-bank">
                    <div>
                        <img src="{{asset('upload/hinhanh/'.$b->img)}}" alt="" title="">
                    </div>
                    <div class="ml-10">
                        {!! $b->info !!}
                    </div>
                </div>
                @endforeach
            </div>
            <div class="col-xs-12 col-sm-12 col-md-3 cart-total">
                <h2 class="text-uppercase text-center cart-tit cart-stit">Đơn hàng</h2>
                <!-- <p>
                    Tạm tính: <span class="pull-right cart-list">{{number_format($total)}}<span> đ</span></span>
                </p> -->
                <!-- <p>
                    Phí vận chuyển: <span class="pull-right cart-list">0<span>đ</span></span>
                </p> -->
                <p>
                    Tổng thanh toán: <strong><span class="pull-right cart-list">{{number_format($total)}}<span>đ</span></span></strong>
                </p>
                <button type="submit" class="btn cart-btn">Thanh toán</button>
            </div>
        </form>
        </div>
    </div>
    <div class="container">
        <div class="cart-contact">
            <h2 class="cart-contact-tit"><strong>Địa chỉ liên hệ</strong></h2>
            <ul class="cart-info-list">
                <li>{{$setting->address}}</li>
                <li>Điện thoại: <a href="tel:{{$setting->phone}}">{{$setting->phone}}</a></li>
                <li>Email: <a href="email:{{$setting->email}}">{{$setting->email}}</a></li>
                <li>Website: <a href="{{$setting->website}}">{{$setting->website}}</a></li>
            </ul>
        </div>
    </div>
    
</section>

<script>
    window.token = '{{ csrf_token() }}';
</script>

@endsection
@section('script')
    <script>
        $(document).ready(function(){
           
            $('#province_id').change(function(){
                var pro_id = $(this).val();
             
                $.get("ajax/province/"+pro_id, function(data){
                    // alert(data);
                    $('#district_id').html(data);
                });
            });
        });
    </script>
@endsection