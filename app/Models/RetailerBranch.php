<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RetailerBranch extends Model
{
    use SoftDeletes;

    protected $fillable = ['retailer_id', 'name', 'address', 'latitude', 'longitude', 'phone'];

    public function retailer()
    {
        return $this->belongsTo(Retailer::class);
    }

    public function prices()
    {
        return $this->hasMany(Price::class);
    }
}


