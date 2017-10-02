@extends('admin.master')
@section('content')
@section('controller','Tour')
@section('action','Edit')
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
   	@yield('controller')
    <small>@yield('action')</small>
  </h1>
  @if (session('message'))
	<div class="alert alert-success">
	{{ session('message') }}
	</div>
	@endif
  <ol class="breadcrumb">
    <li><a href="admin"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="javascript:">@yield('controller')</a></li>
    <li class="active">@yield('action')</li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
  
    <div class="box">
    	@include('admin.messages_error')
        <div class="box-body">
        	
        	<form name="frmAdd" method="post" action="{{asset('admin/tour/edit/'.$data->id)}}" enctype="multipart/form-data">
        		<input type="hidden" name="_token" value="{!! csrf_token() !!}" />
	      		
      			<div class="nav-tabs-custom">
	                <ul class="nav nav-tabs">
	                  	<li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="false">Thông tin chung</a></li>
	                  	
	                  	<li><a href="#tab_2" data-toggle="tab" aria-expanded="true">Nội dung</a></li>
	                  	<li><a href="#tab_5" data-toggle="tab" aria-expanded="true">Album hình</a></li>
	                  	<li><a href="#tab_3" data-toggle="tab" aria-expanded="true">SEO</a></li>
	                </ul>
	                <div class="tab-content">
	                  	<div class="tab-pane active" id="tab_1">
	                  		<div class="row">
		                  		<div class="col-md-6 col-xs-12">
			                    	<div class="form-group @if ($errors->first('fImages')!='') has-error @endif">
										<div class="form-group">
											<img src="{{ asset('upload/tour/'.$data->photo) }}" onerror="this.src='{{asset('public/admin_assets/images/no-image.jpg')}}'" width="200"  alt="NO PHOTO" />
											<input type="hidden" name="img_current" value="{!! @$data->photo !!}">
										</div>
										<label for="file">Chọn File ảnh</label>
								     	<input type="file" id="file" name="fImages" >
								    	<p class="help-block">Width:225px - Height: 162px</p>
								    	@if ($errors->first('fImages')!='')
								      	<label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('fImages'); !!}</label>
								      	@endif
									</div>
									<div class="clearfix"></div>
									<div class="form-group">
								      	<label for="ten">Danh mục cha</label>
								      	<select name="txtTourCate" class="form-control">

								      		<option value="0">Chọn danh mục</option>
								      		<?php cate_parent($parent,0,"--",$data->cate_id) ?>
								      	</select>
									</div>
							    	<div class="form-group @if ($errors->first('txtName')!='') has-error @endif">
								      	<label for="ten">Tên</label>
								      	<input type="text" id="txtName" name="txtName" value="{{$data->name}}"  class="form-control" />
								      	@if ($errors->first('txtName')!='')
								      	<label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('txtName'); !!}</label>
								      	@endif
									</div>
									<div class="form-group @if ($errors->first('txtAlias')!='') has-error @endif">
								      	<label for="alias">Đường dẫn tĩnh</label>
								      	<input type="text" name="txtAlias" id="txtAlias" value="{{$data->alias}}"  class="form-control" />
								      	@if ($errors->first('txtAlias')!='')
								      	<label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('txtAlias'); !!}</label>
								      	@endif
									</div>
									
								</div>
							</div>
							<div class="col-md-6 col-xs-12">
								<div class="form-group">
							      	<label for="ten">Giá </label>
							      	<input type="text" name="txtPrice"  value="{{$data->price}}"  class="form-control" />
								</div>
								<div class="form-group">
									<label> Điểm khởi hành</label>
									<select name="location_start" class="form-control" id="">
										<option value="">chọn điểm khởi hành</option>
										@foreach($diemdi as $diemdis)
										<option @if($diemdis->id == $data->diemdi_id)
					                      {{"selected"}}
					                      @endif 
					                       value="{{$diemdis->id}}">{{$diemdis->name}}
					                       	
					                    </option>
										@endforeach
									</select>
								</div>
								<div class="form-group">
									<label> Điểm đến</label>
									<select name="location_finish" id="" class="form-control">
										<option value="">chọn điểm đến</option>
										@foreach($diemden as $diemdens)
										<option @if($diemdens->id == $data->diemden_id) {{"selected"}} @endif value="{{$diemdens->id}}">{{$diemdens->name}}</option>
										@endforeach
									</select>
								</div>
								<div class="form-group">
									<label> Giờ khởi hành</label>
									<select name="time_start" id="" class="form-control">
										@for($i=0; $i<=23; $i++)
										<option @if(isset($data->time_start)) {{"selected"}} @endif value="{{$data->time_start}}">
											{{$i}} giờ
										</option>
										@endfor
									</select>
								</div>
								<div class="form-group">
							      	<label for="desc">Mô tả tour</label>
							      	<textarea name="txtDesc" rows="5" class="form-control">{{$data->mota}}</textarea>
								</div>
								<div class="form-group">
									<label for="">Ngày đi</label>
					                <input type='date' name="date_start" value="{{$data->date_start}}" class="form-control" />
					            </div>
					            <div class="form-group">
									<label for="">Thời gian tour</label>
					                <input type='text' name="number_date" class="form-control" value="{{$data->number_date}}" />
					            </div>
					            
							</div>
							<div class="clearfix"></div>
	                  	</div><!-- /.tab-pane -->
	                  	<div class="tab-pane" id="tab_2">
	                  		<div class="box box-info">
				                <div class="box-header">
				                  	<h3 class="box-title">Mô tả lịch trình</h3>
				                  	<div class="pull-right box-tools">
					                    <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
					                    <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
					                </div>
				                </div>
				                <div class="box-body pad">
				        			<textarea name="des_schedule" id="txtContent" cols="50" rows="5">{{$data->des_schedule}}</textarea>
				        		</div>
				        	</div>
	                  		<div class="box box-info">
				                <div class="box-header">
				                  	<h3 class="box-title">Nội dung tổng quan</h3>
				                  	<div class="pull-right box-tools">
					                    <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
					                    <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
					                </div>
				                </div>
				                <div class="box-body pad">
				        			<textarea name="txtContent" id="txtContent" cols="50" rows="5">{{$data->content}}</textarea>
				        		</div>
				        	</div>
				        	<div class="box box-info">
				                <div class="box-header">
				                  	<h3 class="box-title">Nội dung lịch trình</h3>
				                  	<div class="pull-right box-tools">
					                    <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
					                    <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
					                </div>
				                </div>
				                <div class="box-body pad">
				        			<textarea name="schedule" id="txtContent" cols="50" rows="5">{{$data->content_schedule}}</textarea>
				        		</div>
				        	</div>
							<div class="box box-info">
				                <div class="box-header">
				                  	<h3 class="box-title">Khởi hành</h3>
				                  	<div class="pull-right box-tools">
					                    <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
					                    <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
					                </div>
				                </div>
				                <div class="box-body pad">
				        			<textarea name="start" id="txtContent" cols="50" rows="5">{{$data->start}}</textarea>
				        		</div>
				        	</div>
							<div class="box box-info">
				                <div class="box-header">
				                  	<h3 class="box-title">Nội dung ghi chú</h3>
				                  	<div class="pull-right box-tools">
					                    <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
					                    <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
					                </div>
				                </div>
				                <div class="box-body pad">
				        			<textarea name="note" id="txtContent" cols="50" rows="5">{{$data->note}}</textarea>
				        		</div>
				        	</div>
	                    	<div class="clearfix"></div>
	                	</div><!-- /.tab-pane -->
	                	<div class="tab-pane" id="tab_5">
	                		<div class="form-group">
		                      @foreach($product_img as $key => $item)
		                        <div class="form-group" id="{!! $key !!}">
		                            <img src="{!! asset('upload/hasp/'.$item['photo']) !!}" style="max-width: 150px; margin: 20px;" idImg="{!! $item['id'] !!}" id="{!! $key !!}">
		                            <a href="javascript:" type="button" id="del_img" class="btn btn-danger btn-circle icon_del"><i class="fa fa-times"></i></a>
		                        </div>
		                      @endforeach
		                      <label class="control-label">Chọn ảnh</label>
		                      <input id="input-2" name="detailImg[]" type="file" class="file" multiple data-show-upload="false" data-show-caption="true" data-allowed-file-extensions='["jpeg", "jpg", "png", "gif"]'>
		                    </div>
	                  	</div>
	                	<div class="tab-pane" id="tab_3">
	                  		<div class="row">
		                    	<div class="col-md-6 col-xs-12">
		                    		<div class="form-group">
								      	<label for="keyword">Keyword</label>
								      	<textarea name="txtKeyword" rows="5" class="form-control">{{$data->keyword}}</textarea>
									</div>
									<div class="form-group">
								      	<label for="description">Description</label>
								      	<textarea name="txtDescription" rows="5" class="form-control">{{$data->description}}</textarea>
									</div>
		                    	</div>
	                    	</div>
	                    	<div class="clearfix"></div>
	                	</div><!-- /.tab-pane -->
	                </div><!-- /.tab-content -->
	            </div>
	            <div class="clearfix"></div>
			    <div class="col-md-6">
			    	
				    
				    <div class="form-group">
					    <label>
				        	<input type="checkbox" name="status" checked="checked"> Hiển thị
				    	</label>
				    </div>
				    <!-- <div class="form-group">
					    <label>
				        	<input type="checkbox" name="tinhtrang" checked="checked"> Tình trạng
				    	</label>
				    </div> -->
			    	<!-- <div class="form-group">
					    <label>
				        	<input type="checkbox" name="noibat"> Nổi bật
				    	</label>
				    </div> -->
				    <!-- <div class="form-group">
					    <label>
				        	<input type="checkbox" name="spbc"> Bán chạy
				    	</label>
				    </div> -->
			    </div>
			    <div class="clearfix"></div>
			    <div class="box-footer">
			    	<div class="row">
						<div class="col-md-6">
					    	<button type="submit" class="btn btn-primary">Lưu</button>
					    	<button type="button" onclick="javascript:window.location='admin/tour'" class="btn btn-danger">Thoát</button>
				    	</div>
			    	</div>
			  	</div>
		    </form>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
    
</section><!-- /.content -->

@endsection()
