@extends('admin.layouts.app')

@section('content')
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Contacts</li>
        </ol>
    </nav>


    @include('layouts.error')
    @php 
        $headers = [
            ['label' => 'Name', 'key' => 'name', 'sort_by' => true],
            ['label' => 'Email', 'key' => 'email', 'sort_by' => true],
            ['label' => 'Phone Number', 'key' => 'phone_number', 'sort_by' => true],
            ['label' => 'Subject', 'key' => 'subject', 'sort_by' => true],
            ['label' => 'Comment', 'key' => 'comment', 'sort_by' => false], // Assuming you don't want to sort by 'comment'
        ];

        $sort_by = ''; 
        $api_url='contacts';
    @endphp
    @include('admin.components.data-table', ['headers' => $headers, 'ap_url' => $api_url,'sort_by'=>$sort_by])
</div>

@endsection


