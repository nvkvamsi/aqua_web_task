<!-- resources/views/users/edit.blade.php -->

@extends('admin.layouts.app')

@section('content')
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('users.index') }}">Users</a></li>
            <li class="breadcrumb-item active" aria-current="page">Edit</li>
        </ol>
    </nav>
    <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
        <div class="breadcrumb-title pe-3">Update User</div>
        <div class="ps-3">
           
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb mb-0 p-0">
                    <li class="breadcrumb-item"><a href="{{ route('users.index') }}">Users</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Edit</li>
                </ol>
            </nav>
        </div>
        
    </div>
      <!--end breadcrumb-->
      <div class="card">
        <div class="card-body p-4">
            <h5 class="card-title">Update User</h5>
            <hr/>
            @include('layouts.error')
            <div class="form-body mt-4">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="border border-3 p-4 rounded">
                            
                            <form action="{{ route('users.update', $user->id) }}" method="POST">
                                @csrf
                                @method('PUT')
                                @php
                                $elements = [
                                  
                                                    [
                                                        'method' => 'input',
                                                        'label' => 'Enter Email',
                                                        'key' => 'email',
                                                        'place_holder' => 'Enter Email',
                                                        'type' => 'email',
                                                        'required' => true,
                                                        'readonly' => true,
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
                               


                                    $data=$user;
                                @endphp

                                @include('admin.components.form-elements', ['elements' => $elements,'data'=>$data])
                              
                                <label for="role_id">Select Role</label>
                                
                               
                                <select class="form-control" name="role_id" id="role_id">
                                    
                                    @foreach ($roles as $value => $label)
                                        <option value="{{ $label }}">
                                        {{$label}}</option>
                                    @endforeach
                                </select>
                                <button type="submit" class="btn btn-primary">Update</button>
                            </form>
                           
                            
                        </div>
                    </div>
                    
                  
                </div><!--end row-->
            </div>
        </div>
    </div>

</div>
@endsection
