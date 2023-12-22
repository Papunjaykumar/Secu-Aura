<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<link rel="stylesheet" href="<c:url value="/resources/css/mycss.css"/>"/>
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
			<h3 class="text-center text-white">Feel <span style="color:green;">Safe</span> Everywhere</h3>
			<br> <br>
			<h4 class="text-center text-white"># Safe-<span style="color:green;">T</span>-Fast</h4>

		</div>
		<div class="col-md-7">
			<div class="card">
				<div class="card-header bg-white mb-5">
					<div class="row">
						<div class="col-md-4">
							<img style="height: 10em;alt="" src="<c:url value="/resources/image/doctor_logo.jpg"/>">
						</div>
						<div class="col-md-8 ">
							<a  class="btn"href="registration"><h1 class="my-5">Sign Up</h1></a>
							<a  class="btn"href="login"><h1 class="my-5">/  Login</h1></a>
						</div>
					</div>
					
					
				</div>
				<div class="card-body">
					<div class="card col-md-6 offset-md-3 my-4 " style="border-radius: 5%;">
						<div class="card-header bg-white">
							<h3 class="text-center">Welcome to Sicu-aura</h3>
							<p class="text-center" style="color:grey">Your one step safety solutions using innovative technology</p>
						</div>
						<form action="loginhanlde" method="post">
							<div class="card-body">
								<div class="form-group">
									<input type="text" class="form-control" id="hospitalname"
									name="hospitalname" placeholder="Hospital Name">
								</div>
								<br>
								<div class="form-group">
									<input type="email" class="form-control" id="emailid"
									name="emailid" placeholder="Email Id">
								</div>
								<br>
								<div class="form-group">
									<input type="password" class="form-control" id="password"
									name="password" placeholder="Password">
								</div>
								<br>
								<div class="form-group">
									<input type="text" class="form-control" id="specailaccesscode"
									name="specailaccesscode" placeholder="Special Access Code">
								</div>
							
							</div>
							<div class="card-footer text-center bg-white">
								<button class="btn btn-success btn-lg">Login</button>
							</div>
						</form>
						
					</div>
				</div>
				<br>
				<br>
				
				<div class="card-footer bg-white ">
					<p class="text-center ">Terms and conditions privacy
						policy</p>
				</div>
			</div>





		</div>
	</div>


</body>
</html>