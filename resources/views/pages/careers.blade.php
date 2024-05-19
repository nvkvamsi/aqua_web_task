
@extends('layouts.app')

@section('content')
        <!-- Header Main Area End Here -->

        <!-- Title Bar -->
        <div class="pbmit-title-bar-wrapper career-img">
			<div class="container">
				<div class="pbmit-title-bar-content">
					<div class="pbmit-title-bar-content-inner">
						<h1 class="pbmit-tbar-title">Careers </h1>
						<div class="pbmit-breadcrumb">
							<div class="pbmit-breadcrumb-inner">
								<span><a title="" href="#" class="home"><span>Services_Company IT</span></a></span>
								<span class="sep">
									<i class="pbmit-base-icon-angle-right"></i>
								</span>
								<span><a title="" href="#" class="home"><span>CAREERS</span></a></span>
								<span class="sep">
									<i class="pbmit-base-icon-angle-right"></i>
								</span>
								
							</div>
						</div>
					</div>
				</div> 
			</div> 
		</div>
        <!-- Title Bar End-->

        <!-- Page Content -->
		<div class="page-content">
            <!-- Team Member Detail -->
            <section class="pbmit-team-single met-middle-colr">
				<div class="container">
					<div class="row">
						
						<div class="col-lg-8 pbmit-teammember-content">
							
							<div class="pbmit-entry-content">
								<div class="pbmit-heading-subheading animation-style2">								
									
								</div>
								<h5>Search Jobs</h5>
								
								<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
								
								@php 
									$headers = [
										['label' => 'Name', 'key' => 'name', 'sort_by' => true],
										['label' => 'Description', 'key' => 'description', 'sort_by' => true],
										['label' => 'Location', 'key' => 'location', 'sort_by' => true],
										['label' => 'Salary', 'key' => 'salary', 'sort_by' => true],
										
									];
									$sort_by = ''; 
									$api_url='jobs';
								@endphp
								@include('admin.components.data-ui-table', ['headers' => $headers, 'ap_url' => $api_url,'sort_by'=>$sort_by])
								
								
							</div>
							
						</div>
					</div>
				</div>
            </section>
            <!-- Team Member Detail end -->

        </div>
        <!-- Page Content End -->
		<tbody id="cards-table-body">
                <!-- Cards will be dynamically loaded here -->
            </tbody>
			<div class="row">
        <div class="col-3">
            Showing <span id="from_entries"></span> to <span id="to_entries"></span> of <span id="total_entries"></span> entries
        </div>
        <div class="col-3">
        </div>
        <div class="col-6 d-flex justify-content-end" id="pagination-links">

        </div>
    </div>
    <!-- Page Wrapper End -->

	
	<script type="text/javascript">
	
		


		document.addEventListener("DOMContentLoaded", function(){
	
			document.querySelectorAll('.sidebar .nav-link').forEach(function(element){
	
				element.addEventListener('click', function (e) {
	
					let nextEl = element.nextElementSibling;
					let parentEl  = element.parentElement;	
	
					if(nextEl) {
						e.preventDefault();	
						let mycollapse = new bootstrap.Collapse(nextEl);
	
						  if(nextEl.classList.contains('show')){
							  mycollapse.hide();
						  } else {
							  mycollapse.show();
							  // find other submenus with class=show
							  var opened_submenu = parentEl.parentElement.querySelector('.submenu.show');
							  // if it exists, then close all of them
							if(opened_submenu){
								new bootstrap.Collapse(opened_submenu);
							}
	
						  }
					  }
	
				});
			})
	
		}); 
		// DOMContentLoaded  end
	</script>


<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--favicon-->
	
    
	
	<!-- Bootstrap CSS -->


  <script src="{{ asset('admin/js/jquery.min.js')}}"></script>


</head>

<body>

<div class="modal fade" id="applyNowModal" tabindex="-1" role="dialog" aria-labelledby="applyNowModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <!-- Modal Header -->
      <div class="modal-header">
	  <h5 class="modal-title" id="applyNowModalLabel">Login to Apply for the Job</h5>
                    
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <!-- Modal Body -->
      <div class="modal-body">
        <!-- No form, just informative text -->
        <p>Please click the button below to proceed to the login page.</p>
        <div class="modal-footer">
        
          <a href="{{ route('ui_login') }}" class="btn btn-primary">Proceed to Login</a>
        </div>
      </div>
    </div>
  </div>
</div>

	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>



	

	
</body>

</html>


@endsection