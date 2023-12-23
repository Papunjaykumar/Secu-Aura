
<!-- validating session -->
<%@page import="com.secuaura.entities.Hospital"%>
<%
Hospital hospital = (Hospital) session.getAttribute("hospital");
if (hospital == null) {
	response.sendRedirect(session.getServletContext().getContextPath() + "/login");
}
%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<link rel="stylesheet" href="<c:url value="/resources/css/mycss.css"/>" />

<script src="<c:url value="/resources/js/myJs.js"/>"></script>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark  bg-mybackground">
		<a class="navbar-brand" href="#"><img style="height: 3em;" alt=""
			src="<c:url value="/resources/image/sicu_aura.webp"/>"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Secu-Aura
						<span class="sr-only">(current)</span>
				</a></li>
				
			</ul>
			<ul class="navbar-nav mr-right">

				<li class="nav-item"><a class="nav-link "
					href="${pageContext.request.contextPath }/logout"><i
						class="fa fa-user-minus "></i> Logout</a></li>
			</ul>

		</div>
	</nav>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-6">
						<h1 class="my-5	">Hospital Registrations</h1>

					</div>

					<div class="col-md-4">
						<form action="search" class="form-inline my-2 my-lg-0">
							<input class="form-control mr-2 my-5" type="search"
								placeholder="Search" aria-label="Search" name="search">
							<button class="btn btn-outline-success my-2 my-sm-0 "
								type="submit">Search</button>
						</form>

					</div>
					<div class="col-md-2">
						<div class="btn-group sort-btn my-5">
							<button class="btn btn-outline-success " type="button"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">Sort</button>
							<button class="btn btn-outline-success dropdown-toggle" data-sort="none">
								<i class="fa fa-sort"></i>
							</button>
							<!-- .dropdown-toggle adds rounded borders and reduces padding. It does not trigger dropdowns. -->
							<ul class="dropdown-menu">
								<li><a href="sortbyname" tabindex="-1" data-type="alpha">Name</a></li>
								<li><a href="sortbydate" tabindex="-1" data-type="numeric">Date</a></li>
							</ul>
						</div>
					</div>
				</div>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">No</th>
							<th scope="col">Date</th>
							<th scope="col">Hospital Name</th>
							<th scope="col">Email</th>
							<th scope="col">Address</th>
							<th scope="col">Phone No.</th>
							<th scope="col">City</th>
							<th scope="col">State</th>
							<th scope="col">Pincode</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${hospitals }" var="h">
							<tr>
								<th scope="row">${h.hid }</th>
								<td>${h.hospitalregdate }</td>
								<td>${h.hospitalname }</td>
								<td>${h.emailid }</td>
								<td>${h.address })</td>
								<td>${h.phonenumber }</td>
								<td>${h.city }</td>
								<td>${h.state }</td>
								<td>${h.pincode }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</body>
</html>