<!--  
 * Ibrahim Ali
 * 301022172
 * 18-02-2021
 * */
 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<title>Results</title>
	<jsp:include page="/head.jsp"></jsp:include>
</head>
<body>
	<main class="container">
		<div class="row text-center">
	       	<div class="col-12">
				<div class="row">
					<h1>Thank you for your registration.</h1>
				</div>
				<div class="row p-3 g-3">
				  	
				  	<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">First Name: </label>
							</div>
							<div class="col-8">
								<span class="form-control">${firstName}</span>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">Last Name: </label>
							</div>
							<div class="col-8">
								<span class="form-control">${lastName}</span>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">Street Address: </label>
							</div>
							<div class="col-8">
								<span class="form-control">${streetAddress}</span>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">City: </label>
							</div>
							<div class="col-8">
								<span class="form-control">${city}</span>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">Province: </label>
							</div>
							<div class="col-8">
								 <span class="form-control">${province}</span>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">Postal Code: </label>
							</div>
							<div class="col-8">
								<span class="form-control">${postalCode}</span>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">Phone Number: </label>
							</div>
							<div class="col-8">
								 <span class="form-control">(${phoneNumber1}) ${phoneNumber2}-${phoneNumber3}</span>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">Email: </label>
							</div>
							<div class="col-8">
								<span class="form-control">${email}</span>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">Membership </label>
							</div>
							<div class="col-8">
								<span class="form-control">${membership.size() != 0 ? membership : ""}</span>
							</div>
							
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">Payment Type</label>
							</div>
							<div class="col-8">
								<span class="form-control">${creditCardRadioBtns}</span>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row text-center">
							 <div class="col-12">
								<a href="${pageContext.request.contextPath}/" class="btn btn-large btn-success">Back to index page</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- /.container -->
</body>
</html>