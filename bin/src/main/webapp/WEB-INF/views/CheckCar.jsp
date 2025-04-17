<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>



    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Check Car</title>
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





            <jsp:include page="MainHeader.jsp" />


            <!-- Main Start -->
            <div class="main-section">
                <div class="page-section"
                    style="background: url(assets/extra-images/user-bg-img.jpg) no-repeat; background-size: cover; min-height: 175px; margin-top: -30px; margin-bottom: -129px;">
                </div>
                <div class="page-section">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="cs-user-account-holder">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <ul class="cs-user-accounts-list">

                                                <li class="active"><a href="">Description of Car</a></li>
                                                <li><a href="/logout">Sign Out</a></li>
                                            </ul>
                                        </div>



                                        <form class="user-post-vehicles" action="/reviewvehicle/${vehicle.vehicleId}"
                                            method="post" method="post">
                                            <div class="cs-field-holder">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <h6>vehicles Information</h6>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="cs-seprator"></div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label>Vehicles Name</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <input type="text" name="vehicleName"
                                                            value="${vehicle.vehicleName}" >
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label>Model Year</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <input type="text" name="modelYear" value="${vehicle.modelYear}"
                                                            >
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label>Brand Name</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <input type="text" name="brandName" value="${vehicle.brandName}"
                                                            >

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label>Transmission</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">

                                                    <div class="cs-field">
                                                        <input type="text" name="transmission"
                                                            value="${vehicle.transmission}" >
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label>Car Type</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <input type="text" name="carType" value="${vehicle.carType}"
                                                            >
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label>City</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <input type="text" name="city" value="${vehicle.city}" >
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label>Price* (Rs.)</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <input type="text" name="price" value="${vehicle.price}"
                                                            >
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <h6>vehicles features</h6>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="cs-seprator"></div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label>Description</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        
                                                         
                                                         <textarea name="description" >${vehicle.description}</textarea>

                                                    </div>
                                                </div>
                                            </div>






                                            <div class="cs-field-holder">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <h6>Upload Images</h6>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="cs-seprator"></div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="">
                                                    <div class="">
                                                        <img src="${vehicle.vehiclePicPath}"
                                                            alt="${vehicle.vehicleName}" />
                                                    </div>
                                                </div>
                                            </div>






                                            <div class="cs-field-holder">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <h6>Engine Details</h6>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="cs-seprator"></div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <h6>
                                                        <i class="cs-color icon-engine"></i>Engine and Drive Train
                                                    </h6>
                                                </div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label>Registration City</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <input type="text" name="registrationCity"
                                                            value="${vehicle.registrationCity}" >
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label>Exterior Color</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <input type="text" name="exteriorColor"
                                                            value="${vehicle.exteriorColor}" >
                                                    </div>
                                                </div>
                                            </div>








                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label>Fuel Type</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <input type="text" name="fuelType" value="${vehicle.fuelType}"
                                                            >
                                                    </div>
                                                </div>
                                            </div>







                                            <div class="cs-field-holder">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <h6>
                                                        <i class="cs-color icon-vehicle92"></i>Transmission
                                                    </h6>
                                                </div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label>Engine Type</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <input type="text" name="engineType"
                                                            value="${vehicle.engineType}" >
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label>Engine Capacity </label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <input type="text" name="engineCapacity"
                                                            value="${vehicle.engineCapacity}" >
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label>GEAR</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <input type="number" name="gear" value="${vehicle.gear}"
                                                            >
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cs-field-holder">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <h6>Technician Description</h6>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="cs-seprator"></div>
                                            </div>










                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label for="technicianComments">Comments</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <textarea name="technicianComments"
                                                            id="technicianComments">${comments.technicianComments}</textarea>
                                                    </div>
                                                </div>
                                            </div>



                                            <!-- Engine Review -->

                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label for="engineReview">Engine</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <select data-placeholder="Select Review" tabindex="1"
                                                            class="chosen-select" name="engineReview" id="engineReview">
                                                            <option value="Excellent"
                                                                ${comments.engineReview=='Excellent' ? 'selected' : ''
                                                                }>Excellent</option>
                                                            <option value="Good" ${comments.engineReview=='Good'
                                                                ? 'selected' : '' }>Good</option>
                                                            <option value="Average" ${comments.engineReview=='Average'
                                                                ? 'selected' : '' }>Average</option>
                                                            <option value="Needs Repair"
                                                                ${comments.engineReview=='Needs Repair' ? 'selected'
                                                                : '' }>Needs Repair</option>
                                                        </select>

                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Car Maintenance Review -->

                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label for="carMaintenanceReview">Car Maintenance </label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <select data-placeholder="Select Review" tabindex="1"
                                                            class="chosen-select" name="carMaintenanceReview"
                                                            id="carMaintenanceReview">
                                                            <option value="Well Maintained"
                                                                ${comments.carMaintenanceReview=='Well Maintained'
                                                                ? 'selected' : '' }>Well Maintained</option>
                                                            <option value="Moderate Maintenance"
                                                                ${comments.carMaintenanceReview=='Moderate Maintenance'
                                                                ? 'selected' : '' }>Moderate Maintenance</option>
                                                            <option value="Needs Immediate Attention"
                                                                ${comments.carMaintenanceReview=='Needs Immediate Attention'
                                                                ? 'selected' : '' }>Needs Immediate Attention</option>
                                                        </select>

                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Overall Review -->

                                            <div class="cs-field-holder">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <label for="overallReview">Overall </label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="cs-field">
                                                        <select data-placeholder="Select Review" tabindex="1"
                                                            class="chosen-select" name="overallReview"
                                                            id="overallReview">
                                                            <option value="Excellent"
                                                                ${comments.overallReview=='Excellent' ? 'selected' : ''
                                                                }>Excellent</option>
                                                            <option value="Good" ${comments.overallReview=='Good'
                                                                ? 'selected' : '' }>Good</option>
                                                            <option value="Average" ${comments.overallReview=='Average'
                                                                ? 'selected' : '' }>Average</option>
                                                            <option value="Poor" ${comments.overallReview=='Poor'
                                                                ? 'selected' : '' }>Poor</option>
                                                        </select>

                                                    </div>
                                                </div>
                                            </div>













                                            <div class="col-lg-6 col-md-6 col-sm-4 col-md-12">
                                                <div class="cs-field-holder">
                                                    <div class="cs-field">
                                                        <div class="cs-btn-submit">
                                                            <input type="submit" value="approve" name="action">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-4 col-md-12">
                                                <div class="cs-field-holder">
                                                    <div class="cs-field">
                                                        <div class="cs-btn-submit">
                                                            <input type="submit" value="reject" name="action">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>







                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="page-section" style="background: #19171a;">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="cs-ad" style="text-align: center; padding: 55px 0 32px;"></div>
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
        <!-- Put all Functions in functions.js -->
        <script src="assets/scripts/functions.js"></script>
    </body>

    </html>