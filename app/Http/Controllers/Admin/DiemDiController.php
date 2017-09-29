<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\DiemDi;
class DiemDiController extends Controller
{
    //
    public function index(){
    	$diemdi = DiemDi::all();
    	// dd($province);
    	return view('admin.diemdi.index',compact('diemdi'));
    }
    public function getCreate(){

    	return view('admin.diemdi.create');
    }
    public function postCreate(Request $request){
    	$diemdi = new DiemDi;
    	$diemdi->name = $request->txtName;
    	$diemdi->save();
    	return redirect(route('admin.diemdi.index'))->with('mess','Thêm thành công');
    }

    public function getEdit($id){
    	$diemdi = DiemDi::where('id',$id)->first();
    	// dd($province);
    	return view('admin.diemdi.edit', compact('diemdi'));
    }
    public function postEdit(Request $request, $id){
    	$diemdi = DiemDi::where('id',$id)->first();
    	$diemdi->name = $request->txtName;
    	$diemdi->save();
    	return redirect(route('admin.diemdi.index'));
    }

    public function delete($id){
    	$data = DiemDi::find($id);
    	$data->delete();
    	return redirect(route('admin.diemdi.index'))->with('mess','Xóa thành công');
    }
}
