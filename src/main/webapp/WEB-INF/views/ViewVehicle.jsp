<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Car Detail</title>
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/bootstrap-theme.css" rel="stylesheet">
<link href="assets/css/iconmoon.css" rel="stylesheet">
<link href="assets/css/chosen.css" rel="stylesheet">
<link href="style.css" rel="stylesheet">
<link href="assets/css/bootstrap-slider.css" rel="stylesheet">
<link href="cs-automobile-plugin.css" rel="stylesheet">
<link href="assets/css/color.css" rel="stylesheet">
<link href="assets/css/widget.css" rel="stylesheet">
<link href="assets/css/responsive.css" rel="stylesheet">

<script src="assets/scripts/jquery.js"></script>
<script src="assets/scripts/modernizr.js"></script>
<script src="assets/scripts/bootstrap.min.js"></script>
</head>

<body class="wp-automobile single-page">
	<div class="wrapper">
		<!-- Header Start -->

		<jsp:include page="MainHeader.jsp" />












		<!-- Single - Page Slider Start -->




		<div class="container" style="padding-top: 10px;">
			<div class="row">
				<div class="col-lg-2 col-md-12 col-sm-12 col-xs-12"></div>
				<div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
					<div class="blog-listing large-view">
						<div class="cs-media">
							<figure>
								<img src="${vehicle.vehiclePicPath}"
									alt="${vehicle.vehicleName}" />
								<figcaption>
									<div class="caption-text">
										<span>FOR SALE</span>
									</div>
								</figcaption>
							</figure>
						</div>
					</div>
				</div>
			</div>
		</div>







	
		<!-- Single - Page Slider End -->



		<!-- Main Start -->




		<div class="main-section">
			<div class="page-section"
				style="box-shadow: 0 2px 3px -2px rgba(0, 0, 0, 0.4); position: relative;">
				<div class="container">
					<div class="row">
						<div class="custom-content col-lg-9 col-md-9 col-sm-12 col-xs-12">
							<div class="page-section">
								<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="car-detail-heading">
											<div class="auto-text">
												<h2>${vehicle.brandName } ${vehicle.vehicleName }</h2>
												<span><i class="icon-building-o"></i>
													${vehicle.exteriorColor }</span>
												<address>
													<i class="icon-location"></i>${vehicle.city }</address>
												<p>
													<span><i class="icon-hair-cross cs-color"></i> <span
														class="cs-color">${postedBy}</span></span>
												</p>
											</div>

											<div class="auto-price">
												<span class="cs-color">${vehicle.price }*</span>
											</div>
										</div>
									</div>





									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="cs-detail-nav">
											<ul>
												<li><a class="active" href="#vehicle">Vehicle
														overview</a></li>

												<li><a href="#accessories">Accessories</a></li>
												<li><a href="#contact">Contact Us</a></li>
											</ul>

										</div>
										<div class="on-scroll">
											<div id="vehicle" class="auto-overBuy Now-content">
												<ul class="row">
													<li class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
														<div class="cs-media">
															<figure>
																<i class="icon-driving2 cs-color"></i>
															</figure>
														</div>
														<div class="auto-text">
															<span>Year</span> <strong>${vehicle.modelYear }</strong>
														</div>
													</li>
													<li class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
														<div class="cs-media">
															<figure>
																<i class="icon-vehicle92 cs-color"></i>
															</figure>
														</div>
														<div class="auto-text">
															<span>Gear</span> <strong>${vehicle.gear }</strong>
														</div>
													</li>
													<li class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
														<div class="cs-media">
															<figure>
																<i class="icon-engine cs-color"></i>
															</figure>
														</div>
														<div class="auto-text">
															<span>Trans</span> <strong>${vehicle.transmission }</strong>
														</div>
													</li>
													<li class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
														<div class="cs-media">
															<figure>
																<i class="icon-gas20 cs-color"></i>
															</figure>
														</div>
														<div class="auto-text">
															<span>Fuel Type</span> <strong>${vehicle.fuelType }</strong>
														</div>
													</li>
												</ul>
												<p class="more-text m-8">${vehicle.description }</p>



											</div>


											<div id="specification"
												class="auto-specifications detail-content">
												<div class="section-title pt-5 " style="text-align: left;">
													<h4>Other Specifications</h4>
												</div>

											</div>














											<div id="accessories"
												class="cs-auto-accessories detail-content">
												<div class="element-title ">
													<i class="cs-color icon-gear42"></i> <span>Accessories
														& Options</span>
												</div>

												<div class="row">
													<c:forEach var="accessory" items="${availableAccessories}">
														<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
															<div class="cs-listing-icon">
																<ul class="list-unstyled">
																	<!-- Removes default dots -->
																	<li class="available"><span>${accessory}</span></li>
																</ul>
															</div>
														</div>
													</c:forEach>
												</div>
											</div>
























											<div id="specification"
												class="auto-specifications detail-content">
												<div class="section-title" style="text-align: left;">
													<h4>Technical Details</h4>
												</div>

												<ul class="row">
													<li class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
														<div class="element-title">
															<i class="cs-color icon-engine"></i> <span>Reviews</span>
														</div>
													</li>

													<c:choose>
														<c:when test="${not empty technicianComments}">
															<li class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
																<div class="specifications-info">
																	<ul>
																		<li><span>Car Maintenance</span> <strong>
																				<c:choose>
																					<c:when
																						test="${technicianComments.carMaintenanceReview == 'Well Maintained'}">★★★★★</c:when>
																					<c:when
																						test="${technicianComments.carMaintenanceReview == 'Moderate Maintenance'}">★★★☆☆</c:when>
																					<c:when
																						test="${technicianComments.carMaintenanceReview == 'Needs Immediate Attention'}">★☆☆☆☆</c:when>
																					<c:otherwise>☆☆☆☆☆</c:otherwise>
																				</c:choose>
																		</strong></li>

																		<li><span>Engine Review</span> <strong>
																				<c:choose>
																					<c:when
																						test="${technicianComments.engineReview == 'Excellent'}">★★★★★</c:when>
																					<c:when
																						test="${technicianComments.engineReview == 'Good'}">★★★★☆</c:when>
																					<c:when
																						test="${technicianComments.engineReview == 'Needs Repair'}">★★☆☆☆</c:when>
																					<c:otherwise>☆☆☆☆☆</c:otherwise>
																				</c:choose>
																		</strong></li>

																		<li><span>Overall Review</span> <strong>
																				<c:choose>
																					<c:when
																						test="${technicianComments.overallReview == 'Excellent'}">★★★★★</c:when>
																					<c:when
																						test="${technicianComments.overallReview == 'Good'}">★★★★☆</c:when>
																					<c:when
																						test="${technicianComments.overallReview == 'Average'}">★★★☆☆</c:when>
																					<c:when
																						test="${technicianComments.overallReview == 'Poor'}">★☆☆☆☆</c:when>
																					<c:otherwise>☆☆☆☆☆</c:otherwise>
																				</c:choose>
																		</strong></li>
																	</ul>
																</div>
															</li>
															<!-- Add Space -->
															<div style="color: #fff;">margin</div>
															<!-- Technician Comments Section (Placed Outside c:choose to Avoid Errors) -->
															<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
																<div class="cs-field">

																	<p class="more-text m-8">${technicianComments.technicianComments}</p>
																</div>
															</div>
														</c:when>

														<c:otherwise>
															<p>No technician comments yet.</p>
														</c:otherwise>
													</c:choose>
												</ul>
											</div>
















											<div id="contact" class="cs-contact-form detail-content">
												<div class="section-title">
													<h4 style="text-align: left;">Seller Details</h4>
												</div>
												
