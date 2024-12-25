<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $primaryKey = 'product_id';
    public $incrementing = true;

    protected $fillable = ['name', 'price', 'image_url', 'quantity','category_id'];
    public function colors()
    {
        return $this->belongsToMany(Color::class, 'product_color', 'product_id', 'color_id');
    }
    public function sizes()
    {
        return $this->belongsToMany(Size::class, 'product_size', 'product_id', 'size_id');
    }
    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }
    public function gender()
    {
        return $this->belongsTo(Gender::class);
    }
    public function orderDetails()
{
    return $this->hasMany(OrderDetail::class, 'product_id');
}
}
