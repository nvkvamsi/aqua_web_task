@extends('admin.layouts.app')

@section('content')
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Gigs</li>
        </ol>
    </nav>
    <div class="row mb-2">
        <div class="col-md-8">
        </div>
        @can('can_export_gigs')
        <div class="col-md-2">
            <a href="{{ url('admin/export-gigs') }}" class="btn btn-primary">Export Gigs</a>
        </div>
        @endcan
        @can('can_upload_gigs')
        <div class="col-md-2 text-right">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Bulk Upload</button>
        </div>
        @endcan
    </div>

 
 
        @can('can_view_gig')
            <div class="ms-auto">
                <a href="{{ route('gigs.create') }}" class="btn btn-primary radius-30 mt-2 mt-lg-0">
                    <i class="bx bxs-plus-square"></i>Add New Gig
                </a>
            </div>
        @endcan
  
    @include('layouts.error')
    @php
        $permissions = [
            ['action' => 'edit', 'name' => 'can_update_gig'],
            
            ['action' => 'toggle', 'name' => 'can_delete_gig'],
            ['action' => 'delete', 'name' => 'can_delete_gig']
        ];
        
        
        $availableActions = \App\Repeated\Helpers::getAvailableActions($permissions);
        $headers = [
            ['label' => 'Title', 'key' => 'title', 'sort_by' => true],
            ['label' => 'Description', 'key' => 'description', 'sort_by' => true],
            ['label' => 'Company Name', 'key' => 'company_name', 'sort_by' => false],
            ['label' => 'Location', 'key' => 'location', 'sort_by' => false],
            ['label' => 'Job Type', 'key' => 'job_type', 'sort_by' => true],
            ['label' => 'Status', 'key' => 'status', 'sort_by' => true],
            ['label' => 'Actions', 'key' => 'actions', 'sort_by' => false,
                'action'=>$availableActions],
        ];
        $sort_by = ''; 
        $api_url='gigs';
        
    @endphp
    @include('admin.components.data-table', ['headers' => $headers, 'ap_url' => $api_url,'sort_by'=>$sort_by,'permissions'=>$availableActions])
</div>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        @php
            $elements = [
                [   
                    'method'=>'input',
                    'label' => 'Choose File', 
                    'key' => 'file_input', 
                    'place_holder' => 'Choose File', 
                    'type' => 'file',
                    'required'=>true,
                    'readonly'=>false
                ],
            ];
            $modal_name='Upload File';
            $action_name='Upload';
            $route_name='import_gigs';
        @endphp   
        @include('admin.components.modal-form', ['elements' => $elements,'modal_name'=>$modal_name,'action_name'=>$action_name,'route_name'=>$route_name])

    </div>
@endsection


