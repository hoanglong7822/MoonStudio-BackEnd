<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Gender;
use Illuminate\Http\JsonResponse;

class ProductController extends Controller
{
    /**
     * Trả về danh sách tất cả sản phẩm.
     */
    public function index(): JsonResponse
    {
        $products = Product::with(relations: ['colors', 'sizes'])->get();
        return response()->json($products);
    }
    public function show($product_id)
    {
        $product = Product::with('colors')->find($product_id);

        if (!$product) {
            return response()->json(['message' => 'Product not found'], 404);
        }

        return response()->json($product);
    }
    public function men(): JsonResponse
    {
        $maleProducts = Gender::where('gender_id', 1)->first()->products;        return response()->json($maleProducts);
    }
    public function Category($category_id): JsonResponse
    {
        $products = Product::where('category_id', $category_id)
                        ->with(['sizes', 'colors'])
                        ->get();
        return response()->json($products);
    }


}
