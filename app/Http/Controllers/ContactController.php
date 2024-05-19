<?php

namespace App\Http\Controllers;
use App\Models\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
class ContactController extends Controller
{
    public function index(Request $request)
    {
        if (!Auth::user()->hasAnyPermission(['can_view_contact'])) {
           return view('errors.access_denied');
        }
        Contact::where(['checked' => '0'])->update(['checked' => '1']);
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
            $data = Contact::query();
            // $data->where('created_by',Auth::id());
            if ($request->has('search') && !empty($request->search)) {
                $data->where('title', 'like', '%' . $request->search . '%');
            }
            $per_page = $request->has('per_page') ? $request->per_page : 10;
            if ($request->has('sort_by') && $request->has('order')) {
                $data = $data->orderBy($request['sort_by'], $request['order']);
            } else {
                $data = $data->orderBy('id', 'desc');
            }
            
            return $data->paginate($per_page);
        }
        return view('admin.pages.contacts.index');
    }
    public function create()
    {
       
    }
    public function store(Request $request)
    {
        // Validate request
        $data=$request->validate(Contact::$rules, Contact::$messages);
        $data['created_by']=Auth::id();
        Contact::create($data);

        return redirect()->route('contact-us')->with('success', 'Contact created successfully.');
    }

    public function edit(Contact $contact)
    {
        return view('contacts.edit', compact('contact'));
    }
   
    public function destroy(Contact $contact)
    {
        $contact->delete();

        return redirect()->route('contacts.index')->with('success', 'Contact deleted successfully.');
    }
    public function order_data()
    {
        $new_order = Contact::where(['checked' => '0'])->count();
        return response()->json([
            'success' => 1,
            'data' => ['new_order' => $new_order]
        ]);
    }
}
