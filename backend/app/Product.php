<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $guarded = ['id'];
    protected $filable = [
        'name','image','price','created_at','updated_at'
    ];
}
