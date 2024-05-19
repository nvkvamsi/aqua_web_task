
@extends('admin.layouts.app')

@section('content')
   <!--breadcrumb-->
    <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
        <div class="breadcrumb-title pe-3">Add a new Setting</div>
        <div class="ps-3">
           
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb mb-0 p-0">
                    <li class="breadcrumb-item"><a href="{{ route('settings.index') }}">Settings</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Create</li>
                </ol>
            </nav>
        </div>
        
    </div>
    

    <!--end breadcrumb-->
    <div class="card">
        <div class="card-body p-4">
            <h5 class="card-title">Add a new Setting</h5>
            <hr/>
            @include('layouts.error')
            <div class="form-body mt-4">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="border border-3 p-4 rounded">
                            <form action="{{ route('settings.store') }}" method="POST">
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
                                                

                                            
                                        ];
                                @endphp

                                @include('admin.components.form-elements', ['elements' => $elements])

                                <div class="form-check form-switch"> 
                                    <input class="form-check-input" type="checkbox" role="switch" id="1" name="status" value="active" checked>
                                    <label class="form-check-label" for="1">Status</label>          
                                </div>

                            
                                <button type="submit" class="btn btn-primary">Create</button>
                            </form>
                            
                            
                        </div>
                    </div>
                    
                  
                </div><!--end row-->
            </div>
        </div>
    </div>

@endsection

