<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ItemUnit extends Model
{
    use SoftDeletes;
    protected $fillable = ['item_id', 'unit_id', 'universal_product_code'];

    function item()
    {
        return $this->belongsTo(Item::class, 'item_id');
    }

    function unit()
    {
        return $this->belongsTo(Unit::class, 'unit_id');
    }

    function prices()
    {
        return $this->hasMany(Price::class, 'item_unit_id');
    }

}
