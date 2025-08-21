<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\KetinggianAir;
use App\Models\KecepatanAir;

class DataSensorController extends Controller
{
    public function store(Request $request)
    {
        $validated = $request->validate([
            'ketinggian' => 'required|numeric',
            'kecepatan' => 'required|numeric',
        ]);

        KetinggianAir::create([
            'ketinggian' => $validated['ketinggian'],
        ]);

        KecepatanAir::create([
            'kecepatan' => $validated['kecepatan'],
        ]);

        return response()->json([
            'status' => true,
            'message' => 'Data berhasil disimpan',
            'data' => $validated
        ], 201);
    }
}
