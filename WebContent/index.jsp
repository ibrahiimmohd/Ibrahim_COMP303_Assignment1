<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html lang="en">

<head>
<title>GYM Registration Form</title>
<jsp:include page="./head.jsp"></jsp:include>
</head>

<body class="bg-success">
	<main class="container bg-light">
		<div class="row">
        	<div class="col-12">
				<div class="row text-center">
				    <div class="col-12">
						<h1>GYM Registration Form</h1>
					</div>
				</div>
				<form method="POST" class="row p-3 g-3" action="${pageContext.request.contextPath}/submit">
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">First Name: </label>
							</div>
							<div class="col-8">
								<input type="text" class="form-control" id="firstName" name="firstName" value="" placeholder="First Name" required>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">Last Name: </label>
							</div>
							<div class="col-8">
								<input type="text" class="form-control" id="lastName" name="lastName" value="" placeholder="last Name" required>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">Street Address: </label>
							</div>
							<div class="col-8">
								<input type="text" class="form-control" id="streetAddress" name="streetAddress" value="" placeholder="Street Address">
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">City: </label>
							</div>
							<div class="col-8">
								<input type="text" class="form-control" id="city" name="city" value="" placeholder="City">
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">Province: </label>
							</div>
							<div class="col-8">
								 <select id="province" name="province" class="form-control">
							        <option value="Alberta">Alberta</option>
  								        <option value="British Columbia">British Columbia</option>
  								        <option value="Manitoba">Manitoba</option>
  								        <option value="New Brunswick">New Brunswick</option>
  								        <option value="Newfoundland and Labrador">Newfoundland and Labrador</option>
  								        <option value="Northwest Territories">Northwest Territories</option>
  								        <option value="Nova Scotia">Nova Scotia</option>
  								        <option value="Nunavut">Nunavut</option>
  								        <option value="Ontario" selected>Ontario</option>
  								        <option value="rince Edward Island">Prince Edward Island</option>
  								        <option value="Quebec">Quebec</option>
  								        <option value="Saskatchewan">Saskatchewan</option>
							        <option value="Yukon">Yukon</option>								        
							      </select>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">Postal Code: </label>
							</div>
							<div class="col-8">
								<input type="text" class="form-control" id="postalCode" name="postalCode" value="" placeholder="Postal Code">
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">Phone Number: </label>
							</div>
							<div class="col-2">
								<input type="text" min="1" max="3" onKeyPress="if(this.value.length==3) return false;" class="form-control" id="phoneNumber1" name="phoneNumber1" value="" placeholder="XXX" required>
							</div>
							<div class="col-2">
								<input type="text" min="1" max="3" onKeyPress="if(this.value.length==3) return false;" class="form-control" id="phoneNumber2" name="phoneNumber2" value="" placeholder="XXX" required>
							</div>
							<div class="col-4">
								<input type="text" min="1" max="4" onKeyPress="if(this.value.length==4) return false;" class="form-control" id="phoneNumber3" name="phoneNumber3" value="" placeholder="XXXX" required>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-4">
								<label style="font-weight: bold;">Your Email: </label>
							</div>
							<div class="col-8">
								<input type="email" class="form-control" id="email" name="email" value="" placeholder="Your Email" required>
							</div>
						</div>
					</div>
					<br><br><br><br>
					<div class="col-12">
						<div class="row">
							<div class="col-2">
								<label style="font-weight: bold;">Membership</label>
							</div>
							<div class="col-3">
							<ol>
								<li>
									<div class="form-check">
									  	<label class="form-check-label">
									        <input class="form-check-input" type="checkbox" name="yearly" value="Yearly">Yearly
										    <span class="form-check-sign">
									            <span class="check"></span>
									        </span>
									    </label>
									</div>
								</li>
								<li>
									<div class="form-check">
									    <label class="form-check-label">
									        <input class="form-check-input" type="checkbox" name="monthly" value="Monthly">Monthly
									        <span class="form-check-sign">
									            <span class="check"></span>
									        </span>
									    </label>								
								    </div>
								</li>
								<li>
									<div class="form-check">
									    <label class="form-check-label">
									        <input class="form-check-input" type="checkbox" name="weekly" value="Weekly">Weekly
									        <span class="form-check-sign">
									            <span class="check"></span>
									        </span>
									    </label>
									</div>
								</li>
							</ol>
							</div>
						</div>
					</div>
					<br><br><br><br><br>
					<div class="col-12">
						<div class="row">
							<div class="col-3">
								<label style="font-weight: bold;">How would you like to pay? </label>
							</div>
							<div class="col-8">
								<label style="font-weight: bold;">Credit Card: </label>
								<ul>
									<li>
										<div class="form-check form-check-radio form-check-inline">
										  <label class="form-check-label">
										    <input class="form-check-input" type="radio" name="creditCardRadioBtns" id="masterCard" value="Master Card"> Master Card
										    <span class="circle">
										        <span class="check"></span>
										    </span>
										  </label>
										</div>
									</li>
									<li>
										<div class="form-check form-check-radio form-check-inline">
										  <label class="form-check-label">
										    <input class="form-check-input" type="radio" name="creditCardRadioBtns" id="visa" value="Visa"> Visa
										    <span class="circle">
										        <span class="check"></span>
										    </span>
										  </label>
										</div>
									</li>
									<li>
										<div class="form-check form-check-radio form-check-inline">
										  <label class="form-check-label">
										    <input class="form-check-input" type="radio" name="creditCardRadioBtns" id="americanExpress" value="American Express"> American Express
										    <span class="circle">
										        <span class="check"></span>
										    </span>
										  </label>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="row text-center">
							 <div class="col-12">
								<button type="submit" class="btn btn-lg btn-success">Submit</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		
	</main>
	<!-- /.container -->
</body>

</html>