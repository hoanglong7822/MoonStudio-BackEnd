<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $primaryKey = 'category_id'; // Đặt khóa chính là category_id
    protected $fillable = ['name'];

    public function subcategories()
    {
        return $this->hasMany(Subcategory::class, 'category_id');
    }
}
