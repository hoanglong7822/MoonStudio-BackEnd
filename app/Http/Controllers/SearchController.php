<?php

namespace App\Http\Controllers;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\Product;
class SearchController extends Controller
{
    public $products = [1, 2, 3, 4, 5];
    public function search(Request $request):JsonResponse
    {
        $query = $request->input('name');
        if($query === null)
        {
            return response()->json([]);

        }
        $results = Product::where('Name', 'like', '%' . $query . '%')->take(5)->get();

    return response()->json($results);

    }
    public function index(): JsonResponse
    {
        // Sử dụng $this để truy cập thuộc tính của lớp
        return response()->json($this->products);
    }
}
