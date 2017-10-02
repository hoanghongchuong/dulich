<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CategoriesTour;
class CategoriesTourController extends Controller
{
    
    public function index(){
    	$data = CategoriesTour::all();
    	return view('admin.catetour.index', compact('data'));
    }
    public function getCreate(){

    	$parent = CategoriesTour::all();

        $categorySelect = CategoriesTour::pluck('name', 'id')->toArray();
        $categoryLevel = json_encode(CategoriesTour::pluck('level', 'id')->toArray());

    	return view('admin.catetour.create', compact('parent', 'categoryLevel'));
    }
    public function postCreate(Request $request){
    	$tour = new CategoriesTour;
    	$tour->name = $request->txtName;
    	$tour->parent_id = $request->txtCateTour;
        // if($request->txtCateTour>0){
        //     $tour->parent_id = $request->txtCateTour;
        // }else{
        //     $tour->parent_id = 0;
        // }
    	$tour->alias = $request->txtAlias;
        $tour->level = $request->level;
    	$tour->save();
    	return redirect()->route('listCateTour');
    }
    public function getEdit($id){
    	$data = CategoriesTour::find($id);
    	$parent = CategoriesTour::all(); 
    	return view('admin.catetour.edit', compact('parent','data'));
    }
    public function postEdit(Request $request, $id){
    	$tour = CategoriesTour::find($id);
    	$tour->name = $request->txtName;
    	$tour->parent_id = $request->txtCateTour;
    	$tour->alias = $request->txtAlias;
    	$tour->save();
    	return redirect()->back()->with('message','Sửa thành công');
    }
    public function delete($id){
    	$data = CategoriesTour::where('id',$id)->first();
    	$data->delete();
    	return redirect()->back();
    }
}
