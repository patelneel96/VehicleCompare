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
						

						<!-- Car Listings -->
						<div
							class="section-content col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="row">





								<c:forEach items="${vehicles}" var="v">
									<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="auto-listing auto-grid">
											<div class="cs-media">
												<figure>
													<a href="viewvehicle?vehicleId=${v.vehicleId}">  
													<img src="${v.vehiclePicPath}"
                                                            alt="${v.vehicleName}" />
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
												<a href="viewvehicle?vehicleId=${v.vehicleId}"
													class="View-btn">Know More<i
													class="icon-arrow-long-right"></i></a>
											</div>
										</div>
									</div>
								</c:forEach>


								<!-- Pagination -->
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<nav>
										<ul class="pagination"
											style="display: flex; justify-content: center;">
											<li><a href="#" aria-label="Previous"><span
													aria-hidden="true"><i class="icon-angle-left"></i></span></a></li>
											<li><a class="active">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li><a href="#" aria-label="Next"><span
													aria-hidden="true"><i class="icon-angle-right"></i></span></a></li>
										</ul>
									</nav>
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
	<script src="assets/scripts/functions.js"></script>
</body>

</html>
