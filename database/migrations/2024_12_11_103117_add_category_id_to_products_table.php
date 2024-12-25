<?php

// File: database/migrations/YYYY_MM_DD_add_category_id_to_products_table.php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCategoryIdToProductsTable extends Migration
{
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            // Thêm cột category_id vào bảng products
            $table->unsignedBigInteger('category_id');

            // Thêm khóa ngoại liên kết với bảng categories
            $table->foreign('category_id')->references('category_id')->on('categories')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::table('products', function (Blueprint $table) {
            // Xóa khóa ngoại và cột category_id
            $table->dropForeign(['category_id']);
            $table->dropColumn('category_id');
        });
    }
}
