@php

$elements = 
[
    [
        'method' => 'input',
        'label' => 'Enter Title',
        'key' => 'title',
        'place_holder' => 'Enter Title',
        'type' => 'text',
        'required' => true,
        'styles_class'=>'col-md-6'
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
        ],
        'styles_class'=>'col-md-6'
    ],
    [
        'method' => 'input',
        'label' => 'Enter Location',
        'key' => 'location',
        'place_holder' => 'Enter Location',
        'type' => 'text',
        'required' => true, // Since 'location' can be nullable
        'styles_class'=>'col-md-6'
    ],
    [
        'method' => 'input',
        'label' => 'Enter Company Name',
        'key' => 'company_name',
        'place_holder' => 'Enter Company Name',
        'type' => 'text',
        'required' => true,
        'styles_class'=>'col-md-6'
    ],

    [
        'method' => 'input',
        'label' => 'Enter Salary',
        'key' => 'salary',
        'place_holder' => 'Enter Salary',
        'type' => 'text',
        'required' => false,
        'styles_class'=>'col-md-6'
    ],
    [
        'method' => 'input',
        'label' => 'Enter Internal Link',
        'key' => 'internal_link',
        'place_holder' => 'Enter Internal Link',
        'type' => 'text',
        'required' => false,
        'styles_class'=>'col-md-6'
    ],
    [
        'method' => 'input',
        'label' => 'Enter Experience',
        'key' => 'experience',
        'place_holder' => 'Enter Experience',
        'type' => 'text',
        'required' => false,
        'styles_class'=>'col-md-6'
    ],
    [
        'method' => 'input',
        'label' => 'Enter Technology',
        'key' => 'technology',
        'place_holder' => 'Enter Technology',
        'type' => 'text',
        'required' => true,
        'styles_class'=>'col-md-6'
    ],
    [
        'method' => 'text-area',
        'label' => 'Enter Address',
        'key' => 'address',
        'place_holder' => 'Enter Address',
        'type' => 'text',
        'required' => false,
        'styles_class'=>'col-md-6'
    ],
    [
        'method' => 'input',
        'label' => 'Enter state',
        'key' => 'state',
        'place_holder' => 'Enter state',
        'type' => 'text',
        'required' => false,
        'styles_class'=>'col-md-6'
    ],
    [
        'method' => 'input',
        'label' => 'Enter country',
        'key' => 'country',
        'place_holder' => 'Enter country',
        'type' => 'text',
        'required' => false,
        'styles_class'=>'col-md-6'
    ],
    [
        'method' => 'input',
        'label' => 'Enter city',
        'key' => 'city',
        'place_holder' => 'Enter City',
        'type' => 'text',
        'required' => false,
        'styles_class'=>'col-md-6'
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
        'method' => 'text-area',
        'label' => 'Enter Short Description',
        'key' => 'short_description',
        'place_holder' => 'Enter Short Description',
        'type' => 'text',
        'required' => true,
        
    ],
    [
        'method' => 'text-area',
        'label' => 'Enter responsibilities',
        'key' => 'responsibilities',
        'place_holder' => 'Enter Responsibilities',
        'type' => 'text',
        'required' => false,
        
    ],
];

@endphp

@include('admin.components.form-elements', ['elements' => $elements,'data'=>$data])
                                
