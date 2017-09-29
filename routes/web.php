<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', ['as'=>'index', 'uses'=>'IndexController@index']);
Route::get('gioi-thieu',['as'=>'getAbout', 'uses'=>'IndexController@getAbout']);

Route::get('lien-he',['as'=>'getContact', 'uses'=>'ContactController@getContact']);
Route::post('lien-he',['as'=>'postContact', 'uses'=>'ContactController@postContact']);

Route::get('cam-nang',['as'=>'getNews', 'uses'=>'IndexController@getNews']);
// Route::get('tim-kiem',['as'=>'search', 'uses'=>'IndexController@search']);
// Tìm kiếm nhiều điều kiến
Route::get('tim-kiem',['as'=>'search', 'uses'=> 'IndexController@multiSearch']);
Route::post('newsletter',['as'=>'postNewsletter', 'uses'=>'IndexController@postNewsletter']);
Route::get('cam-nang/{id}.html',['as'=>'getNewsDetail', 'uses'=>'IndexController@getNewsDetail']);

// route tour du lich
foreach(DB::table('categories_tour')->select('alias')->where('parent_id',0)->get() as $item){
	Route::get($item->alias, ['as'=>'getTourByCate', 'uses'=> 'IndexController@getTourByCate']);
}

// Route::get('san-pham',['as'=>'getProduct', 'uses'=>'IndexController@getProduct']);
// Route::get('san-pham/{alias}.html','IndexController@getProductDetail')->name('detailProduct');
// Route::get('san-pham/{id}',['as'=>'getProductList', 'uses'=>'IndexController@getProductList']);
// Route::get('ajax/province/{id}',['as'=>'loadDistrictByProvince', 'uses'=>'IndexController@loadDistrictByProvince']);


// gio hang
Route::get('gio-hang',['as'=>'getCart', 'uses'=>'IndexController@getCart']);
Route::post('cart/add', ['as' => 'addProductToCart', 'uses' => 'IndexController@addCart']);
Route::post('cart/update',['as' => 'updateCart', 'uses' => 'IndexController@updateCart']);
Route::get('xoa-gio-hang/{id}','IndexController@deleteCart');
Route::post('gui-don-hang', ['as' =>'postOrder', 'uses'=> 'IndexController@postOrder']);
Route::post('card/check',['as'=>'checkCard', 'uses'=>'IndexController@checkCard']);
Route::get('dich-vu/{id}',['as'=>'getDichVuList', 'uses'=>'IndexController@getDichVuList']);
Route::get('chi-tiet-dich-vu/{id}.html',['as'=>'getDichVuDetail', 'uses'=>'IndexController@getDichVuDetail']);

Route::get('thu-vien-anh',['as'=>'getThuvienanh', 'uses'=>'IndexController@getThuvienanh']);
Route::get('{id}.html',['as'=>'getProductDetail', 'uses'=>'IndexController@getProductDetail']);
Route::get('bai-viet/{id}.html',['as'=>'getBaiVietDetail', 'uses'=>'IndexController@getBaiVietDetail']);
Route::get('error/404.html',['as'=>'getErrorNotFount', 'uses'=>'IndexController@getErrorNotFount']);
// Route::controllers([
// 	'auth' => 'Auth\AuthController',
// 	'password' => 'Auth\PasswordController',
// ]);

Route::get('admin/login',['as'=>'admin.auth.getLogin', 'uses'=>'AdminAuth\AuthController@getLogin']);
Route::post('admin/postlogin',['as'=>'admin.auth.postLogin', 'uses'=>'AdminAuth\AuthController@postLogin']);


