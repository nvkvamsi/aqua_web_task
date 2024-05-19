@extends('admin.layouts.app')

@section('content')
<div class="container">
    
    <nav aria-label="breadcrumb">
        <ol class="breadcrumbre">
            <li class="breadcrumb-item active" aria-current="page">Careers</li>
        </ol>
    </nav>

    
   
    @include('layouts.error')
    @php 
        $permissions = [
            ['action' => 'view', 'name' => 'can_view_careers'],
           
        ];
        
        
        $availableActions = \App\Repeated\Helpers::getAvailableActions($permissions);
        
        $headers = [
            ['label' => 'Name', 'key' => 'users.name', 'sort_by' => true],
            ['label' => 'Email', 'key' => 'users.email', 'sort_by' => true],
            ['label' => 'Phone Number', 'key' => 'users.mobile', 'sort_by' => true],
            ['label' => 'Job', 'key' => 'job.title', 'sort_by' => false],
            ['label' => 'Resume Path', 'key' => 'actions', 'sort_by' => false,'action'=>$availableActions,'special_key'=>'resume_path'],
          
        ];
        $sort_by = ''; 
        $api_url='careers';
    @endphp
    @include('admin.components.data-table', ['headers' => $headers, 'ap_url' => $api_url,'sort_by'=>$sort_by])
</div>

@endsection


