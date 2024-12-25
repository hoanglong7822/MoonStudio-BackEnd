<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $primaryKey = 'order_id';

    protected $fillable = [
        'name',
        'phone',
        'city',
        'district',
        'ward',
        'address',
        'address_type',
        'payment_method',
        'status', 'total', 'payment_date'
    ];

    public function orderDetails()
    {
        return $this->hasMany(OrderDetail::class, 'order_id');
    }
}
