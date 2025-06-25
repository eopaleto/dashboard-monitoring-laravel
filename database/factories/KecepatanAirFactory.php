<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class KecepatanAirFactory extends Factory
{
    public function definition(): array
    {
        $kecepatan = $this->faker->randomFloat(2, 0, 100);

        if ($kecepatan == 0) {
            $status = 'Tidak Ada';
        } elseif ($kecepatan < 20) {
            $status = 'Lambat';
        } elseif ($kecepatan < 60) {
            $status = 'Normal';
        } else {
            $status = 'Deras';
        }

        return [
            'kecepatan' => $kecepatan,
            'keterangan' => $status,
            'waktu' => $this->faker->dateTimeBetween('-1 days', 'now'),
        ];
    }
}
