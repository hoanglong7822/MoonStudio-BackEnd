<?php

// database/migrations/xxxx_xx_xx_xxxxxx_add_fields_to_orders_table.php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldsToOrdersTable extends Migration
{
    public function up()
    {
        Schema::table('orders', function (Blueprint $table) {
            $table->string('name'); // Tên người đặt hàng
            $table->string('phone'); // Số điện thoại
            $table->string('city'); // Thành phố
            $table->string('district'); // Quận/Huyện
            $table->string('ward'); // Phường/Xã
            $table->string('address'); // Địa chỉ chi tiết
            $table->string('address_type'); // Loại địa chỉ (ví dụ: giao hàng, hóa đơn,...)
            $table->string('payment_method'); // Phương thức thanh toán (ví dụ: COD, online,...)
        });
    }

    public function down()
    {
        Schema::table('orders', function (Blueprint $table) {
            $table->dropColumn('name', 'phone', 'city', 'district', 'ward', 'address', 'address_type', 'payment_method');
        });
    }
}

