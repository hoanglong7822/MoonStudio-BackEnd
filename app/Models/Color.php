<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Color extends Model
{
    protected $primaryKey = 'color_id'; // Nếu bạn sử dụng khóa chính là color_id

    // Mối quan hệ nhiều-nhiều với bảng products
    public function products()
    {
        return $this->belongsToMany(Product::class, 'product_color', 'color_id', 'product_id');
    }
}