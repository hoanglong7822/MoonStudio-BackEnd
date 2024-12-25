<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id('order_id');
            // $table->unsignedBigInteger('user_id');  // Giả sử bạn có bảng users để lưu thông tin người mua
            $table->enum('status', ['pending', 'paid', 'shipped', 'delivered'])->default('pending');
            $table->decimal('total', 10, 2); // Tổng số tiền đơn hàng
            $table->timestamp('payment_date')->nullable(); // Ngày thanh toán
            $table->timestamps();

            // // Thêm foreign key nếu có
            // $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
