<?php

  

namespace Database\Seeders;

  

use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use Illuminate\Database\Seeder;

use App\Models\User;

use Spatie\Permission\Models\Role;

use Spatie\Permission\Models\Permission;

use Hash;

class CreateAdminUserSeeder extends Seeder

{

    /**

     * Run the database seeds.

     *

     * @return void

     */

    public function run()

    {

        $user = User::create([
            'name' => 'Admin', 
            'email' => 'admin@gmail.com',
            'password' => Hash::make('9848022338'),
            'mobile' => '9848022338'
        ]);
        $role = Role::create(['name' => 'Admin']);
        $permissions = Permission::pluck('id','id')->all();
        $role->syncPermissions($permissions);
        $user->assignRole([$role->id]);
        $role_s = Role::create(['name' => 'Supervisor']);
        $permissions=['can_view_gig','can_view_careers'];
        $role_s->syncPermissions($permissions);
    }

}

