<!-- Header Start -->
<header id="header">
 <style>
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            color: #333 !important;
            font-weight: 500;
        }

        input::placeholder {
            color: #999;
        }
    </style>
	<div class="container">
		<div class="row">
			<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
				<div class="cs-logo">
					<div class="cs-media">
						<figure>
							<a href="index-2.html"><img src="assets/images/cs-logo.png"
								alt="" /></a>
						</figure>
					</div>
				</div>
			</div>
			<div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
				<div class="cs-main-nav pull-right">
					<nav class="main-navigation">
						<ul>







							<li><a href="mailto:devloper@yopmail.com">Contact us</a></li>





							<li class="cs-user-option">
								<div class="cs-login">

									<a class="cs-bgcolor btn-form" data-toggle="modal"
										href="http://chimpgroup.com/themeforest/automobile/remote.html"
										data-target="#user-sign-up" aria-hidden="true"><i
										class="icon-plus"></i> Sign up</a>
									<!-- Modal -->
									<div class="modal fade " id="user-sign-up" tabindex="-1"
										role="dialog">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<h4>Create Account</h4>
													<div class="cs-login-form">
														<form action="saveuser" method="post">
															<div class="input-holder">
    <label for="firstName"><strong>First Name</strong></label>
    <i class="icon-user-plus2"></i>
    <input type="text" name="firstName" id="firstName" placeholder="Type Firstname">
</div>

<div class="input-holder">
    <label for="lastName"><strong>Last Name</strong></label>
    <i class="icon-user-plus2"></i>
    <input type="text" name="lastName" id="lastName" placeholder="Type Lastname">
