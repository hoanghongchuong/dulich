<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Slogan;
class SloganController extends Controller
{
     public function index(){
    	$data = Slogan::all();
    	// dd($province);
    	return view('admin.slogan.index',compact('data'));
    }
    public function getCreate(){

    	return view('admin.slogan.create');
    }
    public function postCreate(Request $request){
    	$slogan = new Slogan;
    	$slogan->name = $request->txtName;
    	$slogan->content = $request->content;
    	$slogan->save();
    	return redirect(route('admin.slogan.index'))->with('mess','Thêm thành công');
    }

    public function getEdit($id){
    	$slogan = Slogan::where('id',$id)->first();
    	// dd($province);
    	return view('admin.slogan.edit', compact('slogan'));
    }
    public function postEdit(Request $request, $id){
    	$slogan = Slogan::where('id',$id)->first();
    	$slogan->name = $request->txtName;
    	$slogan->content = $request->content;
    	$slogan->save();
    	return redirect(route('admin.slogan.index'));
    }

    public function delete($id){
    	$data = Slogan::find($id);
    	$data->delete();
    	return redirect(route('admin.slogan.index'))->with('mess','Xóa thành công');
    }
}
