<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use DB;
use Illuminate\Support\Facades\Log;
use Hash;
use Spatie\Permission\Models\Role;
class UserController extends Controller
{
    public function index(Request $request)
    {
        if (!Auth::user()->hasAnyPermission(['can_view_user'])) {
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

            // Use the Validator facade to validate the request
            $details = Validator::make($request->all(), $rules, $customMessages);

            if ($details->fails()) {
                return response()->json(['errors' => $details->errors()], 422);
            }
            
            $data = User::query();
            
            $per_page = $request->has('per_page') ? $request->per_page : 10;
            if ($request->has('sort_by') && $request->has('order')) {
                $data = $data->orderBy($request['sort_by'], $request['order']);
            } else {
                $data = $data->orderBy('id', 'desc');
            }
            
            return $data->paginate($per_page);
        }
        return view('admin.pages.users.index');
    }
  
    public function create()
    {
        if (!Auth::user()->hasAnyPermission(['can_create_user'])) {
           return view('errors.access_denied');
        }
        $roles= $this->getRoles();
        return view('admin.pages.users.create',compact('roles'));
    }
    public function store(Request $request)
    {
        if (!Auth::user()->hasAnyPermission(['can_create_user'])) {
           return view('errors.access_denied');
        }
        // Validate request
        $data = $request->validate([
            'mobile' => ['required', 'regex:/^[6789]\d{9}$/', 'unique:users,mobile'],
            'email' => 'required|string|unique:users,email',
            'name' => 'required|string',
            'role_id' => 'required|numeric|exists:roles,id',
            
        ]);
        $data['password']=Hash::make($data['mobile']);
        $data['created_by']=Auth::id();
       
       
        $user=User::create($data);
        $role = Role::find($data['role_id']);
        $user->assignRole([$role->name]);
        return redirect()->route('users.index')->with('success', 'User created successfully.');
    }

    public function edit(User $user)
    {
        if (!Auth::user()->hasAnyPermission(['can_update_user'])) {
           return view('errors.access_denied');
        }
        $roles= $this->getRoles();
        
        return view('admin.pages.users.edit', compact('user','roles'));
    }
    
    
    public function update(Request $request, User $user)
    {
        if (!Auth::user()->hasAnyPermission(['can_update_user'])) {
           return view('errors.access_denied');
        }
        $data = $request->validate([
            
            'email' => 'required|string|exists:users,email',
           
            'role_id' => 'required|numeric|exists:roles,id',
            
        ]);
        $user = User::where('email', $data['email'])->firstOrFail(); // Retrieve the user model
        $role = Role::find($data['role_id']);
        $user->syncRoles([$role->name]);
      

        return redirect()->route('users.index')->with('success', 'User updated successfully.');
    }
    public function destroy(User $user)
    {
        if (!Auth::user()->hasAnyPermission(['can_delete_user'])) {
           return view('errors.access_denied');
        }
        $user->delete();

        return redirect()->route('users.index')->with('success', 'User deleted successfully.');
    }

    private function getRoles(){
        $data=Role::select('id','name')->get();
        $roles = [];
        foreach (json_decode($data, true) as $item) {
            $roles[$item['id']] = $item['name'];
        }
        return $roles;
    }
}

