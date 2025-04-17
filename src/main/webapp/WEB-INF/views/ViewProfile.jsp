<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Profile</title>

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

    <style>
        .profile-title {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center;
        }
        .form-group {
            position: relative;
            margin-bottom: 20px;
        }
        .input-icon {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #aaa;
        }
        .form-control {
            padding-left: 40px;
        }
        .btn-back {
            background-color: #555;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
        }
        .btn-back:hover {
            background-color: #333;
            color: #fff;
        }
        .profile-title {
        font-size: 28px;
        font-weight: bold;
        margin-bottom: 20px;
        text-align: center;
    }
    .form-group {
        position: relative;
        margin-bottom: 20px;
    }
    .input-icon {
        position: absolute;
        left: 15px;
        top: 50%;
        transform: translateY(-50%);
        color: #aaa;
    }
    .form-control {
        padding-left: 40px;
    }
    .form-control[readonly] {
        background-color: #f8f9fa; /* Light background */
        color: #000; /* Dark black text */
        font-weight: 500; /* Semi-bold text */
    }
    .btn-back {
        background-color: #555;
        color: #fff;
        padding: 10px 20px;
        text-decoration: none;
    }
    .btn-back:hover {
        background-color: #333;
        color: #fff;
    }
    </style>

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
                    <div class="row justify-content-center">
                        <div class="col-lg-6 col-md-8 col-sm-12 col-xs-12">
                            <div class="cs-user-account-holder">
                                <div class="profile-title">User Profile</div>

                                <div class="form-group">
                                    <i class="fas fa-user input-icon"></i>
                                   Name: <input type="text" class="form-control" value="${user.firstName} ${user.lastName}" readonly>
                                </div>

                                <div class="form-group">
                                    <i class="fas fa-envelope input-icon"></i>
                                   Email: <input type="email" class="form-control" value="${user.email}" readonly>
                                </div>

                                <div class="form-group">
                                    <i class="fas fa-phone input-icon"></i>
                                  Contact Number:  <input type="text" class="form-control" value="${user.contactNum}" readonly>
                                </div>

                                <div class="form-group">
                                    <i class="fas fa-map-marker-alt input-icon"></i>
                                   State: <input type="text" class="form-control" value="${user.state}" readonly>
                                </div>

                                <div class="form-group">
                                    <i class="fas fa-city input-icon"></i>
                                   City: <input type="text" class="form-control" value="${user.city}" readonly>
                                </div>

                                <div class="mt-4 text-center">
                                    <a href="listmembers" class="btn btn-back">Back to Members</a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="page-section" style="background:#19171a;">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center" style="padding:55px 0 32px;">
                            <div class="cs-media">
                                <figure>
                                    <img src="assets/extra-images/cs-ad-img.jpg" alt="Advertisement" />
                                </figure>
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
    <script src="assets/scripts/functions.js"></script>

    <!-- Font Awesome for icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

</body>

</html>
