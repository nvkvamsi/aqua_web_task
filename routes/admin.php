<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GigController;
use App\Http\Controllers\CareerController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ExcelController;
use App\Http\Controllers\SettingsApplicationController;
use App\Http\Controllers\UserController;
// Add more routes as needed

// Route::view('/signup', 'admin.auth.signup')->name('ui.signup');
Route::middleware(['guest'])->group(function () {
    Route::view('/login', 'admin.auth.login')->name('login');
});

// Route::post('signup', [AuthController::class, 'signup'])->name('admin_signup');
Route::post('login', [AuthController::class, 'login'])->name('admin_login');
Route::post('logout', [AuthController::class, 'logout'])->name('admin.logout');
Route::middleware(['auth'])->group(function () {
    Route::view('/dashboard', 'admin.pages.dashboard')->name('dashboard');
    Route::view('/list', 'admin.pages.list')->name('list');
    Route::resource('gigs', GigController::class)->names([
        'index' => 'gigs.index',
        'create' => 'gigs.create',
        'store' => 'gigs.store',
        'show' => 'gigs.show',
        'edit' => 'gigs.edit',
        'update' => 'gigs.update',
        'destroy' => 'gigs.destroy',
    ]);
    Route::resource('users', UserController::class)->names([
        'index' => 'users.index',
        'create' => 'users.create',
        'store' => 'users.store',
        'show' => 'users.show',
        'edit' => 'users.edit',
        'update' => 'users.update',
        'destroy' => 'users.destroy',
    ]);
    Route::resource('roles', RoleController::class)->names([
        'index' => 'roles.index',
        'create' => 'roles.create',
        'store' => 'roles.store',
        'show' => 'roles.show',
        'edit' => 'roles.edit',
        'update' => 'roles.update',
        'destroy' => 'roles.destroy',
    ]);
    Route::resource('permissions', PermissionController::class)->names([
        'index' => 'permissions.index',
        'create' => 'permissions.create',
        'store' => 'permissions.store',
        'show' => 'permissions.show',
        'edit' => 'permissions.edit',
        'update' => 'permissions.update',
        'destroy' => 'permissions.destroy',
    ]);
    Route::resource('careers', CareerController::class)->names([
        'index' => 'careers.index',
       
        
    ]);
    Route::resource('contacts', ContactController::class)->names([
        'index' => 'contacts.index',
        
    ]);
    Route::resource('settings', SettingsApplicationController::class)->names([
        'index' => 'settings.index',
        'create' => 'settings.create',
        'store' => 'settings.store',
        'show' => 'settings.show',
        'edit' => 'settings.edit',
        'update' => 'settings.update',
        'destroy' => 'settings.destroy',
    ]);
    Route::get('export-gigs', [ExcelController::class, 'exportGigs']);
    Route::post('import-gigs', [ExcelController::class, 'importGigs'])->name('import_gigs');
    Route::get('career_order_data', [CareerController::class, 'order_data'])->name('career_order_data');
    Route::get('contact_order_data', [ContactController::class, 'order_data'])->name('contact_order_data');
});


    