<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Tour;
use App\Images;
use App\CategoriesTour;
use App\DiemDen;
use App\DiemDi;
use File;
class TourController extends Controller
{
    public function index(){
    	$data = Tour::all();
    	return view('admin.tour.index', compact('data'));
    }
    public function getCreate(){
    	$parent = CategoriesTour::all();
        $diemdi = DiemDi::all();
        $diemden = DiemDen::all();
    	return view('admin.tour.create', compact('parent','diemdi','diemden'));
    }
    public function postCreate(Request $request){
        $diemdi = DiemDi::all();
        $diemden = DiemDen::all();
    	$img = $request->file('fImages');
        $path_img='upload/tour';
        $img_name='';
        if(!empty($img)){
            $img_name=time().'_'.$img->getClientOriginalName();
            $img->move($path_img,$img_name);
        }
    	$tour = new Tour;
    	$tour->name = $request->txtName;
    	// $tour->cate_id = $request->txtTourCate;
        if($request->txtTourCate>0){
            $tour->cate_id = $request->txtTourCate;
        }else{
            $tour->cate_id = 0;
        }
    	if($request->txtAlias){
            $tour->alias = $request->txtAlias;
        }else{
            $tour->alias = changeTitle($request->txtName);
        }
    	$tour->price = $request->txtPrice;

        $tour->diemdi_id = $request->location_start;
        $tour->diemden_id = $request->location_finish;

    	$tour->mota = $request->txtDesc;
    	$tour->des_schedule = $request->des_schedule;
    	$tour->content = $request->txtContent;
    	$tour->content_schedule = $request->schedule;
    	$tour->start = $request->start;
    	$tour->note = $request->note;
    	$tour->keyword = $request->txtKeyword;
        $tour->description = $request->txtDescription;
        $tour->photo = $img_name;
        $tour->date_start = date('Y/m/d H:i:s', strtotime($request->date_start));
        $tour->status = intval($request->stt);
        if($request->status=='on'){
            $tour->status = 1;
        }else{
            $tour->status = 0;
        }
        $tour->save();

        $tour_id = $tour->id;
        if ($request->hasFile('detailImg')) {
            foreach ($request->file('detailImg') as $file) {
                $tour_img = new Images();
                if (isset($file)) {
                    $tour_img->photo = time().'_'.$file->getClientOriginalName();
                    $tour_img->tour_id = $tour_id;
                    $file->move('upload/hasp/',time().'_'.$file->getClientOriginalName());
                    $tour_img->save();
                }
            }
        }

    	return redirect()->route('listTour')->with('status','Thêm thành công');
    }
    public function getEdit($id){
        $diemdi = DiemDi::all();
        $diemden = DiemDen::all();
        $data = Tour::find($id);
        $product_img = Images::where('tour_id',$id)->get();
        $parent = CategoriesTour::all(); 
    	return view('admin.tour.edit', compact('data','parent','product_img','diemdi','diemden'));
    }
    public function postEdit(Request $request, $id){
        $tour = Tour::find($id);
        $img = $request->file('fImages');
            $img_current = 'upload/tour/'.$request->img_current;
            if(!empty($img)){
                $path_img='upload/tour';
                $img_name=time().'_'.$img->getClientOriginalName();
                $img->move($path_img,$img_name);
                $tour->photo = $img_name;
            }
            if ($request->hasFile('detailImg')) {
                foreach ($request->file('detailImg') as $file) {
                    $product_img = new Images();
                    if (isset($file)) {
                        $product_img->photo = time().'_'.$file->getClientOriginalName();
                        $product_img->tour_id = $id;
                        $file->move('upload/hasp/',time().'_'.$file->getClientOriginalName());
                        $product_img->save();
                    }
                }
            }

        $tour->name = $request->txtName;
        $tour->cate_id = $request->txtTourCate;
        if($request->txtAlias){
            $tour->alias = $request->txtAlias;
        }else{
            $tour->alias = changeTitle($request->txtName);
        }
        $tour->price = $request->txtPrice;
        $tour->location_start = $request->location_start;
        $tour->location_finish = $request->location_finish;
        $tour->mota = $request->txtDesc;
        $tour->des_schedule = $request->des_schedule;
        $tour->content = $request->txtContent;
        $tour->content_schedule = $request->schedule;
        $tour->start = $request->start;
        $tour->note = $request->note;
        $tour->keyword = $request->txtKeyword;
        $tour->description = $request->txtDescription;
         $tour->date_start = date('Y/m/d H:i:s', strtotime($request->date_start));
        $tour->status = intval($request->stt);
        if($request->status=='on'){
            $tour->status = 1;
        }else{
            $tour->status = 0;
        }
        $tour->save();    
    	return redirect('admin/tour/edit/'.$tour->id)->with('status','Sửa thành công');
    }
    public function delete($id){
    	$tour = Tour::where('id',$id)->first();

    	$tour->delete();
    	return redirect()->back()->with('status','Xóa thành công');
    }
    // public function getDeleteList($id){
    //     $listid = explode(",",$id);
    //     foreach($listid as $listid_item){
    //         $tour_img = Tour::find($listid_item)->toArray();
    //         // dd($tour_img);
    //         foreach ($tour_img as $value) {
    //            File::delete('upload/hasp/'.$value['photo']);
    //         }
    //         $tour = Tour::findOrFail($listid_item);
    //         $tour->delete();
    //         File::delete('upload/tour/'.$product->photo);
    //     }
    //     return redirect()->route('listTour');
    // }
}
