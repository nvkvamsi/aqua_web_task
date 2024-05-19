<?php

namespace App\Http\Controllers;
use App\Models\Career;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Jobs\SendEmailJob as SEJ;
use Illuminate\Support\Facades\Bus;

class CareerController extends Controller
{
    public function index(Request $request)
    {
        if (!Auth::user()->hasAnyPermission(['can_view_careers'])) {
           return view('errors.access_denied');
        }
        $details = [
            'title' => "Mail",
            'password'=>'password',
            'subject' => 'subject',
            'email' => 'vamsikrishnanarayana97@gmail.com',
            'mail_type' =>'dummyMaillableTemplate',
            'username'=> 'vamsi',
            'url'=>'oogle.com'
        ];
        Bus::dispatch(new SEJ($details));
        
        Career::where(['checked' => '0'])->update(['checked' => '1']);
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
            $data = Career::query();
            if (!Auth::user()->hasAnyPermission(['can_view_all_career'])) {
                $data->whereHas('job', function($query) {
                    $query->where('created_by', Auth::id());
                });
            }
            
            if ($request->has('search') && !empty($request->search)) {
                $data->where('title', 'like', '%' . $request->search . '%');
            }
            $per_page = $request->has('per_page') ? $request->per_page : 10;
            if ($request->has('sort_by') && $request->has('order')) {
                $data = $data->orderBy($request['sort_by'], $request['order']);
            } else {
                $data = $data->orderBy('id', 'desc');
            }
            
            return $data->with('job','users')->paginate($per_page);
        }
        return view('admin.pages.careers.index');
    }
    public function create()
    {
        return view('careers.create');
    }
    public function store(Request $request)
    {
        // Validate request
        $data=$request->validate(Career::$rules, Career::$messages);
        $data['applied_by']=Auth::id();
        
        if ($request->hasFile('resume')) {
            $resumePath = $request->file('resume')->store('resumes', 'public');
            $data['resume_path'] = $resumePath;
        }
        Career::create($data);

        return redirect()->route('careers')->with('success', 'Career created successfully.');
    }

   
   
    public function destroy(Career $career)
    {
        
        $career->delete();

        return redirect()->route('careers.index')->with('success', 'Career deleted successfully.');
    }

    public function order_data()
    {
        $new_order = Career::where(['checked' => '0'])->count();
        return response()->json([
            'success' => 1,
            'data' => ['new_order' => $new_order]
        ]);
    }
}
