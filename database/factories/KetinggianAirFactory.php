<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\KetinggianAir>
 */
class KetinggianAirFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $ntu = $this->faker->randomFloat(2, 0, 200);

        if ($ntu < 5) {
            $status = 'Sangat Jernih';
        } elseif ($ntu < 25) {
            $status = 'Jernih';
        } elseif ($ntu < 100) {
            $status = 'Keruh';
        } else {
            $status = 'Sangat Keruh';
        }

        return [
            'nilai' => $ntu,
            'waktu' => $this->faker->dateTimeBetween('-1 days', 'now'),
            'keterangan' => $status,
        ];
    }
}
