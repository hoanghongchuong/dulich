<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\DiemDen;
class DiemDenController extends Controller
{
    //
     public function index(){
    	$diemden = DiemDen::all();
    	// dd($province);
    	return view('admin.diemden.index',compact('diemden'));
    }
    public function getCreate(){

    	return view('admin.diemden.create');
    }
    public function postCreate(Request $request){
    	$diemden = new DiemDen;
    	$diemden->name = $request->txtName;
    	$diemden->save();
    	return redirect(route('admin.diemden.index'))->with('mess','Thêm thành công');
    }

    public function getEdit($id){
    	$diemden = DiemDen::where('id',$id)->first();
    	// dd($province);
    	return view('admin.diemden.edit', compact('diemden'));
    }
    public function postEdit(Request $request, $id){
    	$diemden = DiemDen::where('id',$id)->first();
    	$diemden->name = $request->txtName;
    	$diemden->save();
    	return redirect(route('admin.diemden.index'));
    }

    public function delete($id){
    	$data = DiemDen::find($id);
    	$data->delete();
    	return redirect(route('admin.diemden.index'))->with('mess','Xóa thành công');
    }
}
