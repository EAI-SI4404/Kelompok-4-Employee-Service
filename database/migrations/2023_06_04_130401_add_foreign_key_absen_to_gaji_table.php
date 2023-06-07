<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('gaji_harian', function (Blueprint $table) {
            $table->unsignedBigInteger('id_absen')->after('id');
            $table->foreign('id_absen')->references('id')->on('absen');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('gaji_harian', function (Blueprint $table) {
            $table->dropForeign('gaji_harian_id_absen_foreign');
            $table->dropColumn('id_absen');
        });
    }
};
