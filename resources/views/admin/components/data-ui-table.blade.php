<h6 class="found-jobs">Found <span id="total_entries"></span> jobs</h6>
@if (!isset($headers) || !isset($api_url))
    <div class="alert alert-danger" role="alert">
        Headers for the table and API URL are required.
    </div>
@else
<div class="row mt-2">
 

 <div class="col-3"></div>

 <div class="col-6">
    
 </div>
 
</div>
<div class="row meta-search-bg">
    <div class="col-md-4 md-lg-4 md-sm-12"> 
        <input type="text" id="search_title" class="search-bar" placeholder="Job title or keywords">
    </div>
    <div class="col-md-4 md-lg-4 md-sm-12">
        <input type="text" id="search_location" class="search-bar" placeholder="Location">
    </div>
    <div class="col-md-4 md-lg-4 md-sm-12">
        <div class="input-group">
            
            <button id="search-button" class="btn btn-primary">Search</button>
        </div>
    </div>
</div>

    <div id="cards-table">
        <table class="table table-hover">
         
            <tbody id="cards-table-body">
                <!-- Cards will be dynamically loaded here -->
            </tbody>
        </table>
    </div>
    <div class="container">									
        <div class="row" id="career-body">
           
        </div>
                    
    </div>

    <div class="row">
        
        <div class="col-3">
        </div>
        <div class="col-6 d-flex justify-content-end" id="pagination-links">

        </div>
    </div>
  
    <script>
 var isAuthenticated = @json(auth()->check());
        $(document).on('click', '#search-button', function (e) {
            e.preventDefault();
            var searchTitle = $('#search_title').val();
            var searchLocation = $('#search_location').val();
            var searchInput = $('#search-input').val();
            
            loadCards(1, searchTitle, searchLocation, 10, 'asc', 'id');
        });
            // Function to load cards data
        // Function to load cards data
        function loadCards(page = 1, search = '', location='',per_page = 10, sort_order = 'asc', sort_by = 'id') {
            $(".error-update").empty();
            $(".error-update-alert").hide();
            $.ajax({
                url: '{{ $api_url }}',
                type: 'GET',
                data: {
                    page: page,
                    search: search,
                    location:location,
                    per_page: per_page,
                    sort_by: '{{$sort_by}}' ? '{{$sort_by}}' : sort_by,
                    order: sort_order
                },
                success: function (response) {
                    // Clear existing table body content
                    $('#career-body').html('');

                    // Populate table with new data
                    var html = '';
                    var jobsShowRoute = "{{ route('jobs.show', ':id') }}";
                    var jobsApply = "{{ route('apply-now', ':id') }}";
                    $.each(response.data, function (index, data) {
                    
                        html += '<div class="col-md-6 md-lg-6 md-sm-12 meta-job-bg">';
                        
                        // Job title and links
                        // html += '<div class="meta-title"><a href="http://127.0.0.1:8001/jobs/' + data.id + '">' + data.name + '</a></div>';
                        html += '<div class="meta-title"><a href="' + jobsShowRoute.replace(':id', data.id) + '">' + data.title + '</a></div>';

                      
                        html += '<p><span id="location">' + data.location + '</span></p>';
                        html += '<p><b><em><span id="salary">Salary: ' + data.salary + '</span></em></b></p>';
                        html += '<p><span id="description">' + data.description + '</span></p>';
                        
                        // Buttons
                        
                        html += '<button class="btn"><a href="' + jobsShowRoute.replace(':id', data.id) + '">Read More</a></button>';
                        if (isAuthenticated) {
                            html += '<button class="btn btn-primary"><a href="' + jobsApply.replace(':id', data.id) + '" class="text-black">Apply Now</a></button>';
                        } else {
                            html += '<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#applyNowModal">Apply Now</button>';
                        }
                        html += '</div>'; // Close col-md-6
                    // Close row career-body
                    });
                    $('#career-body').html(html);

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
                   
                    $('#total_entries').text(response.total);
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