<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Models\Permission;

class PermissionController extends Controller
{
    public function index(Request $request)
    {
        if (!Auth::user()->hasAnyPermission(['can_view_permission'])) {
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
            $data = Permission::query();
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
        return view('admin.pages.permissions.index');
    
    
    }

    public function create()
    {
        if (!Auth::user()->hasAnyPermission(['can_create_permission'])) {
           return view('errors.access_denied');
        }
        return view('admin.pages.permissions.create');
    }

    public function store(Request $request)
    {
        if (!Auth::user()->hasAnyPermission(['can_create_permission'])) {
           return view('errors.access_denied');
        }
        $rules = [
            'name' => 'required|string|unique:permissions,name',
        ];
        $customMessages = [
            
            
        ];
        $details =  $request->validate($rules, $customMessages);
        Permission::create($details);

        return redirect()->route('permissions.index')->with('success', 'Permission created successfully.');
    }

    public function edit(Permission $permission)
    {
        if (!Auth::user()->hasAnyPermission(['can_update_permission'])) {
           return view('errors.access_denied');
        }
        return view('admin.pages.permissions.edit', compact('permission'));
    }

    public function update(Request $request, Permission $permission)
    {
        if (!Auth::user()->hasAnyPermission(['can_update_permission'])) {
           return view('errors.access_denied');
        }
        $rules = [
            'name' => 'required|string',
        ];
        $customMessages = [
            
            
        ];
        $details =  $request->validate($rules, $customMessages);
       
        $permission->update($details);

        return redirect()->route('permissions.index')->with('success', 'Permission updated successfully.');
    }

    public function destroy(Permission $permission)
    {
        if (!Auth::user()->hasAnyPermission(['can_delete_permission'])) {
           return view('errors.access_denied');
        }
        $permission->delete();

        return redirect()->route('permissions.index')->with('success', 'Permission deleted successfully.');
    }
}
