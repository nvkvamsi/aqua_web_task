@extends('admin.layouts.app')

@section('content')
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Users</li>
        </ol>
    </nav>
   

    <div class="ms-auto">
        <a href="{{ route('users.create') }}" class="btn btn-primary radius-30 mt-2 mt-lg-0">
            <i class="bx bxs-plus-square"></i>Add New User
        </a>
    </div>
    @include('layouts.error')
    @php 
        $permissions = [
            ['action' => 'edit', 'name' => 'can_edit_user'],
            ['action' => 'delete', 'name' => 'can_delete_user']
           
        ];
        
        
        $availableActions = \App\Repeated\Helpers::getAvailableActions($permissions);
        
        $headers = [
            ['label' => 'Name', 'key' => 'name', 'sort_by' => true],
            ['label' => 'Email', 'key' => 'email', 'sort_by' => true],
            ['label' => 'Mobile', 'key' => 'mobile', 'sort_by' => false],
            ['label' => 'Actions', 'key' => 'actions', 'sort_by' => false,'action'=>$availableActions],
        ];
        $sort_by = ''; 
        $api_url='users';
    @endphp
    @include('admin.components.data-table', ['headers' => $headers, 'ap_url' => $api_url,'sort_by'=>$sort_by])
</div>
    
@endsection


