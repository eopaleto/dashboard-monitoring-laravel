<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\KadarAir;
use App\Models\KecepatanAir;
use Carbon\Carbon;

class HomeController extends Controller
{
    public function home()
    {
        return redirect('dashboard');
    }

    public function index()
    {
        $jumlahUser = User::where('role', 'user')->count();
        $jumlahAdmin = User::where('role', 'admin')->count();

        return view('dashboard', compact('jumlahUser', 'jumlahAdmin'));
    }

    public function getChartData(Request $request)
    {
        $filterKadar = $request->query('kadar', '60');
        $filterKecepatan = $request->query('kecepatan', '60');

        $limitKadar = $this->getLimitFromFilter($filterKadar);
        $limitKecepatan = $this->getLimitFromFilter($filterKecepatan);

        $dataKadar = KadarAir::when($limitKadar, fn($q) => $q->latest('waktu')->limit($limitKadar))
                            ->orderBy('waktu', 'asc')->get();

        $dataKecepatan = KecepatanAir::when($limitKecepatan, fn($q) => $q->latest('waktu')->limit($limitKecepatan))
                                    ->orderBy('waktu', 'asc')->get();

        return response()->json([
            'kadar' => [
                'labels' => $dataKadar->pluck('waktu')->map(fn($w) => \Carbon\Carbon::parse($w)->format('d F H:i'))->toArray(),
                'values' => $dataKadar->pluck('nilai')->toArray(),
                'tooltip' => $dataKadar->map(fn($d) => "Nilai: {$d->nilai}, Keterangan: {$d->keterangan}")->toArray(),
                'pie'   => $dataKadar->groupBy('keterangan')->map->count()->toArray()
            ],
            'kecepatan' => [
                'labels' => $dataKecepatan->pluck('waktu')->map(fn($w) => \Carbon\Carbon::parse($w)->format('d F H:i'))->toArray(),
                'values' => $dataKecepatan->pluck('kecepatan')->toArray(),
                'tooltip' => $dataKecepatan->map(fn($d) => "Nilai: {$d->kecepatan}, Keterangan: {$d->keterangan}")->toArray(),
                'pie' => $dataKecepatan->groupBy('keterangan')->map->count()->toArray(),
            ]
        ]);
    }

    private function getLimitFromFilter($filter)
    {
        return match ($filter) {
            '15' => 30,
            '30' => 60,
            '60', '1' => 120,
            'all' => null,
            default => 120
        };
    }
}
