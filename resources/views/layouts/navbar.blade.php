<header class="site-header header-style-4">
			<div class="site-header-menu pbmit-bg-color-global">
				<div class="container-fluid hder-cls">
					<div class="d-flex  pbmit-header-content">
						<div class="pbmit-logo-menuarea d-flex align-items-center">
							<div class="row">
								<div class="col-lg-4 col-md-6">

							<div class="site-branding pbmit-logo-area">
								<h1 class="site-title">
									<a href="{{ route('index')}}">
										<img class="logo-img" src="{{ asset('images/company-logo.png') }}" alt="companylog">
									</a>
								</h1>
							</div>
							</div>

							<div class="col-lg-8 col-md-6">

							<div class="site-navigation">
								<nav class="main-menu navbar-expand-xl navbar-light">
								<div class="navbar-header">
									<!-- Toggle Button --> 
									<button class="navbar-toggler" type="button">
										<i class="pbmit-base-icon-menu-1"></i>
									</button>
								</div>
								<div class="pbmit-mobile-menu-bg"></div>
								<div class="collapse navbar-collapse clearfix show" id="pbmit-menu">
									<div class="pbmit-menu-wrap">
										<span class="closepanel">
											<i class="pbmit-base-icon-close-circular-button-symbol"></i>
										</span>
										<ul class="navigation clearfix">
											
										
											<li><a href="{{ route('careers') }}">Careers</a></li>
											<li><a href="{{ route('contact-us') }}">Contact Us</a></li>
											@guest
												<li>
													<a href="{{ route('ui.login') }}">Login</a>												
												</li>
												<li>
													<a href="{{ route('ui.signup') }}">Register</a>												
												</li>
											@endguest
											@auth
											<form id="logout-form" action="{{ route('ui.logout') }}" method="POST" style="display: none;">
												@csrf
											</form>
											<li >
												<a href="javascript:;" class="dropdown-item d-flex align-items-center" 
													onclick="event.preventDefault(); document.getElementById('logout-form').submit();"
												>
													<i class="bx bx-log-out-circle"></i><span>Logout</span>
												</a>
											</li>
											@endauth
										
										</ul>
									</div>
								</div>
								</nav>
							</div>
							</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
			
		</header>