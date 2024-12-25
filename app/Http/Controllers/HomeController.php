<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\JsonResponse;

class HomeController extends Controller
{
    /**
     * Trả về danh sách tất cả sản phẩm.
     */
    public function index(): JsonResponse
    {
        // Lấy tất cả sản phẩm từ bảng products
        $products = Product::with(relations: ['colors', 'sizes'])
        ->take(8)->get();

        return response()->json($products);
    }
}
