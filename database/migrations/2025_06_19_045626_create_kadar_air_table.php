<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('kadar_air', function (Blueprint $table) {
            $table->id();
            $table->float('nilai');
            $table->string('keterangan', 255)->nullable();
            $table->timestamp('waktu')->useCurrent();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('kadar_air');
    }
};
