<!-- resources/views/roles/edit.blade.php -->

@extends('admin.layouts.app')

@section('content')
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('roles.index') }}">Roles</a></li>
            <li class="breadcrumb-item active" aria-current="page">Edit</li>
        </ol>
    </nav>
    <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
        <div class="breadcrumb-title pe-3">Update Role</div>
        <div class="ps-3">
           
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb mb-0 p-0">
                    <li class="breadcrumb-item"><a href="{{ route('roles.index') }}">Roles</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Edit</li>
                </ol>
            </nav>
        </div>
        
    </div>
      <!--end breadcrumb-->
      <div class="card">
        <div class="card-body p-4">
            <h5 class="card-title">Update Role</h5>
            <hr/>
            @include('layouts.error')
            <div class="form-body mt-4">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="border border-3 p-4 rounded">
                            
                        <form action="{{ route('roles.update', $role->id) }}" method="POST">
                            @csrf
                            @method('PUT')

                    
                            @php
                                $elements = [
                                    ['method'=>'input','label' => 'Enter Role Name', 'key' => 'name', 'place_holder' => 'Enter Role Name', 'type' => 'text','required'=>true],
                                ];
                                $data=$role;
                            @endphp
                            @include('admin.components.form-elements', ['elements' => $elements,'data'=>$data])
                        
                            @foreach($permissions as $permission)
                                <div class="form-check form-switch"> 
                                    <input class="form-check-input" type="checkbox" role="switch" id="{{$permission->id}}" name="permissions[]" value="{{$permission->name}}"
                                    @if(collect($role['permissions'])->contains('name', $permission->name)) checked @endif>
                                    <label class="form-check-label" for="{{$permission->id}}"> {{$permission->name}}</label>          
                                </div>
                            @endforeach

                            
                                
                            
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