<p><strong>Name:</strong> ${firstName} ${lastName}</p>
<p><strong>Email:</strong> ${email}</p>
<p><strong>Phone:</strong> ${contactNum}</p>
<p><strong>City:</strong> ${city}</p>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>






						<aside class="page-sidebar col-lg-3 col-md-3 col-sm-12 col-xs-12">
							<div class="cs-category-link-icon">
								<ul>
									<li><a data-toggle="modal"
										href="http://chimpgroup.com/themeforest/automobile/remote.html"
										data-target="#request-more-info"><i
											class="cs-color icon-question-circle"></i>Request More Info</a></li>
									<li><a data-toggle="modal"
										href="http://chimpgroup.com/themeforest/automobile/remote.html"
										data-target="#schedule-test-drive"><i
											class="cs-color icon-chrome2"></i>Schedule Test Drive</a></li>
									<li><a data-toggle="modal"
										href="http://chimpgroup.com/themeforest/automobile/remote.html"
										data-target="#make-an-Offer"><i
											class="cs-color icon-documents2"></i>Make an Offer</a></li>

									<li><a data-toggle="modal"
										href="http://chimpgroup.com/themeforest/automobile/remote.html"
										data-target="#email-to-friend"><i
											class="cs-color icon-mail5"></i>Email to a Friend</a></li>
								</ul>
								<div class="cs-form-modal">
									<div class="modal fade" id="request-more-info" tabindex="-1"
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
													<h4>Request More Info</h4>
													<div class="cs-login-form">
														<form class="row" action="contactus" method="post">
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="cs-username-3"> <strong>FULL
																			NAME</strong> <i class="icon-user-plus2"></i> <input
																		type="text" id="cs-username-3" name="fullName"
																		placeholder="Type your username" required>
																	</label>
																</div>
															</div>
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="cs-email-3"> <strong>Email</strong>
																		<i class="icon-envelope"></i> <input type="email"
																		id="cs-email-3" name="email"
																		placeholder="Type your email" required>
																	</label>
																</div>
															</div>
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="phone"> <strong>Phone</strong> <i
																		class="icon-iphone26"></i> <input type="tel"
																		id="phone" name="phoneNumber"
																		placeholder="+91-4567787634">
																	</label>
																</div>
															</div>
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label> <textarea name="message"
																			placeholder="Your Message" required></textarea>
																	</label>
																</div>
															</div>

															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<input class="cs-color csborder-color" type="submit"
																		value="Submit Query">
																</div>
															</div>
														</form>
													</div>
												</div>





											</div>
										</div>
									</div>
								</div>
								<div class="cs-form-modal">
									<div class="modal fade" id="schedule-test-drive" tabindex="-1"
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
													<h4>Schedule Test Drive</h4>
													<div class="cs-login-form">
														<form class="row">
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="cs-username-4"> <strong>USERNAME</strong>
																		<i class="icon-user-plus2"></i> <input type="text"
																		id="cs-username-4" placeholder="Type your username"
																		required>
																	</label>
																</div>
															</div>
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="cs-email-4"> <strong>Email</strong>
																		<i class="icon-envelope"></i> <input type="email"
																		id="cs-email-4" placeholder="Type your username"
																		required>
																	</label>
																</div>
															</div>
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="phone-1"> <strong>Phone</strong> <i
																		class="icon-iphone26"></i> <input type="tel"
																		id="phone-1" placeholder="+91-4567787634">
																	</label>
																</div>
															</div>
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="best-time-1"> <strong>Best
																			time</strong> <i class="icon-clock96"></i> <input type="text"
																		id="best-time-1" placeholder="Select date" required>
																	</label>
																</div>
															</div>
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label> <textarea required></textarea>
																	</label>
																</div>
															</div>

															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<input class="cs-color csborder-color" type="submit"
																		value="Submit Query">
																</div>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="cs-form-modal">
									<div class="modal fade" id="make-an-Offer" tabindex="-1"
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
													<h4>Make an Offer</h4>
													<div class="cs-login-form">
														<form class="row">
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="cs-username-6"> <strong>USERNAME</strong>
																		<i class="icon-user-plus2"></i> <input type="text"
																		id="cs-username-6" placeholder="Type your username"
																		required>
																	</label>
																</div>
															</div>
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="cs-email-6"> <strong>Email</strong>
																		<i class="icon-envelope"></i> <input type="email"
																		id="cs-email-6" placeholder="Type your email" required>
																	</label>
																</div>
															</div>
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="phone-6"> <strong>Phone</strong> <i
																		class="icon-iphone26"></i> <input type="tel"
																		id="phone-6" placeholder="+91-4567787634">
																	</label>
																</div>
															</div>
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="offered-price"> <strong>Offered
																			Price</strong> <i class="icon-dollar183"></i> <input
																		type="text" id="offered-price"
																		placeholder="Rs.1.1 Crores">
																	</label>
																</div>
															</div>

															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label> <textarea required></textarea>
																	</label>
																</div>
															</div>

															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<input class="cs-color csborder-color" type="submit"
																		value="Submit Query">
																</div>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="cs-form-modal">
									<div class="modal fade" id="email-to-friend" tabindex="-1"
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
													<h4>Email to a Friend</h4>
													<div class="cs-login-form">
														<form class="row">
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="cs-username-7"> <strong>USERNAME</strong>
																		<i class="icon-user-plus2"></i> <input type="text"
																		id="cs-username-7" placeholder="Type your username"
																		required>
																	</label>
																</div>
															</div>
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="cs-email-7"> <strong>Email</strong>
																		<i class="icon-envelope"></i> <input type="email"
																		id="cs-email-7" placeholder="Type your email" required>
																	</label>
																</div>
															</div>
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="cs-friend-email"> <strong>Friend
																			Email</strong> <i class="icon-envelope"></i> <input
																		type="email" id="cs-friend-email"
																		placeholder="Type your friend email" required>
																	</label>
																</div>
															</div>
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label for="phone-7"> <strong>Phone</strong> <i
																		class="icon-iphone26"></i> <input type="tel"
																		id="phone-7" placeholder="+91-4567787634">
																	</label>
																</div>
															</div>
															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<label> <textarea required></textarea>
																	</label>
																</div>
															</div>

															<div class="col-lg-12 col-lg-12 col-sm-12 col-xs-12">
																<div class="cs-modal-field">
																	<input class="cs-color csborder-color" type="submit"
																		value="Submit Query">
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











						</aside>
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
	<script src="assets/scripts/bootstrap-slider.js"></script>
	<script src="assets/scripts/echo.js"></script>
	<!-- Put all Functions in functions.js -->
	<script src="assets/scripts/functions.js"></script>

</body>

</html>