Route::group(['middleware' =>'authen', 'prefix' => 'admin'], function(){
	Route::get('/',['as'=>'admin.index', 'uses'=>'Admin\IndexController@getIndex']);
	Route::get('register',['as'=>'getRegister', 'uses'=>'AdminAuth\AuthController@getRegister']);
	Route::post('postregister',['as'=>'postRegister', 'uses'=>'AdminAuth\AuthController@postRegister']);
	Route::get('logout', ['as' => 'admin.auth.logout', 'uses' => 'AdminAuth\AuthController@logout']);
	Route::get('setting',['as'=>'admin.setting.index','uses'=>'Admin\SettingController@index']);
	Route::post('setting/update',['as'=>'admin.setting.update','uses'=>'Admin\SettingController@update']);
	
	Route::post('contact/access',['as'=>'admin.contact.access','uses'=>'Admin\ContactController@xuly']);
	Route::post('recruitment/access',['as'=>'admin.recruitment.access','uses'=>'Admin\RecruitmentController@accessRe']);

	Route::group(['prefix' => 'users'], function(){
		Route::get('info',['as'=>'admin.users.getAdmin','uses'=>'Admin\UsersController@getAdmin']);
		Route::post('updateinfo',['as'=>'admin.users.updateinfo','uses'=>'Admin\UsersController@updateinfo']);
	});

	// Chương trình khuyến mại, giảm giá
	Route::group(['prefix' => 'campaign'], function(){
		Route::get('/', ['as' => 'campaignIndex', 'uses' => 'Admin\CampaignController@index']);
		Route::any('/create/{id?}', ['as' => 'campaignCreate', 'uses' => 'Admin\CampaignController@create']);
		Route::get('/delete/{id}', ['as' => 'campaignDelete', 'uses' => 'Admin\CampaignController@delete']);
	});
	Route::group(['prefix' => 'campaign/card'], function(){
		Route::get('/', ['as' => 'campaignCardIndex', 'uses' => 'Admin\CampaignController@getCard']);
		Route::get('delete_list/{id}',['as'=>'deleteListCode','uses'=>'Admin\CampaignController@getDeleteList']);
	});

	// quản lý danh mục tuor du lịch
	Route::group(['prefix' => 'catetour'], function(){
		Route::get('/',['as'=> 'listCateTour','uses'=>'Admin\CategoriesTourController@index']);
		Route::get('create',['as'=>'admin.catetour.getCreate','uses'=>'Admin\CategoriesTourController@getCreate']);
		Route::post('create',['as'=>'admin.catetour.postCreate','uses'=>'Admin\CategoriesTourController@postCreate']);

		Route::get('edit/{id}', ['as'=>'admin.catetour.getEdit', 'uses'=>'Admin\CategoriesTourController@getEdit']);
		Route::post('edit/{id}', ['as'=>'admin.catetour.postEdit', 'uses'=>'Admin\CategoriesTourController@postEdit']);
		Route::get('delete/{id}',['as'=> 'admin.catetour.index','uses'=>'Admin\CategoriesTourController@delete']);
	});
	// quản lý danh sách tour du lịch
	Route::group(['prefix' => 'tour'], function(){
		Route::get('/',['as'=> 'listTour','uses'=>'Admin\TourController@index']);
		Route::get('create',['as'=>'admin.tour.getCreate','uses'=>'Admin\TourController@getCreate']);
		Route::post('create',['as'=>'admin.tour.postCreate','uses'=>'Admin\TourController@postCreate']);

		Route::get('edit/{id}', ['as'=>'admin.tour.getEdit', 'uses'=>'Admin\TourController@getEdit']);
		Route::post('edit/{id}', ['as'=>'admin.tour.postEdit', 'uses'=>'Admin\TourController@postEdit']);
		Route::get('delete/{id}',['as'=> 'admin.tour.index','uses'=>'Admin\TourController@delete']);
		Route::get('{id}/deleteList',['as'=>'admin.tour.getDeleteList','uses'=>'Admin\TourController@getDeleteList']);
	});

	Route::group(['prefix' => 'productcate'], function(){
		Route::get('/',['as'=>'admin.productcate.index','uses'=>'Admin\ProductCateController@getDanhSach']);
		Route::get('add',['as'=>'admin.productcate.getAdd','uses'=>'Admin\ProductCateController@getAdd']);
		Route::post('postAdd',['as'=>'admin.productcate.postAdd','uses'=>'Admin\ProductCateController@postAdd']);

		Route::get('edit',['as'=>'admin.productcate.getEdit','uses'=>'Admin\ProductCateController@getEdit']);

		Route::post('edit',['as'=>'admin.productcate.update','uses'=>'Admin\ProductCateController@update']);

		Route::get('{id}/delete',['as'=>'admin.productcate.getDelete','uses'=>'Admin\ProductCateController@getDelete']);
		Route::get('{id}/delete_list',['as'=>'admin.productcate.getDeleteList','uses'=>'Admin\ProductCateController@getDeleteList']);
	});
	Route::group(['prefix' => 'product'], function(){
		Route::get('/',['as'=>'admin.product.index','uses'=>'Admin\ProductController@getList']);
		Route::get('add',['as'=>'admin.product.getAdd','uses'=>'Admin\ProductController@getAdd']);
		Route::post('postAdd',['as'=>'admin.product.postAdd','uses'=>'Admin\ProductController@postAdd']);
		Route::get('delimg/{id}',['as'=>'admin.product.getDelImg','uses'=>'Admin\ProductController@getDelImg']);

		Route::get('edit',['as'=>'admin.product.getEdit','uses'=>'Admin\ProductController@getEdit']);
		Route::post('edit',['as'=>'admin.product.update','uses'=>'Admin\ProductController@update']);

		Route::get('{id}/delete',['as'=>'admin.product.getDelete','uses'=>'Admin\ProductController@getDelete']);
		
		Route::get('{id}/deleteList',['as'=>'admin.product.getDeleteList','uses'=>'Admin\ProductController@getDeleteList']);
		Route::get('{id}/addAlbum',['as'=>'admin.product.addAlbum','uses'=>'Admin\ProductController@addAlbum']);
		Route::get('dropzoneStore',['as'=>'admin.product.dropzoneStore','uses'=>'Admin\ProductController@dropzoneStore']);
		Route::get('upload',['as'=>'admin.product.upload','uses'=>'Admin\ProductController@post_upload']);
	});

	// Route::group(['prefix' => 'orders'], function(){
	// 	Route::get('/',['as'=>'admin.order.index','uses'=>'Admin\OrderController@getList']);
	// 	Route::get('add',['as'=>'admin.orders.getAdd','uses'=>'Admin\OrdersController@getAdd']);
	// 	Route::post('postAdd',['as'=>'admin.orders.postAdd','uses'=>'Admin\OrdersController@postAdd']);

	// 	Route::get('edit',['as'=>'admin.orders.getEdit','uses'=>'Admin\OrdersController@getEdit']);

	// 	Route::post('edit',['as'=>'admin.orders.update','uses'=>'Admin\OrdersController@update']);

	// 	Route::get('{id}/delete',['as'=>'admin.orders.getDelete','uses'=>'Admin\OrdersController@getDelete']);
	// 	Route::get('{id}/delete_list',['as'=>'admin.orders.getDeleteList','uses'=>'Admin\OrdersController@getDeleteList']);
	// });
	
		Route::group(['prefix' => 'orders'], function(){
		Route::get('/',['as'=>'admin.bill.index','uses'=>'Admin\BillController@getList']);
		// Route::get('add',['as'=>'admin.obill.getAdd','uses'=>'Admin\BillController@getAdd']);
		// Route::post('postAdd',['as'=>'admin.obill.postAdd','uses'=>'Admin\OBillController@postAdd']);
		
		Route::get('edit/{id}',['as'=>'admin.bill.getEdit','uses'=>'Admin\BillController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.bill.update','uses'=>'Admin\BillController@update']);

		Route::get('delete/{id}',['as'=>'admin.bill.getDelete','uses'=>'Admin\BillController@getDelete']);
		// Route::get('{id}/delete_list',['as'=>'admin.obill.getDeleteList','uses'=>'Admin\OBillController@getDeleteList']);
	});

	Route::group(['prefix' => 'newscate'], function(){
		Route::get('/',['as'=>'admin.newscate.index','uses'=>'Admin\NewsCateController@getDanhSach']);
		Route::get('add',['as'=>'admin.newscate.getAdd','uses'=>'Admin\NewsCateController@getAdd']);
		Route::post('postAdd',['as'=>'admin.newscate.postAdd','uses'=>'Admin\NewsCateController@postAdd']);

		Route::get('edit',['as'=>'admin.newscate.getEdit','uses'=>'Admin\NewsCateController@getEdit']);

		Route::post('edit',['as'=>'admin.newscate.update','uses'=>'Admin\NewsCateController@update']);

		Route::get('{id}/delete',['as'=>'admin.newscate.getDelete','uses'=>'Admin\NewsCateController@getDelete']);
		Route::get('{id}/delete_list',['as'=>'admin.newscate.getDeleteList','uses'=>'Admin\NewsCateController@getDeleteList']);
	});
	// Route::group(['prefix' => 'menu'], function(){
	// 	Route::get('/',['as'=>'admin.menu.index','uses'=>'Admin\MenuController@getDanhSach']);
	// 	Route::get('add',['as'=>'admin.menu.getAdd','uses'=>'Admin\MenuController@getAdd']);
	// 	Route::post('postAdd',['as'=>'admin.menu.postAdd','uses'=>'Admin\MenuController@postAdd']);

	// 	Route::get('edit',['as'=>'admin.menu.getEdit','uses'=>'Admin\MenuController@getEdit']);

	// 	Route::post('edit',['as'=>'admin.menu.update','uses'=>'Admin\MenuController@update']);

	// 	Route::get('{id}/delete',['as'=>'admin.menu.getDelete','uses'=>'Admin\MenuController@getDelete']);
	// 	Route::get('{id}/delete_list',['as'=>'admin.menu.getDeleteList','uses'=>'Admin\MenuController@getDeleteList']);
	// });

	Route::group(['prefix'=>'position'], function(){
		Route::get('/',['as'=>'admin.position.index','uses'=>'Admin\PositionController@getList']);
		Route::get('add',['as'=>'admin.position.getAdd','uses'=>'Admin\PositionController@getAdd']);
		Route::post('add',['as'=>'admin.position.postAdd','uses'=>'Admin\PositionController@postAdd']);

		Route::get('edit/{id}',['as'=>'admin.position.getEdit','uses'=>'Admin\PositionController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.position.update','uses'=>'Admin\PositionController@update']);

		Route::get('delete/{id}',['as'=>'admin.position.getDelete','uses'=>'Admin\PositionController@getDelete']);
		
		Route::get('deleteList/{id}',['as'=>'admin.position.getDeleteList','uses'=>'Admin\PositionController@getDeleteList']);

	});

	Route::group(['prefix'=>'banner'], function(){
		Route::get('/',['as'=>'admin.banner.index','uses'=>'Admin\BannerController@getList']);
		Route::get('add',['as'=>'admin.banner.getAdd','uses'=>'Admin\BannerController@getAdd']);
		Route::post('add',['as'=>'admin.banner.postAdd','uses'=>'Admin\BannerController@postAdd']);

		Route::get('edit/{id}',['as'=>'admin.banner.getEdit','uses'=>'Admin\BannerController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.banner.update','uses'=>'Admin\BannerController@update']);

		Route::get('delete/{id}',['as'=>'admin.banner.getDelete','uses'=>'Admin\BannerController@getDelete']);
		
		Route::get('deleteList/{id}',['as'=>'admin.banner.getDeleteList','uses'=>'Admin\BannerController@getDeleteList']);

	});
	Route::group(['prefix' => 'news'], function(){
		Route::get('/',['as'=>'admin.news.index','uses'=>'Admin\NewsController@getList']);
		Route::get('add',['as'=>'admin.news.getAdd','uses'=>'Admin\NewsController@getAdd']);
		Route::post('postAdd',['as'=>'admin.news.postAdd','uses'=>'Admin\NewsController@postAdd']);


		Route::get('edit',['as'=>'admin.news.getEdit','uses'=>'Admin\NewsController@getEdit']);
		Route::post('edit',['as'=>'admin.news.update','uses'=>'Admin\NewsController@update']);

		Route::get('{id}/delete',['as'=>'admin.news.getDelete','uses'=>'Admin\NewsController@getDelete']);
		
		Route::get('{id}/deleteList',['as'=>'admin.news.getDeleteList','uses'=>'Admin\NewsController@getDeleteList']);
	});
	Route::group(['prefix' => 'about'], function(){
		Route::get('/','Admin\AboutController@getList')->name('admin.about.getList');
		Route::get('add','Admin\AboutController@getAdd')->name('admin.about.getAdd');
		Route::post('postAdd',['as'=>'admin.about.postAdd','uses'=>'Admin\AboutController@postAdd']);

		Route::get('edit',['as'=>'admin.about.getEdit','uses'=>'Admin\AboutController@getEdit']);
		Route::post('edit',['as'=>'admin.about.update','uses'=>'Admin\AboutController@update']);

		Route::get('{id}/delete',['as'=>'admin.about.getDelete','uses'=>'Admin\AboutController@getDelete']);
	});
	Route::group(['prefix' => 'lienket'], function(){
		Route::get('/',['as'=>'admin.lienket.index','uses'=>'Admin\LienKetController@getList']);
		Route::get('add',['as'=>'admin.lienket.getAdd','uses'=>'Admin\LienKetController@getAdd']);
		Route::post('postAdd',['as'=>'admin.lienket.postAdd','uses'=>'Admin\LienKetController@postAdd']);


		Route::get('edit',['as'=>'admin.lienket.getEdit','uses'=>'Admin\LienKetController@getEdit']);
		Route::post('edit',['as'=>'admin.lienket.update','uses'=>'Admin\LienKetController@update']);

		Route::get('{id}/delete',['as'=>'admin.lienket.getDelete','uses'=>'Admin\LienKetController@getDelete']);
		
		Route::get('{id}/deleteList',['as'=>'admin.lienket.getDeleteList','uses'=>'Admin\LienKetController@getDeleteList']);
	});
	Route::group(['prefix' => 'contact'], function(){
		Route::get('/','Admin\ContactController@getContact')->name('admin.contact.index');
		Route::get('delete/{id}','Admin\ContactController@deleteContact')->name('delete.contact');
	});
	Route::group(['prefix' => 'recruitment'], function(){
		Route::get('/',['as'=>'admin.recruitment.index', 'uses'=>'Admin\RecruitmentController@getRecruitment']);
		Route::get('delete/{id}',['as' => 'admin.delete.recruitment', 'uses'=>'Admin\RecruitmentController@deleteRecruitment']);

	});

	Route::group(['prefix' => 'newsletter'], function(){
		Route::get('/',['as'=>'admin.newsletter.index','uses'=>'Admin\NewsLetterController@getList']);
		Route::get('add',['as'=>'admin.newsletter.getAdd','uses'=>'Admin\NewsLetterController@getAdd']);
		Route::post('postAdd',['as'=>'admin.newsletter.postAdd','uses'=>'Admin\NewsLetterController@postAdd']);
		Route::post('sendmail',['as'=>'admin.newsletter.postNewsLetter','uses'=>'Admin\NewsLetterController@postNewsLetter']);


		Route::get('edit',['as'=>'admin.newsletter.getEdit','uses'=>'Admin\NewsLetterController@getEdit']);
		Route::post('edit',['as'=>'admin.newsletter.update','uses'=>'Admin\NewsLetterController@update']);

		Route::get('{id}/delete',['as'=>'admin.newsletter.getDelete','uses'=>'Admin\NewsLetterController@getDelete']);
		
		Route::get('{id}/deleteList',['as'=>'admin.newsletter.getDeleteList','uses'=>'Admin\NewsLetterController@getDeleteList']);
	});
	Route::group(['prefix' => 'slider'], function(){
		Route::get('/',['as'=>'admin.slider.index','uses'=>'Admin\SliderController@getList']);
		Route::get('add',['as'=>'admin.slider.getAdd','uses'=>'Admin\SliderController@getAdd']);
		Route::post('postAdd',['as'=>'admin.slider.postAdd','uses'=>'Admin\SliderController@postAdd']);


		Route::get('edit',['as'=>'admin.slider.getEdit','uses'=>'Admin\SliderController@getEdit']);
		Route::post('edit',['as'=>'admin.slider.update','uses'=>'Admin\SliderController@update']);

		Route::get('{id}/delete',['as'=>'admin.slider.getDelete','uses'=>'Admin\SliderController@getDelete']);
		
		Route::get('{id}/deleteList',['as'=>'admin.slider.getDeleteList','uses'=>'Admin\SliderController@getDeleteList']);
	});

	Route::group(['prefix' => 'province'], function(){
		Route::get('/',['as'=>'admin.province.index', 'uses' => 'Admin\ProvinceController@index']);
		Route::get('add',['as'=>'admin.province.getCreate', 'uses' => 'Admin\ProvinceController@getCreate']);
		Route::post('add',['as'=>'admin.province.postCreate', 'uses' => 'Admin\ProvinceController@postCreate']);

		Route::get('edit/{id}',['as'=>'admin.province.getEdit', 'uses' => 'Admin\ProvinceController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.province.postEdit', 'uses' => 'Admin\ProvinceController@postEdit']);

		Route::get('delete/{id}',['as'=>'admin.province.delete', 'uses' => 'Admin\ProvinceController@delete']);
	});

	Route::group(['prefix' => 'district'], function(){
		Route::get('/',['as'=>'admin.district.index', 'uses' => 'Admin\DistrictController@index']);
		Route::get('add',['as'=>'admin.district.getCreate', 'uses' => 'Admin\DistrictController@getCreate']);
		Route::post('add',['as'=>'admin.district.postCreate', 'uses' => 'Admin\DistrictController@postCreate']);

		Route::get('edit/{id}',['as'=>'admin.district.getEdit', 'uses' => 'Admin\DistrictController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.district.postEdit', 'uses' => 'Admin\DistrictController@postEdit']);

		Route::get('delete/{id}',['as'=>'admin.district.delete', 'uses' => 'Admin\DistrictController@delete']);
	});

	Route::group(['prefix'=>'chinhanh'], function(){
		Route::get('/',['as'=>'admin.chinhanh.index','uses'=>'Admin\ChiNhanhController@index']);
		Route::get('create',['as'=>'admin.chinhanh.create','uses'=>'Admin\ChiNhanhController@getCreate']);
		Route::post('create',['as'=>'admin.chinhanh.postCreate','uses'=>'Admin\ChiNhanhController@postCreate']);
		Route::get('edit/{id}',['as'=>'admin.chinhanh.edit', 'uses'=>'Admin\ChiNhanhController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.chinhanh.postEdit', 'uses'=>'Admin\ChiNhanhController@postEdit']);
		Route::get('delete/{id}',['as'=>'admin.chinhanh.delete', 'uses' => 'Admin\ChiNhanhController@delete']);
	});

	Route::group(['prefix'=>'bankaccount'], function(){
		Route::get('/',['as'=>'admin.bank.index', 'uses'=>'Admin\BankAccountController@index']);

		Route::get('create',['as'=>'admin.bank.getCreate', 'uses'=>'Admin\BankAccountController@getCreate']);
		Route::post('create',['as'=>'admin.bank.postCreate', 'uses'=>'Admin\BankAccountController@postCreate']);

		Route::get('edit/{id}',['as'=>'admin.bank.getEdit', 'uses'=>'Admin\BankAccountController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.bank.postEdit', 'uses'=>'Admin\BankAccountController@postEdit']);

		Route::get('delete/{id}',['as'=>'admin.bank.delete','uses'=>'Admin\BankAccountController@delete']);
	});
	Route::group(['prefix'=>'diemdi'], function(){
		Route::get('/',['as'=>'admin.diemdi.index','uses'=>'Admin\DiemDiController@index']);
		Route::get('create',['as'=>'admin.diemdi.create','uses'=>'Admin\DiemDiController@getCreate']);
		Route::post('create',['as'=>'admin.diemdi.postCreate','uses'=>'Admin\DiemDiController@postCreate']);
		Route::get('edit/{id}',['as'=>'admin.diemdi.edit', 'uses'=>'Admin\DiemDiController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.diemdi.postEdit', 'uses'=>'Admin\DiemDiController@postEdit']);
		Route::get('delete/{id}',['as'=>'admin.diemdi.delete', 'uses' => 'Admin\DiemDiController@delete']);
	});
	Route::group(['prefix'=>'diemden'], function(){
		Route::get('/',['as'=>'admin.diemden.index','uses'=>'Admin\DiemDenController@index']);
		Route::get('create',['as'=>'admin.diemden.create','uses'=>'Admin\DiemDenController@getCreate']);
		Route::post('create',['as'=>'admin.diemden.postCreate','uses'=>'Admin\DiemDenController@postCreate']);
		Route::get('edit/{id}',['as'=>'admin.diemden.edit', 'uses'=>'Admin\DiemDenController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.diemden.postEdit', 'uses'=>'Admin\DiemDenController@postEdit']);
		Route::get('delete/{id}',['as'=>'admin.diemden.delete', 'uses' => 'Admin\DiemDenController@delete']);
	});

	Route::post('uploadImg', ['as'=>'admin.uploadImg' ,'uses'=>'Admin/UploadController@uploadImg']);
	Route::post('dropzone/store', ['as'=>'dropzone.store','uses'=>'Admin/ProductController@dropzoneStore']);

});
Route::get('schema/create-product', function(){
	Schema::create('products', function($table){
		$table->increments('id');
		//$table->integer('cate_id')->unsigned();
		//$table->foreign('cate_id')->references('id')->on('product_categories')->onDelete('cascade');
		$table->integer('cate_id')->unsigned();
		$table->integer('stt')->nullable();
		$table->string('name');
		$table->string('alias');
		$table->text('photo')->nullable();
		$table->integer('price');
		$table->longText('mota')->nullable();
		$table->longText('content')->nullable();
		$table->integer('status');
		$table->longText('keyword')->nullable();
		$table->longText('description')->nullable();
		$table->timestamps();
	});
});