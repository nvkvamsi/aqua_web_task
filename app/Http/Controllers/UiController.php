<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use App\Models\User;
use App\Models\Gig;
use Illuminate\Support\Facades\Validator;

class UiController extends Controller
{
    public function login(Request $request)
    {
        $validatedData = $request->validate([
            'password' => 'required|string|min:6',
            'identifier' => 'required|string', // Assuming the input field is named 'identifier'
        ]);

        $loginField = filter_var($validatedData['identifier'], FILTER_VALIDATE_EMAIL) ? 'email' : 'mobile';

        $credentials = [
            $loginField => $validatedData['identifier'],
            'password' => $validatedData['password'],
        ];

        if (auth()->attempt($credentials)) {
            
            return redirect()->route('careers')->with('success', 'Welcome Back');
        } else {
     
            return redirect()->back()->with('failed', "Please enter correct credentials");
          
        }
        
    }

 
    public function signup(Request $request)
    {
        $validatedData = $request->validate([
            'mobile' => ['required', 'regex:/^[6789]\d{9}$/', 'unique:users,mobile'],
            'email' => 'required|string|unique:users,email',
            'name' => 'required|string',
            'password' => 'required|string|min:6',
            'confirm_password' => 'required|string|min:6|same:password',
            
        ]);
        $password= $request->password;
        // $password=$this->generateRandomPassword();
        $user = User::create([
            'mobile' => $request->mobile,
            'email' => $request->email,
            'name' => $request->name,
            'password' =>Hash::make($password),
        ]);
       
        if(!$user){
            return redirect()->back()->with('failed', "something went wrong! please contact support Team");
        }
        return redirect()->route('ui.login')->with('success', 'User Created Successfully.');
    }


    function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect()->route('ui.login');
    }

    public function gig(Request $request)
    {
        
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
      
            $data = Gig::query();
         
            if ($request->has('search') && !empty($request->search)) {
                $data->searchByKeywords($request->search);
            }
            if ($request->has('location') && !empty($request->location)) {
                $data->where('location', 'like', '%' . $request->location . '%');
            }
            if ($request->has('search') && !empty($request->search)) {
                $data->whereAny([
                    'title',
                    'location',
                    'description',
                    'job_type'
                ], 'LIKE', '%' . $request->search . '%');
            }
            
            $per_page = $request->has('per_page') ? $request->per_page : 10;
            if ($request->has('sort_by') && $request->has('order')) {
                $data = $data->orderBy($request['sort_by'], $request['order']);
            } else {
                $data = $data->orderBy('id', 'desc');
            }
            
            return $data->paginate($per_page);
        }
        return view('admin.pages.gigs.index');
    }
}
