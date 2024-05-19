

@extends('layouts.app')

@section('content')

    <!-- Page Wrapper -->
    <div class="page-wrapper">

        <!-- Header Main Area -->
		
        <!-- Header Main Area End Here -->

        <!-- Title Bar -->
        <<div class="pbmit-title-bar-wrapper apply-page-bg">
			<h4>Apply for this position</h4>	
		</div>
        <!-- Title Bar End-->

        <!-- body contanier start -->
    <div class="container">
		<div class="row">
		
	<div class="col-md-5 left-col">			
			<div><img src="images/applynow.jpg"></div>


	</div>
	<div class="col-md-7 left-col">		
	@include('layouts.error')
			<form action="{{ route('career.store') }}" method="post" enctype="multipart/form-data">
				@csrf
				<input type="hidden" name="job_id" value="{{ request()->route('job_id') }}" />

				<label for="resume">Resume<span class=star>*</span>:</label>
				<input type="file" id="resume" name="resume" accept=".pdf, .doc, .docx">
				<p>Allowed Type(s): .pdf</p>
				
				<label for="name">Cover Letter<span class="star">*</span>:</label>

				<textarea id="cover_letter" name="cover_letter" required rows="4" cols="50"></textarea>
				<div class="col-md-6">
				<input type="submit" value="Submit">
				</div>
			</form>

</div>
		
	</div>

	</div>
    

		@endsection