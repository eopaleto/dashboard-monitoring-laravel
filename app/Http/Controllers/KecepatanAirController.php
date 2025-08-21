<?php

namespace App\Http\Controllers;

use App\Models\KetinggianAir;
use Illuminate\Http\Request;
use App\Models\KecepatanAir;
use Carbon\Carbon;
use Illuminate\Support\Facades\Response;

class KecepatanAirController extends Controller
{
    public function index()
    {
        $data = KecepatanAir::select('kecepatan', 'keterangan', 'waktu')->get();

        $data->transform(function ($item) {
            $item->formatted_waktu = Carbon::parse($item->waktu)->translatedFormat('d F Y H:i:s');
            return $item;
        });

        return view('kecepatan', compact('data'));
    }

    public function download(Request $request)
    {
        $request->validate([
            'start_date' => 'required|date',
            'end_date'   => 'required|date|after_or_equal:start_date',
        ]);

        $start = Carbon::parse($request->start_date)->startOfDay();
        $end = Carbon::parse($request->end_date)->endOfDay();

        $data = KecepatanAir::whereBetween('waktu', [$start, $end])->get();

        $filename = 'KecepatanAir_' . now()->format('Ymd_His') . '.csv';

        $headers = [
            "Content-type"        => "text/csv",
            "Content-Disposition" => "attachment; filename=$filename",
            "Pragma"              => "no-cache",
            "Cache-Control"       => "must-revalidate",
            "Expires"             => "0"
        ];

        $callback = function() use ($data) {
            $file = fopen('php://output', 'w');
            fputcsv($file, ['No', 'Kecepatan', 'Waktu', 'Keterangan']);

            foreach ($data as $i => $row) {
                fputcsv($file, [
                    $i + 1,
                    $row->kecepatan,
                    $row->keterangan,
                    $row->waktu
                ]);
            }
            fclose($file);
        };

        return Response::stream($callback, 200, $headers);
    }
}
