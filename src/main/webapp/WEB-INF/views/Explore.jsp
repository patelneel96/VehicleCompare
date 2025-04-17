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

		<!-- Main Start -->
		<div class="main-section">
			<div class="page-section">
				<div class="container">
					<div class="row">

						<!-- Search Filters -->
						<aside
							class="section-sidebar col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="cs-listing-filters">
								<div class="cs-search">
									<form class="search-form" action="searchcar" method="post">
										<div class="row">
											<!-- City Input (5 columns) -->
											<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
												<div class="loction-search">
													<input type="text" placeholder="Select City" name="city" />
													<a href="#"><i class="icon-hair-cross cs-color"></i></a>
												</div>
											</div>

											<!-- Brand Input (5 columns) -->
											<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
												<div class="loction-search">
													<input type="text" placeholder="Select Brand"
														name="brandName" /> <a href="#"><i
														class="icon-hair-cross cs-color"></i></a>
												</div>
											</div>

											<!-- Search Button (2 columns) -->
											<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
												<div class="cs-field-holder">
													<div class="cs-field">
														<div class="cs-btn-submit">
															<input type="submit" value="Search">
														</div>
													</div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</aside>











						<!-- Comparison Form Start -->
						<form action="comparecars" method="get">
							



							<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
								<div class="cs-field-holder">
									<div class="cs-field">
										<div class="cs-btn-submit">
											<input type="submit" value="Compare Cars">
										</div>
									</div>
								</div>
							</div>




							<div
								class="section-content col-lg-12 col-md-12 col-sm-12 col-xs-12">

								<!-- Submit button to compare selected cars -->


								<div class="row">
									<c:forEach items="${vehicles}" var="v">
										<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
											<div class="auto-listing auto-grid">
												<div class="cs-media">
													<figure>
														<a href="viewvehicle?vehicleId=${v.vehicleId}"> <img
															src="${v.vehiclePicPath}" alt="${v.vehicleName}" />
														</a>
													</figure>
												</div>
												<div class="auto-text">
													<span class="cs-categories"> <a
														style="cursor: pointer;">${v.brandName}</a>
													</span>
													<div class="post-title">
														<h6>
															<a href="viewvehicle?vehicleId=${v.vehicleId}">${v.vehicleName}</a>
														</h6>
														<div class="auto-price">
															<span class="cs-color">Rs. ${v.price}</span>
														</div>
													</div>

													<!-- Checkbox for comparison -->
													<div class="cs-checkbox">
														<input type="checkbox" name="vehicleId"
															value="${v.vehicleId}" id="check-list${v.vehicleId}">
														<label for="check-list${v.vehicleId}">Compare</label>
													</div>

													<a href="viewvehicle?vehicleId=${v.vehicleId}"
														class="View-btn"> Know More<i
														class="icon-arrow-long-right"></i>
													</a>
												</div>
											</div>
										</div>
									</c:forEach>

									
								</div>
							</div>
						</form>
						<!-- Comparison Form End -->









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
	<script src="assets/scripts/functions.js"></script>
</body>

</html>
