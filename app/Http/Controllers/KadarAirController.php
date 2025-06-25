<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\KadarAir;
use Carbon\Carbon;
use Illuminate\Support\Facades\Response;

class KadarAirController extends Controller
{
    public function index()
    {
        $data = KadarAir::select('nilai', 'waktu', 'keterangan')->get();

        $data->transform(function ($item) {
            $item->formatted_waktu = Carbon::parse($item->waktu)->translatedFormat('d F Y H:i:s');
            return $item;
        });

        return view('kadar', compact('data'));
    }

    public function download(Request $request)
    {
        $request->validate([
            'start_date' => 'required|date',
            'end_date'   => 'required|date|after_or_equal:start_date',
        ]);

        $start = Carbon::parse($request->start_date)->startOfDay();
        $end = Carbon::parse($request->end_date)->endOfDay();

        $data = KadarAir::whereBetween('waktu', [$start, $end])->get();

        $filename = 'KadarAir_' . now()->format('dmY_His') . '.csv';

        $headers = [
            "Content-type"        => "text/csv",
            "Content-Disposition" => "attachment; filename=$filename",
            "Pragma"              => "no-cache",
            "Cache-Control"       => "must-revalidate",
            "Expires"             => "0"
        ];

        $callback = function() use ($data) {
            $file = fopen('php://output', 'w');
            fputcsv($file, ['No', 'Nilai', 'Waktu', 'Keterangan']);

            foreach ($data as $i => $row) {
                fputcsv($file, [
                    $i + 1,
                    $row->nilai,
                    $row->waktu
                ]);
            }
            fclose($file);
        };

        return Response::stream($callback, 200, $headers);
    }
}
