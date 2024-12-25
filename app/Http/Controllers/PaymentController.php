<?php
// app/Http/Controllers/PaymentController.php

namespace App\Http\Controllers;
use Carbon\Carbon;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderDetail;
class PaymentController extends Controller
{
    public function processPayment(Request $request)
    {
        $order = Order::create([
            'name' => $request->name,
            'phone' => $request->phone,
            'city' => $request->city,
            'district' => $request->district,
            'ward' => $request->ward,
            'address' => $request->address,
            'address_type' => $request->addressType,
            'payment_method' => $request->paymentMethod,
            'total' => $request->total, 
        ]);
        $order_id = Carbon::now()->format('YmdHis');
        // foreach ($request->cart as $cartItem) {
        //     OrderDetail::create([
        //         'order_id' => $order->id, 
        //         'product_id' => $cartItem['product_id'], 
        //         'quantity' => $cartItem['productInCart'], 
        //         'price' => $cartItem['price'], 
        //     ]);
        // }
        return response()->json([
            'message' => 'Thanh toán thành công',
            'order' => $order,
            'order_id' => $order_id, 

        ]);
    }
}
