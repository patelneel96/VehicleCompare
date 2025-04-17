<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Change Password</title>
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
		<jsp:include page="Header.jsp" />

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
									<div class="col-lg-12">
										<ul class="cs-user-accounts-list">
											<li><a href="/logout">Sign Out</a></li>
										</ul>
									</div>

									<div class="col-lg-12">
										<div class="cs-user-section-title">
											<h4>Change Password</h4>
										</div>
									</div>

									<div class="col-lg-6 col-md-8 col-sm-12">
										<form method="post" action="updatepassword">
											
											<div class="cs-field">
												<label>OTP</label>
												<input type="text" name="otp" class="form-control" required />
											</div>
											<div class="cs-field">
												<label>New Password</label>
												<input type="password" name="newPassword" class="form-control" required />
											</div>
											<div class="cs-field">
												<label>Confirm New Password</label>
												<input type="password" name="confirmPassword" class="form-control" required />
											</div>
											<div class="cs-field" style="margin-top: 20px;">
		<input type="submit" class="cs-bgcolor" value="Update Password" style="color: white;" />
	</div>
										</form>

										<!-- Show error message if any -->
										<c:if test="${not empty errorMsg}">
											<div class="alert alert-danger">${errorMsg}</div>
										</c:if>
										<c:if test="${not empty successMsg}">
											<div class="alert alert-success">${successMsg}</div>
										</c:if>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="page-section" style="background:#19171a;">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="cs-ad" style="text-align:center; padding:55px 0 32px;">
								<div class="cs-media">
									<figure>
										<img src="assets/extra-images/cs-ad-img.jpg" alt="Ad Banner" />
									</figure>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->
		<jsp:include page="Footer.jsp" />

	</div>

	<script src="assets/scripts/responsive.menu.js"></script>
	<script src="assets/scripts/chosen.select.js"></script>
	<script src="assets/scripts/slick.js"></script>
	<script src="assets/scripts/echo.js"></script>
	<script src="assets/scripts/functions.js"></script>
</body>

</html>
