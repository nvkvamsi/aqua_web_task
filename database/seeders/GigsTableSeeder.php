<?php

namespace Database\Seeders;
use Faker\Factory as Faker;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Gig;
use Database\Factories\GigsFactory;


class GigsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        foreach (range(1, 100) as $index) {
            Gig::insert(
                [
                    'title' => $faker->jobTitle,
                    'description' => $faker->paragraphs(3, true),
                    'location' => $faker->city,
                    'salary' => $faker->randomNumber(5),
                    'experience' => $faker->randomElement(['0-1 years', '1-3 years', '3-5 years', '5+ years']),
                    'job_type' => $faker->randomElement(['full-time', 'part-time', 'contract']),
                    'company_name' => $faker->company,
                    'responsibilities' => $faker->paragraphs(3, true),
                    'created_by'=>1,
                    'created_at' => $faker->dateTimeBetween('-2 years', 'now'),
                    'updated_at' => $faker->dateTimeBetween('-2 years', 'now'),
                ]
            );
        }
        // Gig::factory()->count(100)->create();
    }
}
