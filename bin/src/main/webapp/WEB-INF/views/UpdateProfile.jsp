<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Update Profile</title>
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






		<!-- Header Start -->
		<jsp:include page="Header.jsp" />
		<!-- Header End -->






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

											<li class="active"><a href="user-genral-setting.html">Profile
													Settings</a></li>


										</ul>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="cs-user-section-title">
											<h4>General Settings</h4>
										</div>
									</div>



									<form class="user-setting" action="savedetails" method="post"
										enctype="multipart/form-data">

										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label>Full Name</label>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text"
														value="${user.firstName} ${user.lastName}" readonly>
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label>Email Address</label>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="email" value="${user.email}"
														readonly>
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
														<div class="row">
															<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																<label for="stateDropdown">State</label>
															</div>
															<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

																<div class="cs-field">

																	<select id="stateDropdown" name="state"
																		class="chosen-select" onchange="populateCities()"
																		required>
																		<option value="">-- Select State --</option>
																		<option value="Andhra Pradesh">Andhra Pradesh</option>
																		<option value="Arunachal Pradesh">Arunachal
																			Pradesh</option>
																		<option value="Assam">Assam</option>
																		<option value="Bihar">Bihar</option>
																		<option value="Chhattisgarh">Chhattisgarh</option>
																		<option value="Goa">Goa</option>
																		<option value="Gujarat">Gujarat</option>
																		<option value="Haryana">Haryana</option>
																		<option value="Himachal Pradesh">Himachal
																			Pradesh</option>
																		<option value="Jharkhand">Jharkhand</option>
																		<option value="Karnataka">Karnataka</option>
																		<option value="Kerala">Kerala</option>
																		<option value="Madhya Pradesh">Madhya Pradesh</option>
																		<option value="Maharashtra">Maharashtra</option>
																		<option value="Manipur">Manipur</option>
																		<option value="Meghalaya">Meghalaya</option>
																		<option value="Mizoram">Mizoram</option>
																		<option value="Nagaland">Nagaland</option>
																		<option value="Odisha">Odisha</option>
																		<option value="Punjab">Punjab</option>
																		<option value="Rajasthan">Rajasthan</option>
																		<option value="Sikkim">Sikkim</option>
																		<option value="Tamil Nadu">Tamil Nadu</option>
																		<option value="Telangana">Telangana</option>
																		<option value="Tripura">Tripura</option>
																		<option value="Uttar Pradesh">Uttar Pradesh</option>
																		<option value="Uttarakhand">Uttarakhand</option>
																		<option value="West Bengal">West Bengal</option>
																		<option value="Andaman and Nicobar Islands">Andaman
																			and Nicobar Islands</option>
																		<option value="Chandigarh">Chandigarh</option>
																		<option
																			value="Dadra and Nagar Haveli and Daman and Diu">Dadra
																			and Nagar Haveli and Daman and Diu</option>
																		<option value="Delhi">Delhi</option>
																		<option value="Jammu and Kashmir">Jammu and
																			Kashmir</option>
																		<option value="Ladakh">Ladakh</option>
																		<option value="Lakshadweep">Lakshadweep</option>
																		<option value="Puducherry">Puducherry</option>
																	</select>
																</div>




															</div>
														</div>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
														<div class="row">
															<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																<label>Date of Birth</label>
															</div>
															<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">


																<div class="cs-field">
																	<input type="date" name="dob" name="" id="">
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>



										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label for="cityDropdown">City</label>

											</div>



											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="cs-field">
													<select id="cityDropdown" name="city" class="form-select">
														<option value="">Select City</option>
													</select>
												</div>
											</div>
										</div>

										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label>Country</label>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="country" placeholder="Country">
												</div>
											</div>
										</div>





										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="cs-seprator"></div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<h6>Contact Information</h6>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label>Mobile Number</label>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" placeholder="">
												</div>
											</div>
										</div>
										<div class="cs-field-holder">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<label>Phone number</label>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="cs-field">
													<input type="text" name="contactNum" placeholder="">
												</div>
											</div>
										</div>

										<div class="cs-field-holder">
											<div class="col-lg-4 col-md-4 col-sm-12 col-md-12">
												<div class="cs-field">
													<div class="cs-btn-submit">
														<input type="submit" value="Save Changes">
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
	<script>
    const citiesByState = {
    		 "Andaman and Nicobar Islands": [
    		      "Port Blair"
    		    ],
    		    "Haryana": [
    		      "Faridabad",
    		      "Gurgaon",
    		      "Hisar",
    		      "Rohtak",
    		      "Panipat",
    		      "Karnal",
    		      "Sonipat",
    		      "Yamunanagar",
    		      "Panchkula",
    		      "Bhiwani",
    		      "Bahadurgarh",
    		      "Jind",
    		      "Sirsa",
    		      "Thanesar",
    		      "Kaithal",
    		      "Palwal",
    		      "Rewari",
    		      "Hansi",
    		      "Narnaul",
    		      "Fatehabad",
    		      "Gohana",
    		      "Tohana",
    		      "Narwana",
    		      "Mandi Dabwali",
    		      "Charkhi Dadri",
    		      "Shahbad",
    		      "Pehowa",
    		      "Samalkha",
    		      "Pinjore",
    		      "Ladwa",
    		      "Sohna",
    		      "Safidon",
    		      "Taraori",
    		      "Mahendragarh",
    		      "Ratia",
    		      "Rania",
    		      "Sarsod"
    		    ],
    		    "Tamil Nadu": [
    		      "Chennai",
    		      "Coimbatore",
    		      "Madurai",
    		      "Tiruchirappalli",
    		      "Salem",
    		      "Tirunelveli",
    		      "Tiruppur",
    		      "Ranipet",
    		      "Nagercoil",
    		      "Thanjavur",
    		      "Vellore",
    		      "Kancheepuram",
    		      "Erode",
    		      "Tiruvannamalai",
    		      "Pollachi",
    		      "Rajapalayam",
    		      "Sivakasi",
    		      "Pudukkottai",
    		      "Neyveli (TS)",
    		      "Nagapattinam",
    		      "Viluppuram",
    		      "Tiruchengode",
    		      "Vaniyambadi",
    		      "Theni Allinagaram",
    		      "Udhagamandalam",
    		      "Aruppukkottai",
    		      "Paramakudi",
    		      "Arakkonam",
    		      "Virudhachalam",
    		      "Srivilliputhur",
    		      "Tindivanam",
    		      "Virudhunagar",
    		      "Karur",
    		      "Valparai",
    		      "Sankarankovil",
    		      "Tenkasi",
    		      "Palani",
    		      "Pattukkottai",
    		      "Tirupathur",
    		      "Ramanathapuram",
    		      "Udumalaipettai",
    		      "Gobichettipalayam",
    		      "Thiruvarur",
    		      "Thiruvallur",
    		      "Panruti",
    		      "Namakkal",
    		      "Thirumangalam",
    		      "Vikramasingapuram",
    		      "Nellikuppam",
    		      "Rasipuram",
    		      "Tiruttani",
    		      "Nandivaram-Guduvancheri",
    		      "Periyakulam",
    		      "Pernampattu",
    		      "Vellakoil",
    		      "Sivaganga",
    		      "Vadalur",
    		      "Rameshwaram",
    		      "Tiruvethipuram",
    		      "Perambalur",
    		      "Usilampatti",
    		      "Vedaranyam",
    		      "Sathyamangalam",
    		      "Puliyankudi",
    		      "Nanjikottai",
    		      "Thuraiyur",
    		      "Sirkali",
    		      "Tiruchendur",
    		      "Periyasemur",
    		      "Sattur",
    		      "Vandavasi",
    		      "Tharamangalam",
    		      "Tirukkoyilur",
    		      "Oddanchatram",
    		      "Palladam",
    		      "Vadakkuvalliyur",
    		      "Tirukalukundram",
    		      "Uthamapalayam",
    		      "Surandai",
    		      "Sankari",
    		      "Shenkottai",
    		      "Vadipatti",
    		      "Sholingur",
    		      "Tirupathur",
    		      "Manachanallur",
    		      "Viswanatham",
    		      "Polur",
    		      "Panagudi",
    		      "Uthiramerur",
    		      "Thiruthuraipoondi",
    		      "Pallapatti",
    		      "Ponneri",
    		      "Lalgudi",
    		      "Natham",
    		      "Unnamalaikadai",
    		      "P.N.Patti",
    		      "Tharangambadi",
    		      "Tittakudi",
    		      "Pacode",
    		      "O' Valley",
    		      "Suriyampalayam",
    		      "Sholavandan",
    		      "Thammampatti",
    		      "Namagiripettai",
    		      "Peravurani",
    		      "Parangipettai",
    		      "Pudupattinam",
    		      "Pallikonda",
    		      "Sivagiri",
    		      "Punjaipugalur",
    		      "Padmanabhapuram",
    		      "Thirupuvanam"
    		    ],
    		    "Madhya Pradesh": [
    		      "Indore",
    		      "Bhopal",
    		      "Jabalpur",
    		      "Gwalior",
    		      "Ujjain",
    		      "Sagar",
    		      "Ratlam",
    		      "Satna",
    		      "Murwara (Katni)",
    		      "Morena",
    		      "Singrauli",
    		      "Rewa",
    		      "Vidisha",
    		      "Ganjbasoda",
    		      "Shivpuri",
    		      "Mandsaur",
    		      "Neemuch",
    		      "Nagda",
    		      "Itarsi",
    		      "Sarni",
    		      "Sehore",
    		      "Mhow Cantonment",
    		      "Seoni",
    		      "Balaghat",
    		      "Ashok Nagar",
    		      "Tikamgarh",
    		      "Shahdol",
    		      "Pithampur",
    		      "Alirajpur",
    		      "Mandla",
    		      "Sheopur",
    		      "Shajapur",
    		      "Panna",
    		      "Raghogarh-Vijaypur",
    		      "Sendhwa",
    		      "Sidhi",
    		      "Pipariya",
    		      "Shujalpur",
    		      "Sironj",
    		      "Pandhurna",
    		      "Nowgong",
    		      "Mandideep",
    		      "Sihora",
    		      "Raisen",
    		      "Lahar",
    		      "Maihar",
    		      "Sanawad",
    		      "Sabalgarh",
    		      "Umaria",
    		      "Porsa",
    		      "Narsinghgarh",
    		      "Malaj Khand",
    		      "Sarangpur",
    		      "Mundi",
    		      "Nepanagar",
    		      "Pasan",
    		      "Mahidpur",
    		      "Seoni-Malwa",
    		      "Rehli",
    		      "Manawar",
    		      "Rahatgarh",
    		      "Panagar",
    		      "Wara Seoni",
    		      "Tarana",
    		      "Sausar",
    		      "Rajgarh",
    		      "Niwari",
    		      "Mauganj",
    		      "Manasa",
    		      "Nainpur",
    		      "Prithvipur",
    		      "Sohagpur",
    		      "Nowrozabad (Khodargama)",
    		      "Shamgarh",
    		      "Maharajpur",
    		      "Multai",
    		      "Pali",
    		      "Pachore",
    		      "Rau",
    		      "Mhowgaon",
    		      "Vijaypur",
    		      "Narsinghgarh"
    		    ],
    		    "Jharkhand": [
    		      "Dhanbad",
    		      "Ranchi",
    		      "Jamshedpur",
    		      "Bokaro Steel City",
    		      "Deoghar",
    		      "Phusro",
    		      "Adityapur",
    		      "Hazaribag",
    		      "Giridih",
    		      "Ramgarh",
    		      "Jhumri Tilaiya",
    		      "Saunda",
    		      "Sahibganj",
    		      "Medininagar (Daltonganj)",
    		      "Chaibasa",
    		      "Chatra",
    		      "Gumia",
    		      "Dumka",
    		      "Madhupur",
    		      "Chirkunda",
    		      "Pakaur",
    		      "Simdega",
    		      "Musabani",
    		      "Mihijam",
    		      "Patratu",
    		      "Lohardaga",
    		      "Tenu dam-cum-Kathhara"
    		    ],
    		    "Mizoram": [
    		      "Aizawl",
    		      "Lunglei",
    		      "Saiha"
    		    ],
    		    "Nagaland": [
    		      "Dimapur",
    		      "Kohima",
    		      "Zunheboto",
    		      "Tuensang",
    		      "Wokha",
    		      "Mokokchung"
    		    ],
    		    "Himachal Pradesh": [
    		      "Shimla",
    		      "Mandi",
    		      "Solan",
    		      "Nahan",
    		      "Sundarnagar",
    		      "Palampur",
    		      "Kullu"
    		    ],
    		    "Tripura": [
    		      "Agartala",
    		      "Udaipur",
    		      "Dharmanagar",
    		      "Pratapgarh",
    		      "Kailasahar",
    		      "Belonia",
    		      "Khowai"
    		    ],
    		    "Andhra Pradesh": [
    		      "Visakhapatnam",
    		      "Vijayawada",
    		      "Guntur",
    		      "Nellore",
    		      "Kurnool",
    		      "Rajahmundry",
    		      "Kakinada",
    		      "Tirupati",
    		      "Anantapur",
    		      "Kadapa",
    		      "Vizianagaram",
    		      "Eluru",
    		      "Ongole",
    		      "Nandyal",
    		      "Machilipatnam",
    		      "Adoni",
    		      "Tenali",
    		      "Chittoor",
    		      "Hindupur",
    		      "Proddatur",
    		      "Bhimavaram",
    		      "Madanapalle",
    		      "Guntakal",
    		      "Dharmavaram",
    		      "Gudivada",
    		      "Srikakulam",
    		      "Narasaraopet",
    		      "Rajampet",
    		      "Tadpatri",
    		      "Tadepalligudem",
    		      "Chilakaluripet",
    		      "Yemmiganur",
    		      "Kadiri",
    		      "Chirala",
    		      "Anakapalle",
    		      "Kavali",
    		      "Palacole",
    		      "Sullurpeta",
    		      "Tanuku",
    		      "Rayachoti",
    		      "Srikalahasti",
    		      "Bapatla",
    		      "Naidupet",
    		      "Nagari",
    		      "Gudur",
    		      "Vinukonda",
    		      "Narasapuram",
    		      "Nuzvid",
    		      "Markapur",
    		      "Ponnur",
    		      "Kandukur",
    		      "Bobbili",
    		      "Rayadurg",
    		      "Samalkot",
    		      "Jaggaiahpet",
    		      "Tuni",
    		      "Amalapuram",
    		      "Bheemunipatnam",
    		      "Venkatagiri",
    		      "Sattenapalle",
    		      "Pithapuram",
    		      "Palasa Kasibugga",
    		      "Parvathipuram",
    		      "Macherla",
    		      "Gooty",
    		      "Salur",
    		      "Mandapeta",
    		      "Jammalamadugu",
    		      "Peddapuram",
    		      "Punganur",
    		      "Nidadavole",
    		      "Repalle",
    		      "Ramachandrapuram",
    		      "Kovvur",
    		      "Tiruvuru",
    		      "Uravakonda",
    		      "Narsipatnam",
    		      "Yerraguntla",
    		      "Pedana",
    		      "Puttur",
    		      "Renigunta",
    		      "Rajam",
    		      "Srisailam Project (Right Flank Colony) Township"
    		    ],
    		    "Punjab": [
    		      "Ludhiana",
    		      "Patiala",
    		      "Amritsar",
    		      "Jalandhar",
    		      "Bathinda",
    		      "Pathankot",
    		      "Hoshiarpur",
    		      "Batala",
    		      "Moga",
    		      "Malerkotla",
    		      "Khanna",
    		      "Mohali",
    		      "Barnala",
    		      "Firozpur",
    		      "Phagwara",
    		      "Kapurthala",
    		      "Zirakpur",
    		      "Kot Kapura",
    		      "Faridkot",
    		      "Muktsar",
    		      "Rajpura",
    		      "Sangrur",
    		      "Fazilka",
    		      "Gurdaspur",
    		      "Kharar",
    		      "Gobindgarh",
    		      "Mansa",
    		      "Malout",
    		      "Nabha",
    		      "Tarn Taran",
    		      "Jagraon",
    		      "Sunam",
    		      "Dhuri",
    		      "Firozpur Cantt.",
    		      "Sirhind Fatehgarh Sahib",
    		      "Rupnagar",
    		      "Jalandhar Cantt.",
    		      "Samana",
    		      "Nawanshahr",
    		      "Rampura Phul",
    		      "Nangal",
    		      "Nakodar",
    		      "Zira",
    		      "Patti",
    		      "Raikot",
    		      "Longowal",
    		      "Urmar Tanda",
    		      "Morinda, India",
    		      "Phillaur",
    		      "Pattran",
    		      "Qadian",
    		      "Sujanpur",
    		      "Mukerian",
    		      "Talwara"
    		    ],
    		    "Chandigarh": [
    		      "Chandigarh"
    		    ],
    		    "Rajasthan": [
    		      "Jaipur",
    		      "Jodhpur",
    		      "Bikaner",
    		      "Udaipur",
    		      "Ajmer",
    		      "Bhilwara",
    		      "Alwar",
    		      "Bharatpur",
    		      "Pali",
    		      "Barmer",
    		      "Sikar",
    		      "Tonk",
    		      "Sadulpur",
    		      "Sawai Madhopur",
    		      "Nagaur",
    		      "Makrana",
    		      "Sujangarh",
    		      "Sardarshahar",
    		      "Ladnu",
    		      "Ratangarh",
    		      "Nokha",
    		      "Nimbahera",
    		      "Suratgarh",
    		      "Rajsamand",
    		      "Lachhmangarh",
    		      "Rajgarh (Churu)",
    		      "Nasirabad",
    		      "Nohar",
    		      "Phalodi",
    		      "Nathdwara",
    		      "Pilani",
    		      "Merta City",
    		      "Sojat",
    		      "Neem-Ka-Thana",
    		      "Sirohi",
    		      "Pratapgarh",
    		      "Rawatbhata",
    		      "Sangaria",
    		      "Lalsot",
    		      "Pilibanga",
    		      "Pipar City",
    		      "Taranagar",
    		      "Vijainagar, Ajmer",
    		      "Sumerpur",
    		      "Sagwara",
    		      "Ramganj Mandi",
    		      "Lakheri",
    		      "Udaipurwati",
    		      "Losal",
    		      "Sri Madhopur",
    		      "Ramngarh",
    		      "Rawatsar",
    		      "Rajakhera",
    		      "Shahpura",
    		      "Shahpura",
    		      "Raisinghnagar",
    		      "Malpura",
    		      "Nadbai",
    		      "Sanchore",
    		      "Nagar",
    		      "Rajgarh (Alwar)",
    		      "Sheoganj",
    		      "Sadri",
    		      "Todaraisingh",
    		      "Todabhim",
    		      "Reengus",
    		      "Rajaldesar",
    		      "Sadulshahar",
    		      "Sambhar",
    		      "Prantij",
    		      "Mount Abu",
    		      "Mangrol",
    		      "Phulera",
    		      "Mandawa",
    		      "Pindwara",
    		      "Mandalgarh",
    		      "Takhatgarh"
    		    ],
    		    "Assam": [
    		      "Guwahati",
    		      "Silchar",
    		      "Dibrugarh",
    		      "Nagaon",
    		      "Tinsukia",
    		      "Jorhat",
    		      "Bongaigaon City",
    		      "Dhubri",
    		      "Diphu",
    		      "North Lakhimpur",
    		      "Tezpur",
    		      "Karimganj",
    		      "Sibsagar",
    		      "Goalpara",
    		      "Barpeta",
    		      "Lanka",
    		      "Lumding",
    		      "Mankachar",
    		      "Nalbari",
    		      "Rangia",
    		      "Margherita",
    		      "Mangaldoi",
    		      "Silapathar",
    		      "Mariani",
    		      "Marigaon"
    		    ],
    		    "Odisha": [
    		      "Bhubaneswar",
    		      "Cuttack",
    		      "Raurkela",
    		      "Brahmapur",
    		      "Sambalpur",
    		      "Puri",
    		      "Baleshwar Town",
    		      "Baripada Town",
    		      "Bhadrak",
    		      "Balangir",
    		      "Jharsuguda",
    		      "Bargarh",
    		      "Paradip",
    		      "Bhawanipatna",
    		      "Dhenkanal",
    		      "Barbil",
    		      "Kendujhar",
    		      "Sunabeda",
    		      "Rayagada",
    		      "Jatani",
    		      "Byasanagar",
    		      "Kendrapara",
    		      "Rajagangapur",
    		      "Parlakhemundi",
    		      "Talcher",
    		      "Sundargarh",
    		      "Phulabani",
    		      "Pattamundai",
    		      "Titlagarh",
    		      "Nabarangapur",
    		      "Soro",
    		      "Malkangiri",
    		      "Rairangpur",
    		      "Tarbha"
    		    ],
    		    "Chhattisgarh": [
    		      "Raipur",
    		      "Bhilai Nagar",
    		      "Korba",
    		      "Bilaspur",
    		      "Durg",
    		      "Rajnandgaon",
    		      "Jagdalpur",
    		      "Raigarh",
    		      "Ambikapur",
    		      "Mahasamund",
    		      "Dhamtari",
    		      "Chirmiri",
    		      "Bhatapara",
    		      "Dalli-Rajhara",
    		      "Naila Janjgir",
    		      "Tilda Newra",
    		      "Mungeli",
    		      "Manendragarh",
    		      "Sakti"
    		    ],
    		    "Jammu and Kashmir": [
    		      "Srinagar",
    		      "Jammu",
    		      "Baramula",
    		      "Anantnag",
    		      "Sopore",
    		      "KathUrban Agglomeration",
    		      "Rajauri",
    		      "Punch",
    		      "Udhampur"
    		    ],
    		    "Karnataka": [
    		      "Bengaluru",
    		      "Hubli-Dharwad",
    		      "Belagavi",
    		      "Mangaluru",
    		      "Davanagere",
    		      "Ballari",
    		      "Mysore",
    		      "Tumkur",
    		      "Shivamogga",
    		      "Raayachuru",
    		      "Robertson Pet",
    		      "Kolar",
    		      "Mandya",
    		      "Udupi",
    		      "Chikkamagaluru",
    		      "Karwar",
    		      "Ranebennuru",
    		      "Ranibennur",
    		      "Ramanagaram",
    		      "Gokak",
    		      "Yadgir",
    		      "Rabkavi Banhatti",
    		      "Shahabad",
    		      "Sirsi",
    		      "Sindhnur",
    		      "Tiptur",
    		      "Arsikere",
    		      "Nanjangud",
    		      "Sagara",
    		      "Sira",
    		      "Puttur",
    		      "Athni",
    		      "Mulbagal",
    		      "Surapura",
    		      "Siruguppa",
    		      "Mudhol",
    		      "Sidlaghatta",
    		      "Shahpur",
    		      "Saundatti-Yellamma",
    		      "Wadi",
    		      "Manvi",
    		      "Nelamangala",
    		      "Lakshmeshwar",
    		      "Ramdurg",
    		      "Nargund",
    		      "Tarikere",
    		      "Malavalli",
    		      "Savanur",
    		      "Lingsugur",
    		      "Vijayapura",
    		      "Sankeshwara",
    		      "Madikeri",
    		      "Talikota",
    		      "Sedam",
    		      "Shikaripur",
    		      "Mahalingapura",
    		      "Mudalagi",
    		      "Muddebihal",
    		      "Pavagada",
    		      "Malur",
    		      "Sindhagi",
    		      "Sanduru",
    		      "Afzalpur",
    		      "Maddur",
    		      "Madhugiri",
    		      "Tekkalakote",
    		      "Terdal",
    		      "Mudabidri",
    		      "Magadi",
    		      "Navalgund",
    		      "Shiggaon",
    		      "Shrirangapattana",
    		      "Sindagi",
    		      "Sakaleshapura",
    		      "Srinivaspur",
    		      "Ron",
    		      "Mundargi",
    		      "Sadalagi",
    		      "Piriyapatna",
    		      "Adyar"
    		    ],
    		    "Manipur": [
    		      "Imphal",
    		      "Thoubal",
    		      "Lilong",
    		      "Mayang Imphal"
    		    ],
    		    "Kerala": [
    		      "Thiruvananthapuram",
    		      "Kochi",
    		      "Kozhikode",
    		      "Kollam",
    		      "Thrissur",
    		      "Palakkad",
    		      "Alappuzha",
    		      "Malappuram",
    		      "Ponnani",
    		      "Vatakara",
    		      "Kanhangad",
    		      "Taliparamba",
    		      "Koyilandy",
    		      "Neyyattinkara",
    		      "Kayamkulam",
    		      "Nedumangad",
    		      "Kannur",
    		      "Tirur",
    		      "Kottayam",
    		      "Kasaragod",
    		      "Kunnamkulam",
    		      "Ottappalam",
    		      "Thiruvalla",
    		      "Thodupuzha",
    		      "Chalakudy",
    		      "Changanassery",
    		      "Punalur",
    		      "Nilambur",
    		      "Cherthala",
    		      "Perinthalmanna",
    		      "Mattannur",
    		      "Shoranur",
    		      "Varkala",
    		      "Paravoor",
    		      "Pathanamthitta",
    		      "Peringathur",
    		      "Attingal",
    		      "Kodungallur",
    		      "Pappinisseri",
    		      "Chittur-Thathamangalam",
    		      "Muvattupuzha",
    		      "Adoor",
    		      "Mavelikkara",
    		      "Mavoor",
    		      "Perumbavoor",
    		      "Vaikom",
    		      "Palai",
    		      "Panniyannur",
    		      "Guruvayoor",
    		      "Puthuppally",
    		      "Panamattom"
    		    ],
    		    "Delhi": [
    		      "Delhi",
    		      "New Delhi"
    		    ],
    		    "Dadra and Nagar Haveli": [
    		      "Silvassa"
    		    ],
    		    "Puducherry": [
    		      "Pondicherry",
    		      "Karaikal",
    		      "Yanam",
    		      "Mahe"
    		    ],
    		    "Uttarakhand": [
    		      "Dehradun",
    		      "Hardwar",
    		      "Haldwani-cum-Kathgodam",
    		      "Srinagar",
    		      "Kashipur",
    		      "Roorkee",
    		      "Rudrapur",
    		      "Rishikesh",
    		      "Ramnagar",
    		      "Pithoragarh",
    		      "Manglaur",
    		      "Nainital",
    		      "Mussoorie",
    		      "Tehri",
    		      "Pauri",
    		      "Nagla",
    		      "Sitarganj",
    		      "Bageshwar"
    		    ],
    		    "Uttar Pradesh": [
    		      "Lucknow",
    		      "Kanpur",
    		      "Firozabad",
    		      "Agra",
    		      "Meerut",
    		      "Varanasi",
    		      "Allahabad",
    		      "Amroha",
    		      "Moradabad",
    		      "Aligarh",
    		      "Saharanpur",
    		      "Noida",
    		      "Loni",
    		      "Jhansi",
    		      "Shahjahanpur",
    		      "Rampur",
    		      "Modinagar",
    		      "Hapur",
    		      "Etawah",
    		      "Sambhal",
    		      "Orai",
    		      "Bahraich",
    		      "Unnao",
    		      "Rae Bareli",
    		      "Lakhimpur",
    		      "Sitapur",
    		      "Lalitpur",
    		      "Pilibhit",
    		      "Chandausi",
    		      "Hardoi ",
    		      "Azamgarh",
    		      "Khair",
    		      "Sultanpur",
    		      "Tanda",
    		      "Nagina",
    		      "Shamli",
    		      "Najibabad",
    		      "Shikohabad",
    		      "Sikandrabad",
    		      "Shahabad, Hardoi",
    		      "Pilkhuwa",
    		      "Renukoot",
    		      "Vrindavan",
    		      "Ujhani",
    		      "Laharpur",
    		      "Tilhar",
    		      "Sahaswan",
    		      "Rath",
    		      "Sherkot",
    		      "Kalpi",
    		      "Tundla",
    		      "Sandila",
    		      "Nanpara",
    		      "Sardhana",
    		      "Nehtaur",
    		      "Seohara",
    		      "Padrauna",
    		      "Mathura",
    		      "Thakurdwara",
    		      "Nawabganj",
    		      "Siana",
    		      "Noorpur",
    		      "Sikandra Rao",
    		      "Puranpur",
    		      "Rudauli",
    		      "Thana Bhawan",
    		      "Palia Kalan",
    		      "Zaidpur",
    		      "Nautanwa",
    		      "Zamania",
    		      "Shikarpur, Bulandshahr",
    		      "Naugawan Sadat",
    		      "Fatehpur Sikri",
    		      "Shahabad, Rampur",
    		      "Robertsganj",
    		      "Utraula",
    		      "Sadabad",
    		      "Rasra",
    		      "Lar",
    		      "Lal Gopalganj Nindaura",
    		      "Sirsaganj",
    		      "Pihani",
    		      "Shamsabad, Agra",
    		      "Rudrapur",
    		      "Soron",
    		      "SUrban Agglomerationr",
    		      "Samdhan",
    		      "Sahjanwa",
    		      "Rampur Maniharan",
    		      "Sumerpur",
    		      "Shahganj",
    		      "Tulsipur",
    		      "Tirwaganj",
    		      "PurqUrban Agglomerationzi",
    		      "Shamsabad, Farrukhabad",
    		      "Warhapur",
    		      "Powayan",
    		      "Sandi",
    		      "Achhnera",
    		      "Naraura",
    		      "Nakur",
    		      "Sahaspur",
    		      "Safipur",
    		      "Reoti",
    		      "Sikanderpur",
    		      "Saidpur",
    		      "Sirsi",
    		      "Purwa",
    		      "Parasi",
    		      "Lalganj",
    		      "Phulpur",
    		      "Shishgarh",
    		      "Sahawar",
    		      "Samthar",
    		      "Pukhrayan",
    		      "Obra",
    		      "Niwai",
    		      "Mirzapur"
    		    ],
    		    "Bihar": [
    		      "Patna",
    		      "Gaya",
    		      "Bhagalpur",
    		      "Muzaffarpur",
    		      "Darbhanga",
    		      "Arrah",
    		      "Begusarai",
    		      "Chhapra",
    		      "Katihar",
    		      "Munger",
    		      "Purnia",
    		      "Saharsa",
    		      "Sasaram",
    		      "Hajipur",
    		      "Dehri-on-Sone",
    		      "Bettiah",
    		      "Motihari",
    		      "Bagaha",
    		      "Siwan",
    		      "Kishanganj",
    		      "Jamalpur",
    		      "Buxar",
    		      "Jehanabad",
    		      "Aurangabad",
    		      "Lakhisarai",
    		      "Nawada",
    		      "Jamui",
    		      "Sitamarhi",
    		      "Araria",
    		      "Gopalganj",
    		      "Madhubani",
    		      "Masaurhi",
    		      "Samastipur",
    		      "Mokameh",
    		      "Supaul",
    		      "Dumraon",
    		      "Arwal",
    		      "Forbesganj",
    		      "BhabUrban Agglomeration",
    		      "Narkatiaganj",
    		      "Naugachhia",
    		      "Madhepura",
    		      "Sheikhpura",
    		      "Sultanganj",
    		      "Raxaul Bazar",
    		      "Ramnagar",
    		      "Mahnar Bazar",
    		      "Warisaliganj",
    		      "Revelganj",
    		      "Rajgir",
    		      "Sonepur",
    		      "Sherghati",
    		      "Sugauli",
    		      "Makhdumpur",
    		      "Maner",
    		      "Rosera",
    		      "Nokha",
    		      "Piro",
    		      "Rafiganj",
    		      "Marhaura",
    		      "Mirganj",
    		      "Lalganj",
    		      "Murliganj",
    		      "Motipur",
    		      "Manihari",
    		      "Sheohar",
    		      "Maharajganj",
    		      "Silao",
    		      "Barh",
    		      "Asarganj"
    		    ],
    		    "Gujarat": [
    		      "Ahmedabad",
    		      "Surat",
    		      "Vadodara",
    		      "Rajkot",
    		      "Bhavnagar",
    		      "Jamnagar",
    		      "Nadiad",
    		      "Porbandar",
    		      "Anand",
    		      "Morvi",
    		      "Mahesana",
    		      "Bharuch",
    		      "Vapi",
    		      "Navsari",
    		      "Veraval",
    		      "Bhuj",
    		      "Godhra",
    		      "Palanpur",
    		      "Valsad",
    		      "Patan",
    		      "Deesa",
    		      "Amreli",
    		      "Anjar",
    		      "Dhoraji",
    		      "Khambhat",
    		      "Mahuva",
    		      "Keshod",
    		      "Wadhwan",
    		      "Ankleshwar",
    		      "Savarkundla",
    		      "Kadi",
    		      "Visnagar",
    		      "Upleta",
    		      "Una",
    		      "Sidhpur",
    		      "Unjha",
    		      "Mangrol",
    		      "Viramgam",
    		      "Modasa",
    		      "Palitana",
    		      "Petlad",
    		      "Kapadvanj",
    		      "Sihor",
    		      "Wankaner",
    		      "Limbdi",
    		      "Mandvi",
    		      "Thangadh",
    		      "Vyara",
    		      "Padra",
    		      "Lunawada",
    		      "Rajpipla",
    		      "Vapi",
    		      "Umreth",
    		      "Sanand",
    		      "Rajula",
    		      "Radhanpur",
    		      "Mahemdabad",
    		      "Ranavav",
    		      "Tharad",
    		      "Mansa",
    		      "Umbergaon",
    		      "Talaja",
    		      "Vadnagar",
    		      "Manavadar",
    		      "Salaya",
    		      "Vijapur",
    		      "Pardi",
    		      "Rapar",
    		      "Songadh",
    		      "Lathi",
    		      "Adalaj",
    		      "Chhapra",
    		      "Gandhinagar"
    		    ],
    		    "Telangana": [
    		      "Hyderabad",
    		      "Warangal",
    		      "Nizamabad",
    		      "Karimnagar",
    		      "Ramagundam",
    		      "Khammam",
    		      "Mahbubnagar",
    		      "Mancherial",
    		      "Adilabad",
    		      "Suryapet",
    		      "Jagtial",
    		      "Miryalaguda",
    		      "Nirmal",
    		      "Kamareddy",
    		      "Kothagudem",
    		      "Bodhan",
    		      "Palwancha",
    		      "Mandamarri",
    		      "Koratla",
    		      "Sircilla",
    		      "Tandur",
    		      "Siddipet",
    		      "Wanaparthy",
    		      "Kagaznagar",
    		      "Gadwal",
    		      "Sangareddy",
    		      "Bellampalle",
    		      "Bhongir",
    		      "Vikarabad",
    		      "Jangaon",
    		      "Bhadrachalam",
    		      "Bhainsa",
    		      "Farooqnagar",
    		      "Medak",
    		      "Narayanpet",
    		      "Sadasivpet",
    		      "Yellandu",
    		      "Manuguru",
    		      "Kyathampalle",
    		      "Nagarkurnool"
    		    ],
    		    "Meghalaya": [
    		      "Shillong",
    		      "Tura",
    		      "Nongstoin"
    		    ],
    		    "Himachal Praddesh": [
    		      "Manali"
    		    ],
    		    "Arunachal Pradesh": [
    		      "Naharlagun",
    		      "Pasighat"
    		    ],
    		    "Maharashtra": [
    		      "Mumbai",
    		      "Pune",
    		      "Nagpur",
    		      "Thane",
    		      "Nashik",
    		      "Kalyan-Dombivali",
    		      "Vasai-Virar",
    		      "Solapur",
    		      "Mira-Bhayandar",
    		      "Bhiwandi",
    		      "Amravati",
    		      "Nanded-Waghala",
    		      "Sangli",
    		      "Malegaon",
    		      "Akola",
    		      "Latur",
    		      "Dhule",
    		      "Ahmednagar",
    		      "Ichalkaranji",
    		      "Parbhani",
    		      "Panvel",
    		      "Yavatmal",
    		      "Achalpur",
    		      "Osmanabad",
    		      "Nandurbar",
    		      "Satara",
    		      "Wardha",
    		      "Udgir",
    		      "Aurangabad",
    		      "Amalner",
    		      "Akot",
    		      "Pandharpur",
    		      "Shrirampur",
    		      "Parli",
    		      "Washim",
    		      "Ambejogai",
    		      "Manmad",
    		      "Ratnagiri",
    		      "Uran Islampur",
    		      "Pusad",
    		      "Sangamner",
    		      "Shirpur-Warwade",
    		      "Malkapur",
    		      "Wani",
    		      "Lonavla",
    		      "Talegaon Dabhade",
    		      "Anjangaon",
    		      "Umred",
    		      "Palghar",
    		      "Shegaon",
    		      "Ozar",
    		      "Phaltan",
    		      "Yevla",
    		      "Shahade",
    		      "Vita",
    		      "Umarkhed",
    		      "Warora",
    		      "Pachora",
    		      "Tumsar",
    		      "Manjlegaon",
    		      "Sillod",
    		      "Arvi",
    		      "Nandura",
    		      "Vaijapur",
    		      "Wadgaon Road",
    		      "Sailu",
    		      "Murtijapur",
    		      "Tasgaon",
    		      "Mehkar",
    		      "Yawal",
    		      "Pulgaon",
    		      "Nilanga",
    		      "Wai",
    		      "Umarga",
    		      "Paithan",
    		      "Rahuri",
    		      "Nawapur",
    		      "Tuljapur",
    		      "Morshi",
    		      "Purna",
    		      "Satana",
    		      "Pathri",
    		      "Sinnar",
    		      "Uchgaon",
    		      "Uran",
    		      "Pen",
    		      "Karjat",
    		      "Manwath",
    		      "Partur",
    		      "Sangole",
    		      "Mangrulpir",
    		      "Risod",
    		      "Shirur",
    		      "Savner",
    		      "Sasvad",
    		      "Pandharkaoda",
    		      "Talode",
    		      "Shrigonda",
    		      "Shirdi",
    		      "Raver",
    		      "Mukhed",
    		      "Rajura",
    		      "Vadgaon Kasba",
    		      "Tirora",
    		      "Mahad",
    		      "Lonar",
    		      "Sawantwadi",
    		      "Pathardi",
    		      "Pauni",
    		      "Ramtek",
    		      "Mul",
    		      "Soyagaon",
    		      "Mangalvedhe",
    		      "Narkhed",
    		      "Shendurjana",
    		      "Patur",
    		      "Mhaswad",
    		      "Loha",
    		      "Nandgaon",
    		      "Warud"
    		    ],
    		    "Goa": [
    		      "Marmagao",
    		      "Panaji",
    		      "Margao",
    		      "Mapusa"
    		    ],
    		    "West Bengal": [
    		      "Kolkata",
    		      "Siliguri",
    		      "Asansol",
    		      "Raghunathganj",
    		      "Kharagpur",
    		      "Naihati",
    		      "English Bazar",
    		      "Baharampur",
    		      "Hugli-Chinsurah",
    		      "Raiganj",
    		      "Jalpaiguri",
    		      "Santipur",
    		      "Balurghat",
    		      "Medinipur",
    		      "Habra",
    		      "Ranaghat",
    		      "Bankura",
    		      "Nabadwip",
    		      "Darjiling",
    		      "Purulia",
    		      "Arambagh",
    		      "Tamluk",
    		      "AlipurdUrban Agglomerationr",
    		      "Suri",
    		      "Jhargram",
    		      "Gangarampur",
    		      "Rampurhat",
    		      "Kalimpong",
    		      "Sainthia",
    		      "Taki",
    		      "Murshidabad",
    		      "Memari",
    		      "Paschim Punropara",
    		      "Tarakeswar",
    		      "Sonamukhi",
    		      "PandUrban Agglomeration",
    		      "Mainaguri",
    		      "Malda",
    		      "Panchla",
    		      "Raghunathpur",
    		      "Mathabhanga",
    		      "Monoharpur",
    		      "Srirampore",
    		      "Adra"
    		    ]
        // Add more states and cities as needed
    };

    // Function to populate the city dropdown based on the selected state
    function populateCities() {
        const stateDropdown = document.getElementById("stateDropdown");
        const cityDropdown = document.getElementById("cityDropdown");

        // Get the selected state
        const selectedState = stateDropdown.value;

        // Clear the current city options
        cityDropdown.innerHTML = '<option value="">Select City</option>';

        // Populate city dropdown if a state is selected
        if (selectedState && citiesByState[selectedState]) {
            citiesByState[selectedState].forEach(city => {
                const option = document.createElement("option");
                option.value = city;
                option.textContent = city;
                cityDropdown.appendChild(option);
            });
        }
    }
</script>

</body>

</html>