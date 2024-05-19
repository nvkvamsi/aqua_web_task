
@extends('admin.layouts.app')

@section('content')
   <!--breadcrumb-->
    <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
        <div class="breadcrumb-title pe-3">Add a new Gig</div>
        <div class="ps-3">
           
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb mb-0 p-0">
                    <li class="breadcrumb-item"><a href="{{ route('gigs.index') }}">Gigs</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Create</li>
                </ol>
            </nav>
        </div>
        
    </div>
    

    <!--end breadcrumb-->
    <div class="card">
        <div class="card-body p-4">
            <h5 class="card-title">Add a new Gig</h5>
            <hr/>
            @include('layouts.error')
            <div class="form-body mt-4">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="border border-3 p-4 rounded">
                            <form action="{{ route('gigs.store') }}" method="POST">
                                @csrf
                                @php
                                    $elements = [
                                                    [
                                                        'method' => 'input',
                                                        'label' => 'Enter Title',
                                                        'key' => 'title',
                                                        'place_holder' => 'Enter Title',
                                                        'type' => 'text',
                                                        'required' => true,
                                                    ],
                                                    [
                                                        'method' => 'text-area',
                                                        'label' => 'Enter Description',
                                                        'key' => 'description',
                                                        'place_holder' => 'Enter Description',
                                                        'editor-type'=>'ckeditor',
                                                        'rows-size'=>10,
                                                        'cols-size'=>50,
                                                        'required' => true,
                                                    ],
                                                    [
                                                        'method' => 'input',
                                                        'label' => 'Enter Location',
                                                        'key' => 'location',
                                                        'place_holder' => 'Enter Location',
                                                        'type' => 'text',
                                                        'required' => true, // Since 'location' can be nullable
                                                    ],
                                                    [
                                                        'method' => 'drop-down',
                                                        'label' => 'Enter Job Type',
                                                        'key' => 'job_type',
                                                        'place_holder' => 'Enter Job Type',
                                                        'type' => 'text',
                                                        'required' => true,
                                                        'data' => [
                                                            'full-time' => 'Full time',
                                                            'contract' => 'Contract',
                                                            'part-time' => 'Part time'
                                                        ]
                                                    ],
                                                    [
                                                        'method' => 'input',
                                                        'label' => 'Enter Company Name',
                                                        'key' => 'company_name',
                                                        'place_holder' => 'Enter Company Name',
                                                        'type' => 'text',
                                                        'required' => true,
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

