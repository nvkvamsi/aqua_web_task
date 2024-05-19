<?php

namespace App\Http\Controllers;
use App\Models\SettingsApplication;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
class SettingsApplicationController extends Controller
{
    public function index(Request $request)
    {
        if (!Auth::user()->hasAnyPermission(['can_view_setting'])) {
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
      
            $data = SettingsApplication::query();
            // $data->where('created_by',Auth::id());
            if ($request->has('search') && !empty($request->search)) {
                $data->where('name', 'like', '%' . $request->search . '%');
            }
            if ($request->has('location') && !empty($request->location)) {
                $data->where('location', 'like', '%' . $request->location . '%');
            }
            $per_page = $request->has('per_page') ? $request->per_page : 10;
            if ($request->has('sort_by') && $request->has('order')) {
                $data = $data->orderBy($request['sort_by'], $request['order']);
            } else {
                $data = $data->orderBy('id', 'desc');
            }
            
            return $data->paginate($per_page);
        
        }
        return view('admin.pages.settings_application.index');
    }
    public function create()
    {
        if (!Auth::user()->hasAnyPermission(['can_create_setting'])) {
           return view('errors.access_denied');
        }
        return view('admin.pages.settings_application.create');
    }
    public function store(Request $request)
    {
        if (!Auth::user()->hasAnyPermission(['can_create_setting'])) {
           return view('errors.access_denied');
        }
        // Validate request
        $data=$request->validate(SettingsApplication::$rules, SettingsApplication::$messages);
        $data['created_by']=Auth::id();
       
        SettingsApplication::create($data);
 
        return redirect()->route('settings.index')->with('success', 'Setting created successfully.');
    }

    public function edit(SettingsApplication $setting)
    {
        if (!Auth::user()->hasAnyPermission(['can_update_setting'])) {
           return view('errors.access_denied');
        }
        return view('admin.pages.settings_application.edit', compact('setting'));
    }
    public function show(SettingsApplication $setting)
    {
        $url = url()->current();
        $segments = collect(explode('/', $url))->filter()->last(); // Filter to remove empty segments
        $id = Str::afterLast($segments, '/');
        $setting = SettingsApplication::where('id',$id)->first();
        return view('pages.readmore', compact('setting'));
    }
    public function update(Request $request, SettingsApplication $setting)
    {
        if (!Auth::user()->hasAnyPermission(['can_update_setting'])) {
           return view('errors.access_denied');
        }
        if ($request->has('update_status')) {
            
            $data['status'] = $request['update_status'];
            $data['updated_by']=Auth::id();
            $setting->update($data);
            return SettingsApplication::orderBy('id', 'desc')->paginate('10');
        }
        // Validate request
        $data=$request->validate(SettingsApplication::$rules, SettingsApplication::$messages);
        if (!$request->has('status')) {
            $data['status'] = 'inactive';
        }
        $data['updated_by']=Auth::id();
      
        $setting->update($data);

        return redirect()->route('settings.index')->with('success', 'Setting updated successfully.');
    }
    public function destroy(SettingsApplication $setting)
    {
        if (!Auth::user()->hasAnyPermission(['can_destroy_setting'])) {
           return view('errors.access_denied');
        }
        $setting->delete();

        return redirect()->route('settings.index')->with('success', 'Setting deleted successfully.');
    }
}

