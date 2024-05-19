
@extends('layouts.app')

@section('content')
	<!-- Title Bar -->
	<div class="pbmit-title-bar-wrapper cont-img">
		<div class="container">
			<div class="pbmit-title-bar-content">
				<div class="pbmit-title-bar-content-inner">
					<h1 class="pbmit-tbar-title">Contact Us</h1>
					<div class="pbmit-breadcrumb">
						<div class="pbmit-breadcrumb-inner">
							<span><a title="" href="#" class="home"><span>Services_CompanyIT</span></a></span>
							<span class="sep">
								<i class="pbmit-base-icon-angle-right"></i>
							</span>
							<span><span class="post-root post post-post current-item">Contact Us</span></span>
						</div>
					</div>
				</div>
			</div> 
		</div> 
	</div>
	<!-- Title Bar End-->

		<!-- Contact Us Content -->
		<div class="page-content">  

			<!-- Ihbox -->
			<section class="ihbox-section_one">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6 col-xl-3 pbmit-col-wrapper">
							<div class="pbmit-ihbox-style-1">
								<div class="pbmit-ihbox-contents">
									<div class="pbmit-ihbox-icon">
										<div class="pbmit-ihbox-icon-wrapper">
											<div class="pbmit-icon-wrapper pbmit-icon-type-icon">
												<i class="pbmit-cleanfin-icon pbmit-cleanfin-icon-email-1"></i>
											</div>
										</div>
									</div>
									<h2 class="pbmit-element-title">
										Mail us
									</h2>
									<div class="pbmit-heading-desc">India: info@company.com <br> </div>
									<div class="pbmit-heading-desc">North America: info.us@company.com <br> </div>
									
								</div>
							</div>
						</div>
						<div class="col-md-6 col-xl-3 pbmit-col-wrapper">
							<div class="pbmit-ihbox-style-1">
								<div class="pbmit-ihbox-contents">
									<div class="pbmit-ihbox-icon">
										<div class="pbmit-ihbox-icon-wrapper">
											<div class="pbmit-icon-wrapper pbmit-icon-type-icon">
												<i class="pbmit-cleanfin-icon pbmit-cleanfin-icon-location-1"></i>
											</div>
										</div>
									</div>
									<h2 class="pbmit-element-title">
										Our Location
									</h2>
									<div class="pbmit-heading-desc">
										<b style="color: #000000; font-size: 20px;">INDIA</b><br>
											#2 22 310/55C Addagutta, Kukatpally, Hyderabad - 500072.<BR>									
											<b style="color: #000000; font-size: 20px;">North America</b><br>
											2110 Boca Raton Dr Ste A205, <BR>Austin TX.<br>	
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-xl-3 col-lg-6 pbmit-col-wrapper">
							<div class="pbmit-ihbox-style-1">
								<div class="pbmit-ihbox-contents">
									<div class="pbmit-ihbox-icon">
										<div class="pbmit-ihbox-icon-wrapper">
											<div class="pbmit-icon-wrapper pbmit-icon-type-icon">
												<i class="pbmit-cleanfin-icon pbmit-cleanfin-icon-phone-call"></i>
											</div>
										</div>
									</div>
									<h2 class="pbmit-element-title">
										Call us
									</h2>
									<div class="pbmit-heading-desc">India: +91 8121008969</div>
									<div class="pbmit-heading-desc">North America: +15122343403</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-xl-3 pbmit-col-wrapper">
							<div class="pbmit-ihbox-style-1">
								<div class="pbmit-ihbox-contents">
									<div class="pbmit-ihbox-icon">
										<div class="pbmit-ihbox-icon-wrapper">
											<div class="pbmit-icon-wrapper pbmit-icon-type-icon">
												<i class="pbmit-cleanfin-icon pbmit-cleanfin-icon-calendar"></i>
											</div>
										</div>
									</div>
									<h2 class="pbmit-element-title">
										Working Days
									</h2>
									<div class="pbmit-heading-desc">MON to FRI</div>
								</div>
							</div>
						</div>
					</div>
				</div>
            </section>  
			<!-- Ihbox End -->

			<!-- Contact Form -->
			<section class="section-lgx">
				<div class="container">
					<div class="row g-0">
						<div class="col-md-4 contact_col_1">
							<div class="pbmit-heading-subheading animation-style2">
								<h4 class="pbmit-subtitle">Contact Us</h4>
								<h2 class="pbmit-title">Happy to Answer all Your Questions</h2>
							</div>
							<div class="contact-form_leftbox">
								<div class="contact-us-left_inner">
									<div class="contact-form-left_title">
										<div class="pbmit-heading-subheading mb-0 animation-style2">
											<h2 class="pbmit-title">Feel Free to Our Contact & Hire us for Your Finance !!</h2>
										</div>
									</div>
									<div class="pbmit-social-link">
										<h3>Follow us :</h3>
										<ul class="pbmit-social-links">
											<li class="pbmit-social-li pbmit-social-facebook">
												<a href="#" target="_blank">
													<span><i class="pbmit-base-icon-facebook-squared"></i></span>
												</a>
											</li>
											<li class="pbmit-social-li pbmit-social-twitter">
												<a href="#" target="_blank">
													<span><i class="pbmit-base-icon-twitter"></i></span>
												</a>
											</li>
											<li class="pbmit-social-li pbmit-social-instagram">
												<a href="#" target="_blank">
													<span><i class="pbmit-base-icon-instagram"></i></span>
												</a>
											</li>
											<li class="pbmit-social-li pbmit-social-youtube">
												<a href="#" target="_blank">
													<span><i class="pbmit-base-icon-youtube-play"></i></span>
												</a>
											</li>
										 </ul>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-8 contact_col_2">
							<div class="contact-form_main">
								<p>Visit our Services_CompanyIT or simply send us an email anytime you want. If you have any questions, please feel free to contact us.</p>
								@include('layouts.error')
								<div class="contact_form">
									<form method="post" class="contact-form" id="contact-form" action="{{ route('contact.store') }}">
										<h2>Get in Touch with us!</h2>
									
										<div class="row">
											@csrf
											<div class="col-md-6">
												<input type="text" class="form-control" placeholder="Your Name" name="name" required>
											</div>
											<div class="col-md-6">
												<input type="email" class="form-control" placeholder="Email Address" name="email" required>
											</div>
											<div class="col-md-6">
												<input type="number" class="form-control" placeholder="Phone Number" name="phone_number" required>
											</div>
											<div class="col-md-6">
												<input type="text" class="form-control" placeholder="Subject" name="subject" required>
											</div>
											<div class="col-md-12">
												<textarea name="comment" cols="40" rows="10" class="form-control" placeholder="Comment" required></textarea>
											</div>
											<div class="col-sm-12">
												<button type="submit" class="pbmit-btn pbmit-btn-shape-round">
													<i class="form-btn-loader fa fa-circle-o-notch fa-spin fa-fw margin-bottom d-none"></i>
													<span class="pbmit-button-content-wrapper">
														<span class="pbmit-button-icon pbmit-align-icon-right">
															<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="pbmit-svg-arrow" x="0px" y="0px" width="10" height="19" viewBox="0 0 19 19" xml:space="preserve">
																<line x1="1" y1="18" x2="17.8" y2="1.2"></line>
																<line x1="1.2" y1="1" x2="18" y2="1"></line>
																<line x1="18" y1="17.8" x2="18" y2="1"></line>
															</svg>
														</span>
														<span class="pbmit-button-text">Submit Now</span>
													</span>
												</button>
											</div>
											<div class="col-md-12 col-lg-12 message-status"></div>
										</div>
									</form> 
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Contact Form -->

			<!-- Iframe -->
			<!-- <section class="iframe_section">
				<iframe loading="lazy" src="https://maps.google.com/maps?q=London%20Eye%2C%20London%2C%20United%20Kingdom&amp;t=m&amp;z=10&amp;output=embed&amp;iwloc=near" title="London Eye, London, United Kingdom" aria-label="London Eye, London, United Kingdom"></iframe>
			</section> -->
			<!-- Iframe End-->

		</div>
		<!-- Contact Us Content End -->
      
	
   	<!-- Page Wrapper End -->


	   @endsection