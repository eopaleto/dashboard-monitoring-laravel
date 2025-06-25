<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('kecepatan_air', function (Blueprint $table) {
            $table->id();
            $table->float('kecepatan');
            $table->string('keterangan', 255)->nullable();
            $table->timestamp('waktu');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('kecepatan_air');
    }
};