</div>
															

															<div class="input-holder">
																<label for="cs-email"> <strong>Email</strong> <i
																	class="icon-envelope"></i> <input type="email"
																	name="email" class="" id="cs-email"
																	placeholder="Enter email address">
																</label>
															</div>
															<div class="input-holder">
																<label for="cs-login-password"> <strong>Password</strong>
																	<i class="icon-unlock40"></i> <input type="password"
																	name="password" id="cs-login-password"
																	placeholder="******">
																</label>
															</div>

															<div class="input-holder">
																<input class="cs-color csborder-color" type="submit"
																	value="Create Account">
															</div>
														</form>
													</div>
												</div>
												<div class="modal-footer">
													<a data-dismiss="modal" data-target="#user-sign-in"
														data-toggle="modal" href="javascript:;" aria-hidden="true">Already
														have account</a>


												</div>
											</div>
										</div>
									</div>
									<div class="modal fade" id="user-sign-in" tabindex="-1"
										role="dialog">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<h4>User Sign in</h4>
													<div class="cs-login-form">
														<form action="authenticate" method="post">
															<div class="input-holder">
																<label for="cs-username-1"> <strong>EMAIL</strong>
																	<i class="icon-user-plus2"></i> <input type="text"
																	name="email" class="" id="cs-username-1"
																	placeholder="Enter email address">
																</label>
															</div>
															<div class="input-holder">
																<label for="cs-login-password-1"> <strong>Password</strong>
																	<i class="icon-unlock40"></i> <input type="password"
																	name="password" id="cs-login-password-1"
																	placeholder="******">
																</label>
															</div>
															<div class="input-holder">
																<a class="btn-forgot-pass" data-dismiss="modal"
																	data-target="#user-forgot-pass" data-toggle="modal"
																	href="javascript:;" aria-hidden="true"><i
																	class=" icon-question-circle"></i> Forgot password?</a>
															</div>
															<div class="input-holder">
																<input class="cs-color csborder-color" type="submit"
																	value="SIGN IN">
															</div>
														</form>
													</div>
												</div>
												<div class="modal-footer">


													<div class="cs-user-signup">
														<i class="icon-user-plus2"></i> <strong>Not a
															Member yet? </strong> <a class="cs-color" data-dismiss="modal"
															data-target="#user-sign-up" data-toggle="modal"
															href="javascript:;" aria-hidden="true">Signup Now</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="modal fade" id="user-forgot-pass" tabindex="-1"
										role="dialog">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<h4>Password Recovery</h4>
													<div class="cs-login-form">
														<form action="sendotp" method="post">
															<div class="input-holder">
																<label for="cs-email-1"> <strong>Email</strong>
																	<i class="icon-envelope"></i> <input type="email" name="email"
																	class="" id="cs-email-1"
																	placeholder="Type desired email">
																</label>
															</div>
															<div class="input-holder">
																<input class="cs-color csborder-color" type="submit"
																	value="Send">
															</div>
														</form>
													</div>
												</div>
												<div class="modal-footer">
													<div class="cs-user-signup">
														<i class="icon-user-plus2"></i> <strong>Not a
															Member yet? </strong> <a href="javascript:;" data-toggle="modal"
															data-target="#user-sign-up" data-dismiss="modal"
															class="cs-color" aria-hidden="true">Signup Now</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

							</li>
						</ul>
					</nav>






					<div class="cs-user-option hidden-lg visible-sm visible-xs">
						<div class="cs-login">






							<a class="cs-bgcolor btn-form" data-toggle="modal"
								href="http://chimpgroup.com/themeforest/automobile/remote.html"
								data-target="#user-sign-up-sm" aria-hidden="true"><i
								class="icon-plus"></i> Sign Up </a>
							<!-- Modal -->
							<div class="modal fade" id="user-sign-up-sm" tabindex="-1"
								role="dialog">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<h4>Create Account</h4>
											<div class="cs-login-form">
												<form action="saveuser" method="post">
													<div class="input-holder">
														<label for="cs-username11"> <strong>First Name</strong>
															<i class="icon-user-plus2"></i> <input type="text"
															name="firstName" class="" id="cs-username11"
															placeholder="Type Firstname">
														</label>
													</div>
													
													<div class="input-holder">
														<label for="cs-username11"> <strong>Last Name</strong>
															<i class="icon-user-plus2"></i> <input type="text"
															name="lastName" class="" id="cs-username11"
															placeholder="Type Lastname">
														</label>
													</div>
													
													
													<div class="input-holder">
														<label for="cs-email11"> <strong>Email</strong> <i
															class="icon-envelope"></i> <input type="email"
															name="email" class="" id="cs-email11"
															placeholder="Enter email address">
														</label>
													</div>
													<div class="input-holder">
														<label for="cs-login-password11"> <strong>Password</strong>
															<i class="icon-unlock40"></i> <input type="password"
															name="password" id="cs-login-password11"
															placeholder="******">
														</label>
													</div>
													<div class="input-holder">
														<label for="cs-confirm-password11"> <strong>confirm
																password</strong> <i class="icon-unlock40"></i> <input
															type="password" id="cs-confirm-password11"
															placeholder="******">
														</label>
													</div>
													<div class="input-holder">
														<input class="cs-color csborder-color" type="submit"
															value="Create Account">
													</div>
												</form>
											</div>
										</div>

										<div class="modal-footer">
											<a data-dismiss="modal" data-target="#user-sign-in-sm"
												data-toggle="modal" href="javascript:;" aria-hidden="true">Already
												have account</a>
											
											
										</div>
									</div>
								</div>
							</div>
							<div class="modal fade" id="user-sign-in-sm" tabindex="-1"
								role="dialog">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<h4>User Sign in</h4>
											<div class="cs-login-form">
												<form action="authenticate" method="post">
													<div class="input-holder">
														<label for="cs-username-111"> <strong>Email</strong>
															<i class="icon-user-plus2"></i> <input type="text"
															name="email" class="" id="cs-username-111"
															placeholder="Enter email address">
														</label>
													</div>
													<div class="input-holder">
														<label for="cs-login-password-111"> <strong>Password</strong>
															<i class="icon-unlock40"></i> <input type="password"
															name="password" id="cs-login-password-111"
															placeholder="******">
														</label>
													</div>
													<div class="input-holder">
														<a class="btn-forgot-pass" data-dismiss="modal"
															data-target="#user-forgot-pass-sm" data-toggle="modal"
															href="javascript:;" aria-hidden="true"><i
															class=" icon-question-circle"></i> Forgot password?</a>
													</div>
													<div class="input-holder">
														<input class="cs-color csborder-color" type="submit"
															value="SIGN IN">
													</div>
												</form>
											</div>
										</div>

									</div>
								</div>
							</div>
							<div class="modal fade" id="user-forgot-pass-sm" tabindex="-1"
								role="dialog">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<h4>Password Recovery</h4>
											<div class="cs-login-form">
												<form action="resetpassword">
													<div class="input-holder">
														<label for="cs-email-111"> <strong>Email</strong>
															<i class="icon-envelope"></i> <input type="email"
															class="" id="cs-email-111"
															placeholder="Type desired email">
														</label>
													</div>
													<div class="input-holder">
														<input class="cs-color csborder-color" type="submit"
															value="Send">
													</div>
												</form>
											</div>
										</div>
										<div class="modal-footer">
											<div class="cs-user-signup">
												<i class="icon-user-plus2"></i> <strong>Not a
													Member yet? </strong> <a href="javascript:;" data-toggle="modal"
													data-target="#user-sign-up-sm" data-dismiss="modal"
													class="cs-color" aria-hidden="true">Signup Now</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>
</header>
<!-- Header End -->


