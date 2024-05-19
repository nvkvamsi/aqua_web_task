
@extends('admin.layouts.app')

@section('content')
   <!--breadcrumb-->
    <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
        <div class="breadcrumb-title pe-3">Add a new User</div>
        <div class="ps-3">
           
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb mb-0 p-0">
                    <li class="breadcrumb-item"><a href="{{ route('users.index') }}">Users</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Create</li>
                </ol>
            </nav>
        </div>
        
    </div>
    

    <!--end breadcrumb-->
    <div class="card">
        <div class="card-body p-4">
            <h5 class="card-title">Add a new User</h5>
            <hr/>
            @include('layouts.error')
            <div class="form-body mt-4">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="border border-3 p-4 rounded">
                            
                            <form action="{{ route('users.store') }}" method="POST">
                                @csrf
                                @php
                                    $elements = [
                                                    [
                                                        'method' => 'input',
                                                        'label' => 'Enter Name',
                                                        'key' => 'name',
                                                        'place_holder' => 'Enter Name',
                                                        'type' => 'text',
                                                        'required' => true,
                                                    ],
                                                    [
                                                        'method' => 'input',
                                                        'label' => 'Enter Email',
                                                        'key' => 'email',
                                                        'place_holder' => 'Enter Email',
                                                        'type' => 'email',
                                                        'required' => true,
                                                    ],
                                                   
                                                    [
                                                        'method' => 'input',
                                                        'label' => 'Enter Mobile',
                                                        'key' => 'mobile',
                                                        'place_holder' => 'Enter Mobile',
                                                        'type' => 'tel',
                                                        'required' => true,
                                                    ],
                                                    [
                                                        'method' => 'drop-down',
                                                        'label' => 'Select Role',
                                                        'key' => 'role_id',
                                                        'place_holder' => 'Select Role',
                                                        
                                                        'required' => true,
                                                        'data' => $roles
                                                    ],


                                            
                                        ];
                                @endphp
                               
                               

                                @include('admin.components.form-elements', ['elements' => $elements])
                                
                                <button type="submit" class="btn btn-primary">Create</button>
                            </form>
                            
                            
                        </div>
                    </div>
                    
                  
                </div><!--end row-->
            </div>
        </div>
    </div>

@endsection

