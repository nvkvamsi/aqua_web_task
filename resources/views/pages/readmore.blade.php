
@extends('layouts.app')

@section('content')

    <!-- Page Wrapper -->
    <div class="page-wrapper">

        <!-- Header Main Area -->
		
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
								<span><a title="" href="#" class="home"><span>Job Details</span></a></span>
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

        <!-- body contanier start -->
    <div class="container">
		<h3 class="jobdetails">Job Details</h3>
		<button class="btn"><a href="{{ route('careers') }}"> Back to job search </back></a></button>
		
		<div class="row">
		<div class="b-example-divider">{{$gig->title}}</div><br>

		<h5>JOB ID {{$gig->id}}: {{$gig->title}}</h5><br>
		<p>Job duties include:</p>
	<div class="d-flex flex-column flex-md-row p-4 gap-4 py-md-5 align-items-center justify-content-center b-example-divider-one">
		<div class="list-group">
			<ul>			
				<li class="location">
					<p><b>Location :</b></p>
					<p>{{$gig->location}}</p>
				</li>
				<li class="location">
					<p><b>JOBTYPE :</b></p>
					<p>{{$gig->job_type}}</p>
				</li>
				
				
			</ul>
		</div>
	
	</div>		
	
	<div class="col-md-12 right-col">
		<div class="row">		
			{{$gig->description}}
		</div>
	</div>
	<div class="col-md-6">
	<button class="btn btn-big"><a href="{{ route('apply-now', ['job_id' => $gig->id]) }}">Apply Now</a></button>
	
</div>		
	</div>
	

	</div>
        <!--body container end -->

		<!-- footer -->
	
    <!-- Page Wrapper End -->

	@endsection