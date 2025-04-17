<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
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
		<jsp:include page="Header.jsp" />
		<!-- Header End -->















		<!-- Main Start -->
		<div class="main-section">

			<div class="page-section">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="cs-section-title" style="margin-bottom: 20px;">
								<h3 style="text-align: left;">MY ACCOUNT</h3>
							</div>
						</div>

						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
						<!-- Empty div for centering -->

						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="cs-signin">
								<h4>LOGIN</h4>
								<div class="row">
									<!-- Error Message -->
									<%
									String errorMessage = (String) request.getAttribute("error");
									%>
									<%
									if (errorMessage != null) {
									%>
									<div class="alert alert-danger alert-dismissable">
										<button type="button" class="close" data-dismiss="alert"
											aria-hidden="true">×</button>
										<i class="icon-blocked"></i> <span><%=errorMessage%></span>
									</div>
									<%
									}
									%>

									<form action="authenticate" method="post">
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label>Username or email address *</label>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<input type="text" name="email" placeholder="" />
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label>Password *</label>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<input type="password" name="password" placeholder="" />
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="cs-btn-submit">
													<input type="submit" value="Login">
												</div>
												<a href="#" class="cs-forgot-password" data-toggle="modal"
													data-target="#user-forgot-pass" data-dismiss="modal"> <i
													class="cs-color icon-help-with-circle"></i>Forgot password?
												</a>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
						<!-- Empty div for centering -->
					</div>

				</div>
			</div>

			<div class="page-section " style="margin-bottom: 0;">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="image-frame defualt">
								<div class="cs-media">
									<figure>
										<img src="assets/extra-images/image-frame.jpg" alt="" />
									</figure>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="cs-column-text ">
								<span class="cs-color"
									style="font-size: 14px; margin-bottom: 15px; text-transform: capitalize !important; font-weight: bold;">HAVE
									A LOOK ON THIS NEW LAUNCHED AUDI </span>
								<h1 style="line-height: 43px !important;">Audi R3 White
									Launched by Audi Looking Fantasy With More Additional Features
									And Fully Automated</h1>
								<p style="margin-bottom: 25px;">A rear view camera and lane
									departure warning. This car has 6 airbags fitted for your
									protection. It has front &amp; rear power windows, central
									locking and 2nd row split folding seats. Family life is made
									easy in this AUDI R3. This car has Bluetooth connectivity, side
									curtain airbags, subwoofer, trailer sway control, sports pedals
									and heads up information display. This car has forward
									collision alert/warning. This car comes with enough seats for
									5. You can relax.</p>
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
		<!-- Put all Functions in functions.js -->
		<script src="assets/scripts/functions.js"></script>
</body>

</html>