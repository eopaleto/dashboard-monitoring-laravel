<?php

namespace App\Livewire;

use App\Models\Device;
use Livewire\Component;

class StatusKecepatanAir extends Component
{
    public function render()
    {
        $status = Device::where('name', 'SensorKecepatanAir')->value('status');
        return view('livewire.status-ketinggian-air', ['status' => $status]);
    }
}
