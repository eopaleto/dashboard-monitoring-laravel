<?php

namespace App\Livewire;

use App\Models\Device;
use Livewire\Component;

class StatusKetinggianAir extends Component
{
    public function render()
    {
        $status = Device::where('name', 'SensorKetinggianAir')->value('status');
        return view('livewire.status-ketinggian-air', ['status' => $status]);
    }
}
