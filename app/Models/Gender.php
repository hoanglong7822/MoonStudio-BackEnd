<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gender extends Model
{
    use HasFactory;

    // Mối quan hệ một-nhiều với sản phẩm
    public function products()
    {
        return $this->hasMany(Product::class);
    }
}
