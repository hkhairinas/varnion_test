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
        Schema::create('hasil_response', function (Blueprint $table) {
            $table->id();
            $table->string('nama');
            $table->string('nama_jalan');
            $table->string('jenis_kelamin');
            $table->string('email');
            $table->string('angka_kurang');
            $table->string('angka_lebih');
            $table->string('profesi');
            $table->text('plain_json');
        });

        Schema::create('jenis_kelamin', function (Blueprint $table) {
            $table->id('kode');
            $table->string('jenis_kelamin');
        });

        Schema::create('tabel_profesi', function (Blueprint $table) {
            $table->char('kode', 5);
            $table->string('nama_profesi');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('hasil_response');
        Schema::dropIfExists('jenis_kelamin');
        Schema::dropIfExists('tabel_profesi');
    }
};
