<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Gig;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Gig>
 */
class GigsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Gig::class;
    public function definition(): array
    {
        return [
            'title' => $faker->jobTitle,
            'description' => $faker->paragraphs(3, true),
            'location' => $faker->city,
            'salary' => $faker->randomNumber(5),
            'experience' => $faker->randomElement(['0-1 years', '1-3 years', '3-5 years', '5+ years']),
            'job_type' => $faker->randomElement(['full-time', 'part-time', 'contract']),
            'company_name' => $faker->company,
            'responsibilities' => $faker->paragraphs(3, true),
            'created_at' => $faker->dateTimeBetween('-2 years', 'now'),
            'updated_at' => $faker->dateTimeBetween('-2 years', 'now'),
        ];
    }
}
