<?php

  

namespace Database\Seeders;

  

use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use Illuminate\Database\Seeder;

use Spatie\Permission\Models\Permission;

  

class PermissionTableSeeder extends Seeder

{

    /**

     * Run the database seeds.

     *

     * @return void

     */

    public function run()

    {

        $permissions = [

            
            
            'can_create_permission',
            'can_view_permission',
            'can_edit_permission',
            'can_update_permission',
            'can_delete_permission',

            'can_create_role',
            'can_view_role',
            'can_edit_role',
            'can_update_role',
            'can_delete_role',

            'can_create_contact',
            'can_view_contact',
            'can_edit_contact',
            'can_update_contact',
            'can_delete_contact',

            'can_create_gig',
            'can_approve_gig',
            'can_view_gig',
            'can_view_my_gig',
            'can_delete_gig',
            'can_update_gig',
            'can_view_all_gig',
           

            'can_create_setting',
            'can_view_setting',
            'can_edit_setting',
            'can_update_setting',
            'can_delete_setting',
            'can_toggle_setting',

            'can_view_careers',
            'can_view_my_career',
            'can_view_all_career',

            'can_create_user',
            'can_view_user',
            'can_edit_user',
            'can_update_user',
            'can_delete_user',

            'can_upload_gigs',
            'can_export_gigs'

        ];

      

        foreach ($permissions as $permission) {

             Permission::create(['name' => $permission]);

        }

    }

}

