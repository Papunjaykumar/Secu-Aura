<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<link rel="stylesheet" href="<c:url value="/resources/css/mycss.css"/>" />
<style>
body {
	background-color: black !important;
}

input {
	border-bottom: 1px solid !important;
}

#my_camera {
	width: 320px;
	height: 240px;
	border: 1px solid black;
}
</style>
<script src="<c:url value="/resources/js/myJs.js"/>"></script>
<!-- webcam js -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/webcamjs/1.0.26/webcam.min.js"
	integrity="sha512-dQIiHSl2hr3NWKKLycPndtpbh5iaHLo6MwrXm7F0FM5e+kL2U16oE9uIwPHUl6fQBeCthiEuV/rzP3MiAB8Vfw=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

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
					<div class="container text-center">
						<div id="my_camera" class="mx-auto"></div>
						<input id="take_snap" type=button value="Capture" class="btn btn-primary mt-5"
							onClick="take_snapshot()">
						<div id="results"></div>
						<a id="retake" href="#" class="btn btn-danger my-5 " onclick="retake()">retake</a>
						<a id="continue" href="${pageContext.request.contextPath }/show_detail" class="btn btn-success my-5 ml-5" onclick="continuebtn()" >Continue</a>
					</div>

				</div>


				<div class="card-footer bg-white ">
					<p class="text-center ">Terms and conditions privacy policy</p>
				</div>
			</div>





		</div>
	</div>

	<!-- Configure a few settings and attach camera -->
	<script>
		$('#retake').hide()
		$('#continue').hide()
		// load webcam
		Webcam.set({
			width : 320,
			height : 240,
			image_format : 'jpeg',
			jpeg_quality : 90
		});
		Webcam.attach('#my_camera');

		function take_snapshot() {

			// take snapshot and get image data
			Webcam.snap(function(data_uri) {
						// display results in page
						document.getElementById('results').innerHTML = '<img src="'+data_uri+'"/>';
						$('#results').show();
					});
			$('#my_camera').hide();
			$('#take_snap').hide();
			$('#retake').show();
			$('#continue').show();
			Webcam.reset()

		}
		
		function retake(){
			$('#results').hide();
			$('#my_camera').show();
			$('#take_snap').show();
			$('#retake').hide();
			$('#continue').hide();
			Webcam.set({
				width : 320,
				height : 240,
				image_format : 'jpeg',
				jpeg_quality : 90
			});
			Webcam.attach('#my_camera');
			
		}
		function continuebtn(){
			console.log(window.location.href);
		}
		
		
	</script>



</body>
</html>