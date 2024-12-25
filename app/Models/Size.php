<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Size extends Model
{
    use HasFactory;

    // Tên bảng (mặc định là 'sizes')
    protected $table = 'sizes';

    // Tên cột khóa chính
    protected $primaryKey = 'size_id';

    // Nếu khóa chính không phải là kiểu số tự tăng (auto-increment), bật `incrementing` = false
    public $incrementing = true; // Vì size_id là auto-increment, giữ nguyên true

    // Loại khóa chính (nếu không phải số thì đổi sang 'string')
    protected $keyType = 'int';

    // Các cột được phép điền dữ liệu
    protected $fillable = [
        'size_name',
    ];

    // Quan hệ với bảng Product
    public function products()
    {
        return $this->belongsToMany(Product::class, 'product_size', 'size_id', 'product_id');
    }
}
