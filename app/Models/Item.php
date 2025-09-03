<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{

    protected $fillable = ['name', 'category_id', 'description', 'image'];
    /**
     * Get the category that owns the item.
     */
    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function itemUnits()
    {
        return $this->hasMany(ItemUnit::class, 'item_id');
    }
}
