<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Mattiverse\Userstamps\Traits\Userstamps;

class Price extends Model
{
    use SoftDeletes, Userstamps;

    protected $fillable = [
        'item_unit_id',
        'retailer_branch_id',
        'date',
        'price',
        'discount',
        'sell_price',
    ];

    function itemUnit()
    {
        return $this->belongsTo(ItemUnit::class,'item_unit_id');
    }

    function retailerBranch()
    {
        return $this->belongsTo(RetailerBranch::class,'retailer_branch_id');
    }

}
