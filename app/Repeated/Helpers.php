<?php

namespace App\Repeated;

use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;
use App\Models\SettingsApplication;

class Helpers
{
    public static function getSettingsApplicationStatus()
    {
        return SettingsApplication::where('slug','career-notification')->select('status')->first();
    }
    public static function getContactSettingsApplicationStatus()
    {
        return SettingsApplication::where('slug','contact-notification')->select('status')->first();
    }
    public static function getGigSettingsApplicationStatus()
    {
        return SettingsApplication::where('slug','gig-notification')->select('status')->first();
    }
    public static function getAvailableActions($permissions) {
        $availableActions = [];
        $userPermissions=Auth::user()->getPermissions();
        foreach ($permissions as $permission) {
            if (in_array($permission['name'], $userPermissions)) {
                $availableActions[] = $permission['action'];
            }
        }

        return $availableActions;
    }
}