@extends('index')
@section('content')
	<section class="top-intour">
		<div class="container-flush">
			<img src="{{asset('public/images/3_01.jpg')}}"" alt="" title="">
		</div>
		<div class="container">
			<ul class="breadcrumb rounded-0">
				<li class="breadcrumb-item"><a href="index.html" title="">Trang chủ</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">Tour du lịch</a></li>
				<li class="breadcrumb-item"><a href="{{url($cateTour->cateAlias)}}" title="">{{$cateTour->cateName}}</a></li>
				<li class="breadcrumb-item"><a href="outtour.html" title="">{{$tour->name}}</a></li>
				<!-- <li class="breadcrumb-item"><a href="outtour.html" title="">Du lịch Tây Âu</a></li>
				<li class="breadcrumb-item active"><a href="outtour.html" title="">Du lịch Ý</a></li> -->
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

	<section class="tdetail">
		<div class="container">
			<div class="row wrap">
				<div class="col-sm-12 col-md-6">
					<div id="slider" class="flexslider">
					  	<ul class="slides">
						  @foreach($album_hinh as $img)
						    <li>
						      	<img src="{{asset('upload/hasp/'.$img->photo)}}" alt="" title="" />
						    </li>
						  @endforeach
						    
					  	</ul>
					</div>
					<div id="carousel" class="flexslider">
					  	<ul class="slides">
						    @foreach($album_hinh as $img)
						    <li>
						      	<img src="{{asset('upload/hasp/'.$img->photo)}}" alt="" title="" />
						    </li>
						  @endforeach
						 
					  	</ul>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 tdetail-r">
					<h1 class="tdetail-tit"><a href="tour-detail.html">{{$tour->name}}</a></h1>
					<div class="tdetail-trip">{!! $tour->des_schedule !!}</div>
					<h2 class="tdetail-price"></h2>
					<!-- <h3>Còn: <span>8</span> chỗ</h3> -->
					<h3>Khởi hành: <span>{{$tour->location_start_name}}</span></h3>
					<h3>Thời gian: <span>10 ngày 9 đêm</span></h3>
					<h3>Khởi hành: <span>{{date('d/m/Y',strtotime($tour->date_start))}}</span></h3>
					<h4 class="tdetail-sale">Giảm Ngay 12.000.000 VNĐ Khi Đăng Ký Tour Trước 22/11 (***)</h4>
					<p class="tdetail-score"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <span>4.72/5 trong 110 ĐÁNH GIÁ</span></p>
					<div class="fb-like" data-href="{{url($tour->alias)}}" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
					<p class="tdetail-sumary">{{$tour->mota}}</p>
				</div>
				<div class="col-sm-12">
					<nav class="text-uppercase nav nav-tabs tdetail-tab" id="myTab" role="tablist">
					  	<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#tq" role="tab" aria-controls="nav-home" aria-expanded="true">Tổng quan</a>
					  	<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#lt" role="tab" aria-controls="nav-profile">Lịch Trình</a>
					  	<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#kh" role="tab" aria-controls="nav-profile">Khởi hành</a>
					  	<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#gc" role="tab" aria-controls="nav-profile">Ghi chú</a>
					  	<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#bl" role="tab" aria-controls="nav-profile">Bình luận</a>
					</nav>
					<div class="tab-content tdetail-tabcontent" id="nav-tabContent">
					  	<div class="tab-pane fade show active" id="tq" role="tabpanel" aria-labelledby="nav-home-tab">
					  		{!! $tour->content !!}
					  	</div>
					  	<div class="tab-pane fade" id="lt" role="tabpanel" aria-labelledby="nav-profile-tab">
					  		{!! $tour->content_schedule !!}
					  	</div>
					  	<div class="tab-pane fade" id="kh" role="tabpanel" aria-labelledby="nav-dropdown1-tab">
					  		
					  	</div>
					  	<div class="tab-pane fade" id="gc" role="tabpanel" aria-labelledby="nav-dropdown2-tab">{!! $tour->note !!}</div>
					  	<div class="tab-pane fade" id="bl" role="tabpanel" aria-labelledby="nav-dropdown2-tab">...</div>
					</div>
					
				</div>
			</div>
		</div>
	</section>

	<section class="tdetail-re">
		<h2 class="text-center tdetail-re-tit"><span class="text-uppercase">Tour Liên quan</span></h2>
		<div class="container">
			<div class="owl-carousel owl-theme carousel_pro">
				@foreach($tourkhac as $tours)
	            <div class="text-center item intour-tabcontent-item">
	  				<div>
	  					<a href="{{url('tour/'.$tours->alias)}}" title=""><img src="{{asset('upload/tour/'.$tours->photo)}}" alt="" title=""></a>
	  				</div>
	  				<div class="intour-tab-content-text">
		  				<h2 class="text-center text-uppercase intour-tabcontent-item-tit"><a href="{{url('tour/'.$tours->alias)}}" title="">{{$tours->name}}</a></h2>
		  				<ul class="py-3 intour-info-detail">
							<li class="text-center intour-info-price">{{$tours->price}} <span>đ</span></li>
							<li class="intour-info-time">3 ngày</li>
							<li class="intour-info-date">{{date('d/m/Y',strtotime($tours->date_start))}}</li>
							<li class="text-center"><a href="{{url('tour/'.$tours->alias)}}" title="" class="btn rounded-0 tdetail-btn">Xem chi tiết</a></li>
						</ul>
	  				</div>
	            </div>
	            @endforeach
	        </div>
		</div>
	</section>
<script type="text/javascript">
	$('#carousel').flexslider({
	    animation: "slide",
	    controlNav: false,
	    animationLoop: true,
	    slideshow: false,
	    itemWidth: 270,
	    itemMargin: 10,
	    asNavFor: '#slider'
	});/* fade/slide */
	 
	$('#slider').flexslider({
	    animation: "fade",
	    controlNav: false,
	    animationLoop: false,
	    slideshow: false,
	    sync: "#carousel"
	});
</script>
<script type="text/javascript">
        $('.carousel_pro').owlCarousel({
            navText: [ '<img src="public/images/l.png">', '<img src="public/images/r.png">' ],
            loop:true,
            margin:20,
            dots:false,
            autoplay:true,
            autoplayTimeout:3500,
            autoplayHoverPause:true,
            responsiveClass:true,
            responsive:{
                0:{
                    items:1,
                    nav:true
                },
                600:{
                    items:2,
                    nav:true
                },
                1000:{
                    items:3,
                    nav:true,
                    loop:true
                }
            }
            /*animateOut: 'slideOutDown',*/
            /*animateIn: 'rotateIn'*/
        });
    </script>
@endsection
