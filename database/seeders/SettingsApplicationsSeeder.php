<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\SettingsApplication;
class SettingsApplicationsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        SettingsApplication::create([
            'name' => 'Career Notification',
            'slug' => 'career-notification',
            'status' => 'inactive',
        ]);

        SettingsApplication::create([
            'name' => 'Contact Notification',
            'slug' => 'contact-notification',
            'status' => 'inactive',
        ]);
    }
}
