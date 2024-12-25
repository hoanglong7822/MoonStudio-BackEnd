<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            // Tạo cột 'product_id' làm khóa chính, tự động tăng
            $table->id('product_id'); // Đây sẽ là cột khóa chính, kiểu tự động tăng

            // Cột 'name' (tên sản phẩm)
            $table->string('name');

            // Cột 'price' (giá sản phẩm)
            $table->decimal('price', 8, 2);  // Sử dụng decimal để lưu giá với độ chính xác 2 chữ số sau dấu phẩy

            // Cột 'image_url' (đường dẫn hình ảnh)
            $table->string('image_url');

            // Cột 'quantity' (số lượng sản phẩm)
            $table->integer('quantity');

            // Thời gian tạo và cập nhật
            $table->timestamps(); // Tự động thêm các cột 'created_at' và 'updated_at'
        });
    }

    public function down()
    {
        Schema::dropIfExists('products');
    }
}
