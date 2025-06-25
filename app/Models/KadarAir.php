<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KadarAir extends Model
{
    use HasFactory;

    protected $table = 'kadar_air';
    public $timestamps = false;

    protected $fillable = [
        'nilai',
        'waktu',
        'keterangan'
    ];
}
