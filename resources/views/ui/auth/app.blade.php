<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--favicon-->
	<link rel="icon" href="{{ asset('admin/images/favicon-32x32.png')}}" type="image/png"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
	
	<!--plugins-->
    
	<link href="{{ asset('admin/plugins/vectormap/jquery-jvectormap-2.0.2.css')}}" rel="stylesheet"/>
	<link href="{{ asset('admin/plugins/simplebar/css/simplebar.css')}}" rel="stylesheet" />
	<link href="{{ asset('admin/plugins/perfect-scrollbar/css/perfect-scrollbar.css')}}" rel="stylesheet" />
	<link href="{{ asset('admin/plugins/metismenu/css/metisMenu.min.css')}}" rel="stylesheet"/>
	<link href="{{ asset('admin/plugins/Drag-And-Drop/dist/imageuploadify.min.css')}}" rel="stylesheet" />
	
	<!-- Bootstrap CSS -->
	<link href="{{ asset('admin/css/bootstrap.min.css')}}" rel="stylesheet">
	<link href="{{ asset('admin/css/bootstrap-extended.css')}}" rel="stylesheet">
	<link href="{{ asset('admin/css/app.css')}}" rel="stylesheet">
	<link href="{{ asset('admin/css/icons.css')}}" rel="stylesheet">
	<link rel="stylesheet" href="{{ asset('admin/fonts/tabler-icons.css')}}" />
	<!-- Theme Style CSS -->
	<link rel="stylesheet" href="{{ asset('admin/css/dark-theme.css')}}"/>

  <script src="{{ asset('admin/js/jquery.min.js')}}"></script>
  <link rel="stylesheet" href="{{ asset('css/fontawesome.css')}}">
	<title>{{env('APP_NAME')}}</title>
  @stack('styles')
</head>

<body>
	<!--wrapper-->
	<div class="wrapper">
		<!--sidebar wrapper -->
	
		<!--end header -->
		<!--start page wrapper -->
		<div class="page-wrapper">
			<div class="page-content">
			
        		@yield('content')
				

			</div>
		</div>
		<!--end page wrapper -->
		<!--start overlay-->
		<div class="overlay toggle-icon"></div>
		<!--end overlay-->
		<!--Start Back To Top Button--> <a href="javaScript:;" class="back-to-top"><i class='bx bxs-up-arrow-alt'></i></a>
		<!--End Back To Top Button-->
	
  
   
	</div>



	<!--start switcher-->
	
	<!--end switcher-->
	<!-- Bootstrap JS -->
    <script src="{{ asset('admin/js/bootstrap.bundle.min.js')}}"></script>
	<!--plugins-->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="{{ asset('admin/plugins/simplebar/js/simplebar.min.js')}}"></script>
	<script src="{{ asset('admin/plugins/metismenu/js/metisMenu.min.js')}}"></script>
	<script src="{{ asset('admin/plugins/perfect-scrollbar/js/perfect-scrollbar.js')}}"></script>
	<script src="{{ asset('admin/plugins/Drag-And-Drop/dist/imageuploadify.min.js')}}"></script>
	<script src="{{ asset('admin/js/app.js')}}"></script>


	

	
</body>

</html>