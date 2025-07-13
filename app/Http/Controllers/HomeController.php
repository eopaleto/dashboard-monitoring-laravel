<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\KetinggianAir;
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
        $filterKetinggian = $request->query('ketinggian', '60');
        $filterKecepatan = $request->query('kecepatan', '60');

        $limitKetinggian = $this->getLimitFromFilter($filterKetinggian);
        $limitKecepatan = $this->getLimitFromFilter($filterKecepatan);

        $dataKetinggian = KetinggianAir::when($limitKetinggian, fn($q) => $q->latest('waktu')->limit($limitKetinggian))
                            ->orderBy('waktu', 'asc')->get();

        $dataKecepatan = KecepatanAir::when($limitKecepatan, fn($q) => $q->latest('waktu')->limit($limitKecepatan))
                                    ->orderBy('waktu', 'asc')->get();

        return response()->json([
            'ketinggian' => [
                'labels' => $dataKetinggian->pluck('waktu')->map(fn($w) => \Carbon\Carbon::parse($w)->format('d F H:i'))->toArray(),
                'values' => $dataKetinggian->pluck('nilai')->toArray(),
                'tooltip' => $dataKetinggian->map(fn($d) => "Nilai: {$d->nilai}, Keterangan: {$d->keterangan}")->toArray(),
                'pie'   => $dataKetinggian->groupBy('keterangan')->map->count()->toArray()
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
            default => 15
        };
    }
}
