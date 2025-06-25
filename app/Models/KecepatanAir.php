<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KecepatanAir extends Model
{
    use HasFactory;

    protected $table = 'kecepatan_air';
    public $timestamps = false;

    protected $fillable = [
        'kecepatan',
        'keterangan',
        'waktu'
    ];
}
