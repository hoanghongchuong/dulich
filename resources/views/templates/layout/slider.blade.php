<?php
	$slider = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();

?>
@if(isset($slider))


        <!-- @foreach($slider as $item)
         <a href="javascript:;" title="{{ $item->name }}"><img src="{{ asset('upload/hinhanh/'.$item->photo) }}" alt=""></a>
		@endforeach -->
	<section class="slider">
		<div class="owl-carousel owl-theme carousel_top">
			@foreach($slider as $item)
            <div class="item">
				<a href="{{$item->link}}" title="{{ $item->name }}"><img src="{{ asset('upload/hinhanh/'.$item->photo) }}" alt="" title=""></a>
				<div class="carousel-content">
					<div class="container">
						<div class="text-uppercase carousel-content-wrap">
							{!!$item->mota!!}
						</div>
					</div>
				</div>
            </div>
            @endforeach
        </div>
	</section>
@endif