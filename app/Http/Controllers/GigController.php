<?php

namespace App\Http\Controllers;
use App\Models\Gig;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
class GigController extends Controller
{
    public function index(Request $request)
    {
        if (!Auth::user()->hasPermission('can_view_gig')) {
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
      
            $data = Gig::query();
            // $data->where('created_by',Auth::id());
            if (!Auth::user()->hasAnyPermission(['can_view_all_gig'])) {
                $data->where('created_by',Auth::id());
            }
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
  
    public function create()
    {
        
        return view('admin.pages.gigs.create');
    }
    public function store(Request $request)
    {
        
        // Validate request
        $data=$request->validate(Gig::$rules, Gig::$messages);
        $data['created_by']=Auth::id();
       
        Gig::create($data);

        return redirect()->route('gigs.index')->with('success', 'Gig created successfully.');
    }

    public function edit(Gig $gig)
    {
        if (!Auth::user()->hasAnyPermission(['can_update_gig'])) {
           return view('errors.access_denied');
        }
        return view('admin.pages.gigs.edit', compact('gig'));
    }
    public function show(Gig $gig)
    {
        
        $url = url()->current();
        $segments = collect(explode('/', $url))->filter()->last(); // Filter to remove empty segments
        $id = Str::afterLast($segments, '/');
        $gig = Gig::where('id',$id)->first();
        return view('pages.readmore', compact('gig'));
    }
    public function update(Request $request, Gig $gig)
    {
        if (!Auth::user()->hasAnyPermission(['can_update_gig'])) {
           return view('errors.access_denied');
        }
        if ($request->has('update_status')) {
            
            $data['status'] = $request['update_status'];
            $data['updated_by']=Auth::id();
            $gig->update($data);
            return Gig::orderBy('id', 'desc')->paginate('10');
        }
        // Validate request
        $data=$request->validate(Gig::$rules, Gig::$messages);
        $data['updated_by']=Auth::id();
        $gig->update($data);

        return redirect()->route('gigs.index')->with('success', 'Gig updated successfully.');
    }
    public function destroy(Gig $gig)
    {
        if (!Auth::user()->hasAnyPermission(['can_delete_gig'])) {
           return view('errors.access_denied');
        }
        $gig->delete();

        return redirect()->route('gigs.index')->with('success', 'Gig deleted successfully.');
    }
}

