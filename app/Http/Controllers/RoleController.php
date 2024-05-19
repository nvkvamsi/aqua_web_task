<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Response;

use Spatie\Permission\Models\Permission;

class RoleController extends Controller
{
    public function index(Request $request)
    {
        if (!Auth::user()->hasAnyPermission(['can_view_role'])) {
           return view('errors.access_denied');
        }
        if ($request->ajax()) {
            $rules = [
                'per_page' => 'integer|in:1,5,10,25,50,100',
            ];
            $customMessages = [
                'per_page.integer' => 'The per page value must be an integer.',
                'per_page.in' => 'The per page value must be one of the following: 1, 5, 10, 25, 50, 100.',
            ];
            $details =  $request->validate($rules, $customMessages);
            $data = Role::query();
            if ($request->has('search')) {
                $data->where('name', 'like', '%' . $request->search . '%');
            }
            $per_page = $request->has('per_page') ? $details['per_page'] : 10;
            if ($request->has('sort_by') && $request->has('order')) {
                $data = $data->orderBy($request['sort_by'], $request['order']);
            } else {
                $data = $data->orderBy('id', 'desc');
            }
            
            return $data->paginate($per_page);
        }
        return view('admin.pages.roles.index');
    
    
    }

    public function create()
    {
        if (!Auth::user()->hasAnyPermission(['can_create_role'])) {
           return view('errors.access_denied');
        }
        return view('admin.pages.roles.create');
    }

    public function store(Request $request)
    {
        if (!Auth::user()->hasAnyPermission(['can_create_role'])) {
           return view('errors.access_denied');
        }
        $rules = [
            'name' => 'required|string|unique:roles,name',
        ];
        $customMessages = [
            
            
        ];
        $details =  $request->validate($rules, $customMessages);

        Role::create($details );

        return redirect()->route('roles.index')->with('success', 'Role created successfully.');
    }

    public function edit(Role $role)
    {
        if (!Auth::user()->hasAnyPermission(['can_update_role'])) {
           return view('errors.access_denied');
        }
        $role['permissions']=$role->permissions;
        $permissions=Permission::all();
        return view('admin.pages.roles.edit', compact('role','permissions'));
    }

    public function update(Request $request, Role $role)
    {
        if (!Auth::user()->hasAnyPermission(['can_update_role'])) {
           return view('errors.access_denied');
        }
        $rules = [
            'name' => 'required|string',
            'permissions.*' => 'exists:permissions,name', // Validate each item in the permissions array
        ];
        
        $customMessages = [
            'permissions.*.exists' => 'One or more of the permissions is invalid.', // Custom error message for the exists rule
        ];
        
        $details =  $request->validate($rules, $customMessages);
        $role->syncPermissions( $details['permissions']);
        $role->update($details);

        return redirect()->route('roles.index')->with('success', 'Role updated successfully.');
    }

    public function destroy(Role $role)
    {
        if (!Auth::user()->hasAnyPermission(['can_update_role'])) {
           return view('errors.access_denied');
        }
        $role->delete();

        return redirect()->route('roles.index')->with('success', 'Role deleted successfully.');
    }
}
