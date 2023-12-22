<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<link rel="stylesheet" href="<c:url value="/resources/css/mycss.css"/>">
<style>
	body{
		background-color:black!important;
	}
	input{
		border-bottom: 1px solid!important;
	}
</style>
<script src="<c:url value="/resources/js/myJs.js"/>"></script>

</head>
<body>

	<div class="row">
		<div class="col-md-5 text-center"
			style="height: 60em; background-color: black;">
			<img style="height: 30em;" alt=""
				src="<c:url value="/resources/image/sicu_aura_.jpg"/>">
			<h3 class="text-center text-white">
				Feel <span style="color: green;">Safe</span> Everywhere
			</h3>
			<br> <br>
			<h4 class="text-center text-white">
				# Safe-<span style="color: green;">T</span>-Fast
			</h4>

		</div>
		<div class="col-md-7">
			<div class="card">
				<div class="card-header bg-white mb-5">
					<div class="row">
						<div class="col-md-4">
							<img style="height: 10em;alt="
								" src="<c:url value="/resources/image/doctor_logo.jpg"/>">
						</div>
						<div class="col-md-8 ">
							<a class="btn" href="registration"><h1 class="my-5">Sign
									Up</h1></a> <a class="btn" href="login"><h1 class="my-5">/
									Login</h1></a>
						</div>
					</div>


				</div>
				<div class="card-body">
					<form id="reg-form" action="registerHandler" method="post" enctype="multipart/form-data">
						<!-- 1st row -->
						<div class="form-row">

							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="hospitalname"
									name="hospitalname" placeholder="Hospital Name">
							</div>
							<div class="form-group col-md-6">
								<input type="email" class="form-control" id="emailid"
									name="emailid" placeholder="Email Id">
							</div>

						</div>
						<!--2nd row  -->
						<br>
						<div class="form-row">

							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="address"
									name="address" placeholder="Address">
							</div>
							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="phonenumber"
									name="phonenumber" placeholder="Phone Number">
							</div>

						</div>
						<!-- 3rd row -->
						<br>
						<div class="form-row">

							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="city" name="city"
									placeholder="City">
							</div>
							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="regnumber"
									name="regnumber" placeholder="Hospital Registration Number">
							</div>

						</div>
						<!-- 4th row -->
						<br>
						<div class="form-row">

							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="state" name="state"
									placeholder="State">
							</div>
							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="emgnumber"
									name="emgnumber" placeholder="Emergency-Ward Number">
							</div>

						</div>
						<!-- 5th row -->
						<br>
						<div class="form-row">

							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="pincode"
									name="pincode" placeholder="Pincode">
							</div>
							<div class="input-group col-md-6">
								<div class="custom-file">
									<input type="file" class="custom-file-input"
										id="certificate" name="certificate" aria-describedby="certificate">
									<label class="custom-file-label" for="certificate" >Registration Certificate
										Upload</label>
								</div>
							</div>

						</div>
						<!-- 6th row -->
						<br>
						<div class="form-row">

							<div class="form-group col-md-6">
								<input type="date" class="form-control" id="hospitalregdate"
									name="hospitalregdate"
									placeholder="Hospital Registration Date(dd/mm/yyyy)">
							</div>
							<div class="form-group col-md-6">
								<input  id="pass" type="password" class="form-control" id="password"
									name="password" placeholder="Create Password" required>
							</div>

						</div>
						<!-- 7th row -->
						<br>
						<div class="form-row">

							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="numofambulance"
									name="numofambulance"
									placeholder="Number Of Ambulance Avaiable">
							</div>
							<div class="form-group col-md-6">
								<input id="cnf_pass"type="password" class="form-control" id="cnfpassword"
									name="cnfpassword" placeholder="Confirm Password" onkeyup="validate_password()" required>
									<span id="wrong_pass_alert"></span>
							</div>

						</div>
						<br>
						<div id="loader" class="container text-center" hidden=true>
							<p><i class="fas fa-refresh fa-3x fa-spin"></i></p>
						</div>
						<div class="conatiner text-center">
							<button id="submit-button" class="btn btn-outline-secondary btn-lg">Sign Up</button>
						</div>


					</form>
					<br>
				</div>

				<div class="card-footer bg-white ">
					<p class="text-center ">Terms and conditions privacy policy</p>
				</div>
			</div>





		</div>
	</div>


</body>
</html>