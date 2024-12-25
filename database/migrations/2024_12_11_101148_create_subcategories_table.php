<?php
// File: database/migrations/YYYY_MM_DD_create_subcategories_table.php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSubcategoriesTable extends Migration
{
    public function up()
    {
        Schema::create('subcategories', function (Blueprint $table) {
            $table->bigIncrements('id'); // Khóa chính là id (tự động tăng)
            $table->string('name');
            $table->unsignedBigInteger('category_id'); // Khóa ngoại category_id
            $table->foreign('category_id')->references('category_id')->on('categories')->onDelete('cascade'); // Liên kết với categories
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('subcategories');
    }
}


