<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>All Users</title>
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



		<!-- Header -->

		<jsp:include page="AdminHeader.jsp" />
		


		<!-- Main Start -->
		<div class="main-section">
			<div class="page-section"
				style="background:url(assets/extra-images/user-bg-img.jpg) no-repeat;background-size:cover;min-height:175px;margin-top:-30px;margin-bottom:-129px;">
			</div>
			<div class="page-section">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="cs-user-account-holder">
								<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<ul class="cs-user-accounts-list">
											<li class="active"><a href="user-car-listing.html">Users</a></li>

											<li><a href="/logout">Sign Out</a></li>
										</ul>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="cs-user-section-title">
											<h4>All Registered Users</h4>
											

										</div>
									</div>
									<ul class="cs-featurelisted-car">
										<c:forEach items="${users}" var="u">
											<li class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="cs-media">
													<figure><a href="#"><img
																src="assets/extra-images/car-shortlisted-img1.jpg"
																alt="" /></a></figure>
												</div>
												<div class="cs-text">
						
													<h6><a href="#">${u.firstName }</a></h6>
													<div class="post-options">
														<span><em>${u.email}</em></span>
														<span><a href="#">+91 ${u.contactNum}</a></span>
													</div>
													<div class="cs-post-types">
														<div class="">
															<div class="cs-edit-post">
																<a href="viewprofile?userId=${u.userId}" 
																	><i class="icon-edit2"></i></a>
																<a href="deleteuser?userId=${u.userId}" ><i class="icon-trash-o"></i></a>
															</div>
															
														</div>
														
													</div>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div class="cs-load-more"><a href="#" class="loadmore-btn">Load more</a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="page-section" style="background:#19171a;">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="cs-ad" style="text-align:center; padding:55px 0 32px;">
								<div class="cs-media">
									<figure>
										<img src="assets/extra-images/cs-ad-img.jpg" alt="" />
									</figure>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- Main End -->

		<!-- Footer -->
		<jsp:include page="Footer.jsp" />

		
	</div>
	<script src="assets/scripts/responsive.menu.js"></script>
	<script src="assets/scripts/chosen.select.js"></script>
	<script src="assets/scripts/slick.js"></script>
	<script src="assets/scripts/echo.js"></script>
	<!-- Put all Functions in functions.js -->
	<script src="assets/scripts/functions.js"></script>
</body>

</html>