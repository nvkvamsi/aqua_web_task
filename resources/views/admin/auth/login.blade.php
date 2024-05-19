@extends('admin.layouts.app')


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
                        
                            <p class="mb-4">Please sign-in to your account and start the adventure</p>
                        </div>
                        @include('layouts.error')
                        <div class="form-body">
                        <form action="{{ route('admin_login') }}" class="mb-2" method="POST">
                                @csrf
                                @php
                                $elements = [
                                            ['method'=>'input','label' => 'Enter EmailID or Mobile Number', 'key' => 'identifier', 'place_holder' => 'Enter EmailID or Mobile Number', 'type' => 'text','required'=>true],
                                            ['method'=>'input','label' => 'Password', 'key' => 'password', 'place_holder' => 'Enter Password', 'type' => 'password','required'=>true],
                                        ];
                                    @endphp
                                    @include('admin.components.form-elements', ['elements' => $elements])
                            
                                <div class="col-12">
                                    <div class="d-grid">
                                        <button type="submit" class="btn btn-primary">Sign in</button>
                                    </div>
                                </div>
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
