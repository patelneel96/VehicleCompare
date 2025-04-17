<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Explore Cars</title>
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/bootstrap-theme.css" rel="stylesheet">
<link href="assets/css/iconmoon.css" rel="stylesheet">
<link href="style.css" rel="stylesheet">
<link href="cs-automobile-plugin.css" rel="stylesheet">
<link href="assets/css/color.css" rel="stylesheet">
<link href="assets/css/widget.css" rel="stylesheet">
<link href="assets/css/responsive.css" rel="stylesheet">

<script src="assets/scripts/jquery.js"></script>
<script src="assets/scripts/modernizr.js"></script>
<script src="assets/scripts/bootstrap.min.js"></script>
</head>

<body class="wp-automobile single-post">
	<div class="wrapper">

		<!-- Header Start -->
		<jsp:include page="MainHeader.jsp" />
		<!-- Header End -->








		<div class="main-section">
			<div class="page-section">
				<div class="container">
					<div class="row">
						<div
							class="section-fullwidth col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="cs-compare">
								<ul class="cs-compare-list">

									<!-- Car Images & Names -->
									<li>
										<div class="cs-compare-box">
											<div class="Specification-logo">
												<img src="assets/extra-images/compare-logo.png" alt="#" />
											</div>
										</div> 
										<c:forEach items="${vehicles}" var="v">
											<div class="cs-compare-box">
												<div class="cs-media">
													<figure>
														<a href="#"><img src="${v.vehiclePicPath}"
															alt="${v.vehicleName}" /></a>
														
													</figure>
												</div>
												
											</div>
										</c:forEach>
									</li>

									<!-- Basic Info -->
									<li>
										<div class="cs-compare-box">
											<p class="label">BASIC INFO</p>
										</div> <c:forEach var="car" items="${vehicles}">
											<div class="cs-compare-box">
												<div class="cs-post-title">
													<h6>
														<a href="#">${car.vehicleName} - ${car.modelYear}</a>
													</h6>
												</div>
												<div class="cs-price">
													<strong class="cs-color">Rs. ${car.price}</strong>
												</div>
											</div>
										</c:forEach>
									</li>

									<!-- Brand Name -->
									<li>
										<div class="cs-compare-box">
											<small class="label">Brand Name</small>
										</div> <c:forEach var="car" items="${vehicles}">
											<div class="cs-compare-box">
												<span>${car.brandName}</span>
											</div>
										</c:forEach>
									</li>

									<!-- Transmission -->
									<li>
										<div class="cs-compare-box">
											<small class="label">Transmission</small>
										</div> <c:forEach var="car" items="${vehicles}">
											<div class="cs-compare-box">
												<span>${car.transmission}</span>
											</div>
										</c:forEach>
									</li>

									<!-- Car Type -->
									<li>
										<div class="cs-compare-box">
											<small class="label">Car Type</small>
										</div> <c:forEach var="car" items="${vehicles}">
											<div class="cs-compare-box">
												<span>${car.carType}</span>
											</div>
										</c:forEach>
									</li>

									<!-- City -->
									<li>
										<div class="cs-compare-box">
											<small class="label">City</small>
										</div> <c:forEach var="car" items="${vehicles}">
											<div class="cs-compare-box">
												<span>${car.city}</span>
											</div>
										</c:forEach>
									</li>

									<!-- Registration City -->
									<li>
										<div class="cs-compare-box">
											<small class="label">Registration City</small>
										</div> <c:forEach var="car" items="${vehicles}">
											<div class="cs-compare-box">
												<span>${car.registrationCity}</span>
											</div>
										</c:forEach>
									</li>

									<!-- Exterior Color -->
									<li>
										<div class="cs-compare-box">
											<small class="label">Exterior Color</small>
										</div> <c:forEach var="car" items="${vehicles}">
											<div class="cs-compare-box">
												<span>${car.exteriorColor}</span>
											</div>
										</c:forEach>
									</li>

									<!-- Fuel Type -->
									<li>
										<div class="cs-compare-box">
											<small class="label">Fuel Type</small>
										</div> <c:forEach var="car" items="${vehicles}">
											<div class="cs-compare-box">
												<span>${car.fuelType}</span>
											</div>
										</c:forEach>
									</li>

									<!-- Engine Type -->
									<li>
										<div class="cs-compare-box">
											<small class="label">Engine Type</small>
										</div> <c:forEach var="car" items="${vehicles}">
											<div class="cs-compare-box">
												<span>${car.engineType}</span>
											</div>
										</c:forEach>
									</li>

									<!-- Engine Capacity -->
									<li>
										<div class="cs-compare-box">
											<small class="label">Engine Capacity</small>
										</div> <c:forEach var="car" items="${vehicles}">
											<div class="cs-compare-box">
												<span>${car.engineCapacity} cc</span>
											</div>
										</c:forEach>
									</li>

									<!-- Gears -->
									<li>
										<div class="cs-compare-box">
											<small class="label">Gears</small>
										</div> <c:forEach var="car" items="${vehicles}">
											<div class="cs-compare-box">
												<span>${car.gear}</span>
											</div>
										</c:forEach>
									</li>

									<!-- Accessories -->
									<li>
										<div class="cs-compare-box">
											<small class="label">Accessories</small>
										</div> <c:forEach var="car" items="${vehicles}">
											<div class="cs-compare-box">
												<ul>
													<c:forEach var="accessory" items="${car.accessories}">
														<li>${accessory}</li>
													</c:forEach>
												</ul>
											</div>
										</c:forEach>
									</li>

									<!-- Status -->
									<li>
										<div class="cs-compare-box">
											<small class="label">Status</small>
										</div> <c:forEach var="car" items="${vehicles}">
											<div class="cs-compare-box">
												<span>${car.status}</span>
											</div>
										</c:forEach>
									</li>

									<!-- Reviews -->
									<li>
										<div class="cs-compare-box">
											<small class="label">Engine Review</small>
										</div> <c:forEach var="vehicle" items="${vehicles}">
											<div class="cs-compare-box">
												<c:forEach var="comment" items="${comments}">
													<c:if
														test="${comment.vehicle.vehicleId == vehicle.vehicleId}">
														<span>${comment.engineReview}</span>
													</c:if>
												</c:forEach>
											</div>
										</c:forEach>
									</li>

									<li>
										<div class="cs-compare-box">
											<small class="label">Car Maintenance Review</small>
										</div> <c:forEach var="vehicle" items="${vehicles}">
											<div class="cs-compare-box">
												<c:forEach var="comment" items="${comments}">
													<c:if
														test="${comment.vehicle.vehicleId == vehicle.vehicleId}">
														<span>${comment.carMaintenanceReview}</span>
													</c:if>
												</c:forEach>
											</div>
										</c:forEach>
									</li>

									<li>
										<div class="cs-compare-box">
											<small class="label">Overall Review</small>
										</div> <c:forEach var="vehicle" items="${vehicles}">
											<div class="cs-compare-box">
												<c:forEach var="comment" items="${comments}">
													<c:if
														test="${comment.vehicle.vehicleId == vehicle.vehicleId}">
														<span>${comment.overallReview}</span>
													</c:if>
												</c:forEach>
											</div>
										</c:forEach>
									</li>


								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>









		<!-- Footer Start -->
		<jsp:include page="Footer.jsp" />
		<!-- Footer End -->
	</div>

	<script src="assets/scripts/responsive.menu.js"></script>
	<script src="assets/scripts/chosen.select.js"></script>
	<script src="assets/scripts/slick.js"></script>
	<script src="assets/scripts/echo.js"></script>
	<script src="assets/scripts/functions.js"></script>
</body>

</html>
