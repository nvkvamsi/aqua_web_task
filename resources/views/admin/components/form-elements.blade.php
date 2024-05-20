
@if (!isset($elements))
    <div class="alert alert-danger" role="alert">
        Elements are required
    </div>
@else
    <div class="row">
        @foreach ($elements as $element)
            @if($element['method'] === 'input')
                <div class="@if(isset($element['styles_class']) && $element['styles_class']) {{ $element['styles_class'] }} @endif">
                    <div class="form-group mb-3" >
                        <label for="{{ $element['key'] }}">
                            {{ $element['label'] }}
                            @if(isset($element['required']) && $element['required'])
                                <span style="color: red">*</span>
                            @endif
                        </label>
                        <input 
                            class="form-control myInput {{ isset($element['editor-type']) && $element['editor-type'] === 'ckeditor' ? 'ckeditor' : '' }}" 
                            autocomplete="off" 
                            type="{{ $element['type'] }}" 
                            placeholder="{{ $element['place_holder'] }}" 
                            name="{{ $element['key'] }}" 
                            value="{{ isset($data) ? $data->{$element['key']} : '' }}" 
                            id="{{ $element['key'] }}" 
                            

                            @if(isset($element['required']) && $element['required']) required @endif
                            @if(isset($element['readonly']) && $element['readonly']) readonly @endif
                        >
                    </div>
                </div>
                @elseif($element['method'] === 'text-area')
                    <div class="@if(isset($element['styles_class']) && $element['styles_class']) {{ $element['styles_class'] }} @endif">
                
                        <div class="form-group mb-3">
                            <label for="{{ $element['key'] }}" class="form-label">
                                {{ $element['label'] }}
                                @if(isset($element['required']) && $element['required'])
                                    <span style="color: red">*</span>
                                @endif
                            </label>
                            <textarea 
                                class="form-control myInput {{ isset($element['editor-type']) && $element['editor-type'] === 'ckeditor' ? 'ckeditor' : '' }}"
                                placeholder="{{ $element['place_holder'] }}" 
                                id="{{ $element['key'] }}" 
                                name="{{ $element['key'] }}" 
                                cols="{{ $element['cols-size'] ?? '' }}" 
                                rows="{{ $element['rows-size'] ?? '' }}"
                                @if(isset($element['required']) && $element['required']) required @endif
                            > {{ isset($data) ? $data->{$element['key']} : '' }}</textarea>
                        
                        </div>
                    </div>
                @elseif($element['method'] === 'drop-down')
                    <div class="@if(isset($element['styles_class']) && $element['styles_class']) {{ $element['styles_class'] }} @endif">
                
                        <div class="form-group mb-3">
                            <label for="{{ $element['key'] }}">
                            {{ $element['place_holder'] }}
                            @if(isset($element['required']) && $element['required'])
                                <span style="color: red">*</span>
                            @endif
                            </label>
                            <select class="form-control" name="{{ $element['key'] }}" id="{{ $element['key'] }}"     
                                    @if(isset($element['required']) && $element['required']) required @endif
                            >
                                @foreach ($element['data'] as $value => $label)
                                    <option value="{{ $value }}">{{ $label }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                @endif
        @endforeach
    </div>

@endif
@php

$loadCkEditor = collect($elements)->contains(function ($element) {
        return isset($element['editor-type']) && $element['editor-type'] == 'ckeditor';
    });
@endphp
@if ($loadCkEditor)
    @push('scripts')
        <script src="{{ asset('admin/ckeditor/ckeditor.js') }}"></script>
        <script type="text/javascript">
           
                $('.ckeditor').ckeditor();
           
        </script> 
    @endpush
@endif