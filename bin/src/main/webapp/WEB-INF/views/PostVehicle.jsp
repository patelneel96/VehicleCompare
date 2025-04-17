<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Vehicle Vault</title>
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





		<jsp:include page="MainHeader.jsp" />


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

											<li class="active"><a href="user-post-new-vehicles.html">Post
													a vehicles</a></li>
											<li><a href="#">Sign Out</a></li>
										</ul>
									</div>


									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="cs-user-section-title">
											<h4>Post New Vehicles</h4>
										</div>
									</div>
									<form class="user-post-vehicles" action="savevehicle"
										method="post" enctype="multipart/form-data">
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<h6>vehicles Information</h6>
											</div>
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="cs-seprator"></div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Vehicles Name</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="vehicleName">
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Model Year</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="modelYear">
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Brand Name</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="brandName">
													 
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Transmission</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">














												<div class="cs-field">
													<select data-placeholder="Select Mode" tabindex="1"
														class="chosen-select" name="transmission">
														<option value="Manual">Manual</option>
														<option value="Automatic">Automatic</option>

													</select>
												</div>






											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Car Type</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<select data-placeholder="Select Make" tabindex="1"
														class="chosen-select" name="carType">
														<option value="Suv">Suv</option>
														<option value="Racer cars">Racer cars</option>
														<option value="Small cars">Small cars</option>
														<option value="Big cars">Big cars</option>
														<option value="others">others</option>

													</select>
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>City</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="city">
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Price* (Rs.)</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="price">
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<h6>vehicles features</h6>
											</div>
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="cs-seprator"></div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Description</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<textarea name="description"></textarea>
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<h6>Upload Images</h6>
											</div>
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="cs-seprator"></div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="cs-upload-img">

													<p>Pictures should be in "jpeg, jpg, png, gif" format
														only.</p>
													<p>You can select and upload multiple pictures at the
														same time.</p>
													<div class="cs-browse-holder">
														<span class="file-input btn-file"> Upload Photos <input
															type="file" name="carPics" multiple>
														</span>
													</div>
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<h6>Engine Details</h6>
											</div>
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="cs-seprator"></div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<h6>
													<i class="cs-color icon-engine"></i>Engine and Drive Train
												</h6>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Registration City</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="registrationCity">
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Exterior Color</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="exteriorColor">
												</div>
											</div>
										</div>








										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Fuel Type</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<select data-placeholder="Select Make" tabindex="1"
														class="chosen-select" name="fuelType">
														<option value="Petrol">Petrol</option>
														<option value="Diesel">Diesel</option>
														<option value="Hybrid">Hybrid</option>

													</select>
												</div>
											</div>
										</div>







										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<h6>
													<i class="cs-color icon-vehicle92"></i>Transmission
												</h6>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Engine Type</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<select data-placeholder="Select Make" tabindex="1"
														class="chosen-select" name="engineType">
														<option value="Manual">Manual</option>
														<option value="Automatic">Automatic</option>

													</select>
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Engine Capacity </label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="number" name="engineCapacity">
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>GEAR</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="number" name="gear">
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<h6>Accessories and Options</h6>
											</div>
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="cs-seprator"></div>
										</div>




										<div class="cs-field-holder">
											<ul class="cs-checkbox-list">
												<li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
													<div class="cs-checkbox">
														<input id="check1" type="checkbox" name="accessories"
															value="Automatic Stability Control"> <label
															for="check1">Automatic Stability Control</label>
													</div>
												</li>
												<li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
													<div class="cs-checkbox">
														<input id="check2" type="checkbox" name="accessories"
															value="Car Kit"> <label for="check2">Car
															Kit</label>
													</div>
												</li>
												<li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
													<div class="cs-checkbox">
														<input id="check3" type="checkbox" name="accessories"
															value="Tire Pressure Monitoring"> <label
															for="check3">Tire Pressure Monitoring</label>
													</div>
												</li>
												<li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
													<div class="cs-checkbox">
														<input id="check4" type="checkbox" name="accessories"
															value="Remote central locking"> <label
															for="check4">Remote central locking</label>
													</div>
												</li>
												<li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
													<div class="cs-checkbox">
														<input id="check5" type="checkbox" name="accessories"
															value="Bluetooth"> <label for="check5">Bluetooth</label>
													</div>
												</li>
												<li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
													<div class="cs-checkbox">
														<input id="check6" type="checkbox" name="accessories"
															value="Climate control"> <label for="check6">Climate
															control</label>
													</div>
												</li>
												<li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
													<div class="cs-checkbox">
														<input id="check7" type="checkbox" name="accessories"
															value="Onboard computer"> <label for="check7">Onboard
															computer</label>
													</div>
												</li>
												<li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
													<div class="cs-checkbox">
														<input id="check8" type="checkbox" name="accessories"
															value="Cruise Control"> <label for="check8">Cruise
															Control</label>
													</div>
												</li>
												<li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
													<div class="cs-checkbox">
														<input id="check9" type="checkbox" name="accessories"
															value="Mirrors in body color"> <label
															for="check9">Mirrors in body color</label>
													</div>
												</li>
												<li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
													<div class="cs-checkbox">
														<input id="check10" type="checkbox" name="accessories"
															value="Roof rails"> <label for="check10">Roof
															rails</label>
													</div>
												</li>
												<li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
													<div class="cs-checkbox">
														<input id="check11" type="checkbox" name="accessories"
															value="Outside temperature display"> <label
															for="check11">Outside temperature display</label>
													</div>
												</li>
												<li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
													<div class="cs-checkbox">
														<input id="check12" type="checkbox" name="accessories"
															value="Power sunroof"> <label for="check12">Power
															sunroof</label>
													</div>
												</li>
												<li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
													<div class="cs-checkbox">
														<input id="check13" type="checkbox" name="accessories"
															value="Body-color bumpers"> <label for="check13">Body-color
															bumpers</label>
													</div>
												</li>
												<li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
													<div class="cs-checkbox">
														<input id="check14" type="checkbox" name="accessories"
															value="Power windows front"> <label for="check14">Power
															windows front</label>
													</div>
												</li>
											</ul>
										</div>




										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<h6>Contact Information</h6>
											</div>
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="cs-seprator"></div>
										</div>


										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Mobile Number</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="email" value="${user.contactNum}"
														readonly>
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Email Address</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="email" value="${user.email}"
														readonly>
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>Full Name</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text"
														value="${user.firstName} ${user.lastName}" readonly>
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>City</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" value="${user.city}" readonly>
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
												<label>State</label>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" value="${user.state}" readonly>
												</div>
											</div>
										</div>

										<div class="cs-field-holder">
											<div class="col-lg-4 col-md-4 col-sm-12 col-md-12">
												<div class="cs-field">
													<div class="cs-btn-submit">
														<input type="submit" value="SUBMIT & CONTINUE">
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
			<div class="page-section" style="background: #19171a;">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="cs-ad"
								style="text-align: center; padding: 55px 0 32px;"></div>
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