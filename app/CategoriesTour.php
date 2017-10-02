<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoriesTour extends Model
{
    protected $table='categories_tour';

    /**
     * Get the tour for the category.
     */
    public function getToursAttribute()
    {
    	$categoryIdArray = $this->getChildCategories([$this->id]);
        return \App\Tour::whereIn('cate_id', $categoryIdArray)->paginate(8);
    }


    protected function getChildCategories($categoryArray = [])
    {
    	$childIdArray = CategoriesTour::select('id')->whereIn('parent_id', $categoryArray)->whereNotIn('id', $categoryArray)->get()->pluck('id')->toArray();
    	if (!count($childIdArray)) {
    		return $categoryArray;
    	}
    	$categoryArray = array_merge($categoryArray, $childIdArray);
    	return $this->getChildCategories($categoryArray);
    }

    public function getTopToursAttribute() 
    {
        $categoryIdArray = $this->getChildCategories([$this->id]);
        return \App\Tour::whereIn('cate_id', $categoryIdArray)->limit(4)->get();
    }

    public function childs() 
    {
        return $this->hasMany('App\CategoriesTour', 'parent_id')->select('name', 'alias');
    }
}
