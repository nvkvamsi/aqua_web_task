@extends('admin.layouts.app')

@section('content')
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Permission</li>
        </ol>
    </nav>

   
    <div class="ms-auto">
        <a href="{{ route('permissions.create') }}" class="btn btn-primary radius-30 mt-2 mt-lg-0">
            <i class="bx bxs-plus-square"></i>Add New Permission
        </a>
    </div>
    @include('layouts.error')
     
      
    @php 
        $permissions = [
            ['action' => 'edit', 'name' => 'can_edit_permission'],
            ['action' => 'delete', 'name' => 'can_delete_permission']
           
        ];
        
        
        $availableActions = \App\Repeated\Helpers::getAvailableActions($permissions);
        
       
        $headers = [
            ['label' => 'Name', 'key' => 'name', 'sort_by' => true],
           
            ['label' => 'Actions', 'key' => 'actions', 'sort_by' => false,'action'=>$availableActions],
        ];
        $sort_by = ''; 
        $api_url='permissions';
    @endphp
    @include('admin.components.data-table', ['headers' => $headers, 'ap_url' => $api_url,'sort_by'=>$sort_by])




</div>

@endsection

