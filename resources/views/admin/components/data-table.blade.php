
@if (!isset($headers) || !isset($api_url))
    <div class="alert alert-danger" role="alert">
        Headers for the table and API URL are required.
    </div>
@else

    <div class="card">
        <div class="card-body">
            <div class="row mt-2">
            
            <div class="col-4 d-flex align-items-center">
                <label for="sel1" class="form-label me-2 col-2">Display </label>
                <select class="form-select me-2" id="sel1" name="sellist1">
                
                    <option selected >10</option>
                    <option>25</option>
                    <option>50</option>
                    <option>100</option>
                </select>
                <label for="sel1" class="form-label col-2">Results </label>
            </div>
            <div class="col-2"></div>

            <div class="col-6">
                <form id="search-form" class="d-flex">
                    <div class="input-group">
                    
                        <input type="text" id="search-input" class="form-control ps-5 radius-30" aria-label="Search for cards" placeholder="Search .."> 
                            <span class="position-absolute top-50 product-show translate-middle-y"><i class="bx bx-search"></i></span>
                    
                        <button type="button" id="search-button" class="btn btn-primary">Search</button>
                        <button type="button" id="clear-search" class="btn btn-danger">
                            clear
                        </button>
                    </div>
                </form>
            </div>
            </div>
            <div id="cards-table">
                <table class="table table-hover">
                    <thead>
                        <tr>      
                            
                
                        @foreach ($headers as $header)
                            <th @if ($header['sort_by']) data-key="{{ $header['key'] }}" onclick="toggleSort('{{ $header['key'] }}')" @endif>
                                {{ $header['label'] }}
                                @if($header['sort_by'])
                                    <i class="fas fa-sort"></i>
                                @endif
                            </th>
                        @endforeach
                        </tr>
                    </thead>
                    <tbody id="cards-table-body">
                        <!-- Cards will be dynamically loaded here -->
                    </tbody>
                </table>
            </div>


            <div class="row">
                <div class="col-3">
                    Showing <span id="from_entries"></span> to <span id="to_entries"></span> of <span id="total_entries"></span> entries
                </div>
                <div class="col-3">
                </div>
                <div class="col-6 d-flex justify-content-end" id="pagination-links">

                </div>
            </div>
            <!-- Modal for confirmation -->
            <div class="modal fade" id="confirmDeleteModal" tabindex="-1" role="dialog" aria-labelledby="confirmDeleteModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="confirmDeleteModalLabel">Confirm Delete</h5>
                            
                        </div>
                        <div class="modal-body">
                           
                            Are you sure you want to delete this Gig?
                           
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            <form id="deleteForm" method="POST" action="">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
    
 
        $(document).ready(function() {
            // Close modal when Cancel button is clicked
            $('#confirmDeleteModal .btn-secondary').click(function() {
                $('#confirmDeleteModal').modal('hide');
            });
            
            $(document).on('click', '.toggle-status', function() {
                var status = $(this).data('status');
                var id =$(this).data('id');
                $.ajax({
                    url: '{{ $api_url }}'+'/'+id,
                    type: 'PUT', // or 'POST' depending on your route setup
                    data: {
                        _token: '{{ csrf_token() }}',
                        update_status: status
                    },
                    success: function(response) {
                        // Handle success response here, if needed
                 
                        loadToTable(response);
                       
                    },
                    error: function(xhr, status, error) {
                        // Handle error response here, if needed
                        console.error(xhr.responseText);
                    }
                });
            });
            
        });
        
        function loadToTable(response){
            $('#cards-table-body').html('');
            updateTableHeaders(sort_by, sort_order);
            // Populate table with new data
            var html = '';
            $.each(response.data, function (index, data) {
                html += '<tr>';
                
                // Loop through headers to dynamically generate table columns
                @foreach($headers as $header)
                    // Check if the current header is not 'actions'
                    @if($header['key'] != 'actions')
                    html += '<td>';

                    // Check if the key is nested
                    @if(Str::contains($header['key'], '.'))
                        var nestedKeys = '{{$header["key"]}}'.split('.');
                        var nestedData = data;
                        for (var i = 0; i < nestedKeys.length; i++) {
                            nestedData = nestedData[nestedKeys[i]];
                        }
                        html += nestedData;
                    @else
                        html += data['{{$header["key"]}}'];
                    @endif

                    html += '</td>';
                        
                    @else
                        // Check if 'actions' column should be included
                        @if($header['key'] == 'actions')
                            html += '<td>';
                            @if(in_array('view', $header['action']))
                                html += '<a href="' + data['{{$header["special_key"]}}'] + '" class="btn btn-primary">View</a>';
        

                            @endif
                            @if(in_array('approve', $header['action']))
                                if(data.status=='active')
                                {
                                    html += '<button type="button" class="btn btn-danger" onclick="openConfirmDeleteModal(' + data.id + ')"><i class="ti ti-trash"></i></button>';
                           
                                } else {
                                    html += '<a href="/admin/{{ $api_url }}/' + data.id + '/edit" class="btn btn-warning"> <i class="ti ti-circle-check-filled"></i></a>';
                            
                                }
                               
                            @endif
                            // Check if 'edit' action is present
                            @if(in_array('edit', $header['action']))
                                html += '<a href="/admin/{{ $api_url }}/' + data.id + '/edit" class="btn btn-primary"> <i class="ti ti-pencil"></i></a>';
                            @endif
                            @if(in_array('toggle', $header['action']))
                                if(data.status=='active')
                                {
                                    html += '<a href="javascript:void(0);" class="btn btn-warning toggle-status" data-id="' + data.id + '" data-status="inactive"><i class="ti ti-toggle-left"></i></a>';
                                } else {
                                    html += '<a href="javascript:void(0);" class="btn btn-success toggle-status" data-id="' + data.id + '" data-status="active"><i class="ti ti-toggle-right"></i></a>';
                            
                                }
                                @endif
                            
                            // Check if 'delete' action is present
                            @if(in_array('delete', $header['action']))
                                html += '<button type="button" class="btn btn-danger" onclick="openConfirmDeleteModal(' + data.id + ')"><i class="ti ti-trash"></i></button>';
                            @endif
                            
                            html += '</td>';
                        @endif
                    @endif
                @endforeach
                html += '</tr>';
            });
            $('#cards-table-body').html(html);

            // Clear existing pagination links
            $('#pagination-links').html('');

            // Populate pagination links with new data
            html = '<nav aria-label="Page navigation"><ul class="pagination">';
            $.each(response.links, function (index, link) {
                if (link.url) {
                    html += '<li class="page-item' + (link.active ? ' active' : '') + '"><a class="page-link" href="' + link.url + '">' + link.label + '</a></li>';
                } else {
                    html += '<li class="page-item disabled"><span class="page-link">' + link.label + '</span></li>';
                }
            });
            html += '</ul></nav>';
            $('#pagination-links').html(html);
            $('#from_entries').text(response.from);
            $('#to_entries').text(response.to);
            $('#total_entries').text(response.total);
        }
        
            // Function to load cards data
        // Function to load cards data
        function loadCards(page = 1, search = '', per_page = 10, sort_order = 'asc', sort_by = 'id') {
            $(".error-update").empty();
            $(".error-update-alert").hide();
            $.ajax({
                url: '{{ $api_url }}',
                type: 'GET',
                data: {
                    page: page,
                    search: search,
                    per_page: per_page,
                    sort_by: '{{$sort_by}}' ? '{{$sort_by}}' : sort_by,
                    order: sort_order
                },
                success: function (response) {
                    // Clear existing table body content
                    
                    loadToTable(response);
                },
                error: function (xhr) {
                    if (xhr.status === 422) {
                        var errors = xhr.responseJSON.errors;
                        $.each(errors, function (field, errorMessages) {
                            $(".error-update-alert").show();
                            if (Array.isArray(errorMessages)) {
                                $("#errorMessage").text(errorMessages[0]);
                            } else {
                                $("#errorMessage").text(errorMessages[0]);
                            }
                        });
                    } else {
                        console.log("Something went wrong. Please contact the support team:", xhr.statusText);
                    }
                }
            });
        }

      
      
        function updateTableHeaders(sort_by, sort_order) {
            // console.log(sort_by);
            // console.log(sort_order);
            $('th').each(function() {
                var columnKey = $(this).attr('data-key');
                if (columnKey === sort_by) {
                    if (sort_order === 'asc') {
                        $(this).find('i').removeClass('fa-sort fa-sort-down').addClass('fa-sort-up');
                    } else {
                        $(this).find('i').removeClass('fa-sort fa-sort-up').addClass('fa-sort-down');
                    }
                } else {
                    $(this).find('i').removeClass('fa-sort-up fa-sort-down').addClass('fa-sort');
                }
            });
        }
        var sort_by = '';
        var sort_order = '';
        function toggleSort(header) {
            if (sort_by === header) {
                sort_order = (sort_order === 'asc') ? 'desc' : 'asc';
            } else {
                sort_by = header;
                sort_order = 'asc';
            }
            loadCards(1, '', 10, sort_order, header);
        }
        function openConfirmDeleteModal(cardId) {
            $('#confirmDeleteModal').modal('show');
            $('#deleteForm').attr('action', '/admin/{{ $api_url }}/' + cardId);
        }
        // Function to handle pagination clicks
        $(document).on('click', '.pagination a', function (e) {
            e.preventDefault();
            var page = $(this).attr('href').split('page=')[1];
            loadCards(page);
        });
        $(document).on('click', '#search-button', function (e) {
            e.preventDefault();
            var search = $('#search-input').val();
            loadCards(1, search);
        });
        $(document).on('click', '#clear-search', function (e) {
            $('#search-input').val('');
            e.preventDefault();
            loadCards();
        });
        $(document).on('change', '#sel1', function (e) {
            var per_page = $(this).val();
            e.preventDefault();
            loadCards(1, '', per_page);
        });
    

        // Initial load
        $(document).ready(function () {
            loadCards();
        
        });

    </script>
@endif