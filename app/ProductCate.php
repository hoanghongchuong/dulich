<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductCate extends Model {

	protected $table='product_categories';

	protected $fillable = ['id','name','alias','photo','parent_id','stt','level','status','title','keyword','description'];

	public $timestamps = true;

}
