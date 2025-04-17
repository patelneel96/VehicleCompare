<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
        
        <div class=""> 
		<div class="page-section" style=" padding-top: 100px; padding-bottom:100px;">
        	<div class="container">
            	<div class="row">
                	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    	<div class="cs-page-not-found">
                        	<div class="cs-text">
								<span class="cs-error">Thank You <em>for Posting the Vehicle</em> </span>
								<br><br>
                            	<p><em>Our technician will contact you shortly.</em></p>
                            
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                    	<div class="cs-seprater-v1">
							<a href="/explore">
								<span><i class="icon-home2 cs-bgcolor"> </i></span>
							</a>
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
