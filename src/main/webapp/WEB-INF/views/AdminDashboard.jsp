<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>All Vehicles</title>
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
											
											<li>    <h4 class="text-center fw-bold mb-4">ADMIN DASHBOARD</h4>
											</li>
											<li>  </li>
											<li>  </li>
											<li>  </li>
											
											<li style="float: right;"><a href="/logout">Sign Out</a></li>
										</ul>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="cs-user-section-title" style="margin-top: 40px;">

    <div class="row justify-content-center g-4">
        <!-- Total Users -->
        <div class="col-lg-4 col-md-4 col-sm-6">
            <div style="background: linear-gradient(135deg, #667eea, #764ba2); padding: 30px; border-radius: 15px; box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15); color: #fff;">
                <h5>Total Users</h5>
                <h3>${totalUsers}</h3>
            </div>
        </div>

        <!-- Total Cars Posted -->
        <div class="col-lg-4 col-md-4 col-sm-6">
            <div style="background: linear-gradient(135deg, #43cea2, #185a9d); padding: 30px; border-radius: 15px; box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15); color: #fff;">
                <h5> Cars Posted</h5>
                <h3>${carsPosted}</h3>
                
            </div>
        </div>

        <!-- Total Cars Inspected -->
        <div class="col-lg-4 col-md-4 col-sm-6">
            <div style="background: linear-gradient(135deg, #ff758c, #ff7eb3); padding: 30px; border-radius: 15px; box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15); color: #fff;">
                <h5> Cars Approved</h5>
                <h3>${carsInspected}</h3>
            </div>
        </div>
    </div>
</div>
										
									</div>
									<ul class="cs-featurelisted-car">
										
										
										
										
										
									</ul>
									
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