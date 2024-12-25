<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductSizeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_size', function (Blueprint $table) {
            $table->id(); // ID auto-increment cho bảng trung gian
            $table->unsignedBigInteger('product_id'); // Khóa ngoại từ bảng products
            $table->unsignedBigInteger('size_id');    // Khóa ngoại từ bảng sizes

            $table->foreign('product_id')->references('product_id')->on('products')->onDelete('cascade');
            $table->foreign('size_id')->references('size_id')->on('sizes')->onDelete('cascade');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_size');
    }
}
