<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Profile</title>
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/bootstrap-theme.css" rel="stylesheet">
<link href="assets/css/iconmoon.css" rel="stylesheet">
<link href="assets/css/chosen.css" rel="stylesheet">
<link href="style.css" rel="stylesheet">
<link href="cs-automobile-plugin.css" rel="stylesheet">
<link href="assets/css/color.css" rel="stylesheet">
<link href="assets/css/widget.css" rel="stylesheet">
<link href="assets/css/responsive.css" rel="stylesheet">

<script src="assets/scripts/jquery.js"></script>
<script src="assets/scripts/modernizr.js"></script>
<script src="assets/scripts/bootstrap.min.js"></script>
</head>

<body class="wp-automobile">
	<div class="wrapper">






		<!-- Header Start -->
		<jsp:include page="MainHeader.jsp" />
		<!-- Header End -->






		<!-- Main Start -->
		<div class="main-section">
			<div class="page-section"
				style="background: url(assets/extra-images/user-bg-img.jpg) no-repeat; background-size: cover; min-height: 175px; margin-top: -30px; margin-bottom: -129px;">
			</div>
			<div class="page-section">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="cs-user-account-holder">

								<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<ul class="cs-user-accounts-list">

											<li class="active"><a href="user-genral-setting.html">Profile
													Settings</a></li>

											
										</ul>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="cs-user-section-title">
											<h4>Genral Settings</h4>
										</div>
									</div>



									<form class="user-setting" action="savedetails" method="post">
										
										
<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
														<div class="row">
															<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																<label>First Name</label>
															</div>
															<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																<!-- <select data-placeholder="Select Make" tabindex="1"
																	class="chosen-select">
																	<option value="patna">patna</option>
																	<option value="Jalandhar">Jalandhar</option>
																	<option value="Delhi">Delhi</option>
																	<option value="Banglore">Banglore</option>
																	<option value="Lucknow">Lucknow</option>
																	<option value="Others">Others</option>
																</select> -->

																<div class="cs-field">
																	<input type="text" value="${user.firstName}" name="firstName">
																</div>



															</div>
														</div>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
														<div class="row">
															<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																<label>Last Name</label>
															</div>
															<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																<!-- <select data-placeholder="Select Make" tabindex="1"
																	class="chosen-select">
																	<option value="patna">01</option>
																	<option value="United Kingdom">02</option>
																	<option value="Afghanistan">03</option>
																	<option value="Afghanistan">04</option>
																	<option value="Afghanistan">05</option>
																	<option value="Afghanistan">06</option>
																</select> -->

																<div class="cs-field">
																	<input type="text" name="lastName" id="lastname" value="${user.lastName}">

																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label>Email Address</label>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="email" value="${user.email}"
														>
												</div>
											</div>
										</div>
										
										
										
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
														<div class="row">
															<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																<label>City</label>
															</div>
															<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																<!-- <select data-placeholder="Select Make" tabindex="1"
																	class="chosen-select">
																	<option value="patna">patna</option>
																	<option value="Jalandhar">Jalandhar</option>
																	<option value="Delhi">Delhi</option>
																	<option value="Banglore">Banglore</option>
																	<option value="Lucknow">Lucknow</option>
																	<option value="Others">Others</option>
																</select> -->

																<div class="cs-field">
																	<input type="text" value="${user.city}" name="city">
																</div>



															</div>
														</div>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
														<div class="row">
															<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																<label>Date of Birth</label>
															</div>
															<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																<!-- <select data-placeholder="Select Make" tabindex="1"
																	class="chosen-select">
																	<option value="patna">01</option>
																	<option value="United Kingdom">02</option>
																	<option value="Afghanistan">03</option>
																	<option value="Afghanistan">04</option>
																	<option value="Afghanistan">05</option>
																	<option value="Afghanistan">06</option>
																</select> -->

																<div class="cs-field">
																	<input type="date" name="dob" id="dob" value="${user.dob}">

																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- <div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label>state</label>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<select data-placeholder="Select Make" tabindex="1"
													class="chosen-select">
													<option value="United States">Bihar</option>
													<option value="United Kingdom">Punjab</option>
													<option value="Afghanistan">Delhi</option>
													<option value="United Kingdom">Karnatka</option>
													<option value="Afghanistan">Uttarpradesh</option>
													<option value="United Kingdom">Others</option>
												</select>
											</div>
										</div> -->


										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label>State</label>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="state" value="${user.state}">
												</div>
											</div>
										</div>

										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label>Country</label>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="country" value="${user.country}">
												</div>
											</div>
										</div>


										<!-- <div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label>Country</label>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<select data-placeholder="Select Make" tabindex="1"
													class="chosen-select">
													<option value="United States">India</option>
													<option value="United Kingdom">United Kingdom</option>
													<option value="Afghanistan">Afghanistan</option>
													<option value="United Kingdom">America</option>
													<option value="Afghanistan">Japan</option>
													<option value="United Kingdom">Nepal</option>
												</select>
											</div>
										</div> -->
										<!-- 										
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label>About us</label>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<textarea></textarea>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
												<div class="cs-switch-holder">
													<label for="someSwitchOptionDefault">Contact Form</label>
													<div class="material-switch">
														<input id="someSwitchOptionDefault" name="someSwitchOption001"
															type="checkbox" />
														<label for="someSwitchOptionDefault"
															class="label-default"></label>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
												<div class="cs-switch-holder">
													<label for="someSwitchOptionPrimary">Account Activation</label>
													<div class="material-switch">
														<input id="someSwitchOptionPrimary" name="someSwitchOption001"
															type="checkbox" />
														<label for="someSwitchOptionPrimary"
															class="label-default"></label>
													</div>
												</div>
											</div>
										</div> -->


										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="cs-seprator"></div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<h6>Contact Information</h6>
											</div>
										</div>
										
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label>Phone number</label>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="contactNum" value="${user.contactNum}">
												</div>
											</div>
										</div>

										<div class="cs-field-holder">
											<div class="col-lg-4 col-md-4 col-sm-12 col-md-12">
												<div class="cs-field">
													<div class="cs-btn-submit">
														<input type="submit" value="Save Changes">
													</div>
												</div>
											</div>
										</div>



								
								</form>



								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		<!-- Main End -->

		<!-- Footer Start -->
		<jsp:include page="Footer.jsp" />
		<!-- Footer End -->
	</div>
	<script src="assets/scripts/responsive.menu.js"></script>
	<script src="assets/scripts/chosen.select.js"></script>
	<script src="assets/scripts/slick.js"></script>
	<script src="assets/scripts/echo.js"></script>
	<!-- Put all Functions in functions.js -->
	<script src="assets/scripts/functions.js"></script>
</body>

</html>