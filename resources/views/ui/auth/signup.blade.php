@extends('ui.auth.app')


@section('content')
<div class="container">
    <div class="row row-cols-1 row-cols-lg-2 row-cols-xl-3">
        <div class="col mx-auto">
            <div class="card mb-0">
                <div class="card-body">
                    <div class="p-4">
                        <div class="mb-3 text-center">
                            <img src="../assets/frontend/images/logo.png" width="100%" alt="" />
                        </div>
                        <div class=" mb-4">
                        <h4 class="mb-1 pt-2">Welcome to {{ env('APP_NAME') }} ! 👋</h4>
                        
                            <p class="mb-4">Please Register and start the adventure</p>
                        </div>
                        @include('layouts.error')
                        
                        <div class="form-body">
                        
                            <form  action="{{ route('ui_signup') }}" class="mb-2" method="POST">
                                @csrf
                                @php
                                    $elements = [
                                        ['method'=>'input','label' => 'First Name', 'key' => 'name', 'place_holder' => 'Enter First Name', 'type' => 'text','required'=>false],
                                        ['method'=>'input','label' => 'Email', 'key' => 'email', 'place_holder' => 'Enter Email ID', 'type' => 'email','required'=>false],
                                        ['method'=>'input','label' => 'Mobile', 'key' => 'mobile', 'place_holder' => 'Enter Mobile', 'type' => 'tel','required'=>false],
                                        ['method'=>'input','label' => 'Password', 'key' => 'password', 'place_holder' => 'Password', 'type' => 'password','required'=>false],
                                        ['method'=>'input','label' => 'Confirm Password', 'key' => 'confirm_password', 'place_holder' => 'Confirm Password', 'type' => 'password','required'=>false],
                                    ];
                                @endphp
                                @include('admin.components.form-elements', ['elements' => $elements])
                                <button type="submit" class="btn btn-primary">Register</button>
                            </form>
                            
                        </div>
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--end row-->
</div>

@endsection

