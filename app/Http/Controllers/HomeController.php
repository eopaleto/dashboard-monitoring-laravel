<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\KetinggianAir;
use App\Models\KecepatanAir;
use App\Models\Device;
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
        $sensor1 = Device::where('name', 'SensorKetinggianAir')->first();
        $sensor2 = Device::where('name', 'SensorKecepatanAir')->first();

        return view('dashboard', compact('jumlahUser', 'jumlahAdmin', 'sensor1', 'sensor2'));
    }

    public function getSensorData(Request $request)
    {
        try {
            $response = [
                'status' => true,
                'message' => 'Data berhasil diambil',
            ];

            if ($request->has('ketinggian')) {
                $ketinggianParam = $request->query('ketinggian');
                $ketinggianLimit = $this->getFilterLimit($ketinggianParam);

                $ketinggianQuery = KetinggianAir::query();

                $ketinggianData = $ketinggianLimit !== null
                    ? $ketinggianQuery->latest('id')->limit($ketinggianLimit)->get()->sortBy('id')->values()
                    : $ketinggianQuery->orderBy('id', 'asc')->get();

                $response['ketinggian'] = [
                    'labels'   => $ketinggianData->pluck('waktu')->map(fn($w) => Carbon::parse($w)->format('d F H:i'))->toArray(),
                    'values'   => $ketinggianData->pluck('ketinggian')->toArray(),
                    'tooltip'  => $ketinggianData->map(fn($d) => "Nilai: {$d->ketinggian}, Keterangan: {$d->keterangan}")->toArray(),
                    'pie'      => $ketinggianData->groupBy('keterangan')->map->count()->toArray(),
                    'last_id'  => $ketinggianData->last()?->id ?? 0,
                ];
            }

            if ($request->has('kecepatan')) {
                $kecepatanParam = $request->query('kecepatan');
                $kecepatanLimit = $this->getFilterLimit($kecepatanParam);

                $kecepatanQuery = KecepatanAir::query();

                $kecepatanData = $kecepatanLimit !== null
                    ? $kecepatanQuery->latest('id')->limit($kecepatanLimit)->get()->sortBy('id')->values()
                    : $kecepatanQuery->orderBy('id', 'asc')->get();

                $response['kecepatan'] = [
                    'labels'   => $kecepatanData->pluck('waktu')->map(fn($w) => Carbon::parse($w)->format('d F H:i'))->toArray(),
                    'values'   => $kecepatanData->pluck('kecepatan')->toArray(),
                    'tooltip'  => $kecepatanData->map(fn($d) => "Nilai: {$d->kecepatan}, Keterangan: {$d->keterangan}")->toArray(),
                    'pie'      => $kecepatanData->groupBy('keterangan')->map->count()->toArray(),
                    'last_id'  => $kecepatanData->last()?->id ?? 0,
                ];
            }

            if (!$request->has('ketinggian') && !$request->has('kecepatan')) {
                $defaultLimit = $this->getFilterLimit('15');

                $ketinggianData = KetinggianAir::latest('waktu')->limit($defaultLimit)->orderBy('waktu', 'asc')->get();
                $kecepatanData  = KecepatanAir::latest('waktu')->limit($defaultLimit)->orderBy('waktu', 'asc')->get();

                $response['ketinggian'] = [
                    'labels'   => $ketinggianData->pluck('waktu')->map(fn($w) => Carbon::parse($w)->format('d F H:i'))->toArray(),
                    'values'   => $ketinggianData->pluck('ketinggian')->toArray(),
                    'tooltip'  => $ketinggianData->map(fn($d) => "Nilai: {$d->ketinggian}, Keterangan: {$d->keterangan}")->toArray(),
                    'pie'      => $ketinggianData->groupBy('keterangan')->map->count()->toArray(),
                    'last_id'  => $ketinggianData->last()?->id ?? 0,
                ];

                $response['kecepatan'] = [
                    'labels'   => $kecepatanData->pluck('waktu')->map(fn($w) => Carbon::parse($w)->format('d F H:i'))->toArray(),
                    'values'   => $kecepatanData->pluck('kecepatan')->toArray(),
                    'tooltip'  => $kecepatanData->map(fn($d) => "Nilai: {$d->kecepatan}, Keterangan: {$d->keterangan}")->toArray(),
                    'pie'      => $kecepatanData->groupBy('keterangan')->map->count()->toArray(),
                    'last_id'  => $kecepatanData->last()?->id ?? 0,
                ];
            }

            return response()->json($response);
        } catch (\Throwable $e) {
            return response()->json([
                'status' => false,
                'message' => 'Terjadi kesalahan saat mengambil data: ' . $e->getMessage()
            ], 500);
        }
    }

    private function getFilterLimit($param)
    {
        return match ($param) {
            '15' => 15,
            '30' => 30,
            '60' => 60,
            'all' => null,
            default => 15
        };
    }
}
