<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            // Thêm cột category_id vào bảng products

            // Thêm khóa ngoại liên kết với bảng categories
            $table->foreign('gender_id')->references('gender_id')->on('genders')->onDelete('cascade');
        });
    }
    
    public function down()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->dropForeign(['gender_id']);
            $table->dropColumn('gender_id');
        });
    }
    
};
