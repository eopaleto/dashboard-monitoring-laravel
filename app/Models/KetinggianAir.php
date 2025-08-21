<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KetinggianAir extends Model
{
    use HasFactory;

    protected $table = 'Ketinggian_air';
    public $timestamps = false;

    protected $fillable = [
        'ketinggian',
        'waktu',
        'keterangan'
    ];
}
