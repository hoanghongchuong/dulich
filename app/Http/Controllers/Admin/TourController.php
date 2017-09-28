<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Tour;
use App\Images;
use App\CategoriesTour;
use File;
class TourController extends Controller
{
    public function index(){
    	$data = Tour::all();
    	return view('admin.tour.index', compact('data'));
    }
    public function getCreate(){
    	$parent = CategoriesTour::all();
    	return view('admin.tour.create', compact('parent'));
    }
    public function postCreate(Request $request){
    	$img = $request->file('fImages');
        $path_img='upload/tour';
        $img_name='';
        if(!empty($img)){
            $img_name=time().'_'.$img->getClientOriginalName();
            $img->move($path_img,$img_name);
        }
    	$tour = new Tour;
    	$tour->name = $request->txtName;
    	$tour->cate_id = $request->txtTourCate;
    	$tour->alias = $request->txtAlias;
    	$tour->price = $request->txtPrice;
    	$tour->mota = $request->txtDesc;
    	$tour->des_schedule = $request->des_schedule;
    	$tour->content = $request->txtContent;
    	$tour->content_schedule = $request->schedule;
    	$tour->start = $request->start;
    	$tour->note = $request->note;
    	$tour->keyword = $request->txtKeyword;
        $tour->description = $request->txtDescription;
        $tour->photo = $img_name;
        $tour->date_start = $request->date_start;
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

    	return redirect()->route('listTour')->with('message','Thêm thành công');
    }
    public function getEdit($id){

    	return view('admin.tour.edit');
    }
    public function postEdit(Request $request, $id){

    	return redirect();
    }
    public function delete($id){
    	$tour = Tour::where('id',$id)->first();
    	$tour->delete();
    	return redirect()->back();
    }
    public function getDeleteList($id){
        $listid = explode(",",$id);
        foreach($listid as $listid_item){
            $tour_img = Tour::find($listid_item)->toArray();
            // dd($tour_img);
            foreach ($tour_img as $value) {
               File::delete('upload/hasp/'.$value['photo']);
            }
            $tour = Tour::findOrFail($listid_item);
            $tour->delete();
            File::delete('upload/tour/'.$product->photo);
        }
        return redirect()->route('listTour');
    }
}
