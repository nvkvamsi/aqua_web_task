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
        $settings = [
            [
                'name' => 'Career Notification',
                'slug' => 'career-notification',
                'status' => 'inactive',
            ],
            [
                'name' => 'Contact Notification',
                'slug' => 'contact-notification',
                'status' => 'inactive',
            ],
            [
                'name' => 'Gig Notification',
                'slug' => 'gig-notification',
                'status' => 'inactive',
            ],
        ];
        
        foreach ($settings as $setting) {
            SettingsApplication::create($setting);
        }
    }
}
