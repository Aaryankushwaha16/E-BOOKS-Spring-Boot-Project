<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Book addCart</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row pt-2">
			
			<div class="col-md-12">
				<div class="card">
					<div class="card-body">
							
							<h3 class="text-center text-success mb-3">Your Details for Order</h3>
						
							<form class="row g-3" action="submituser" method="post">
							
							   <div class="col-md-6">
							    <label for="inputName" class="form-label">Name</label>
							    <input type="text" name="name" class="form-control" id="inputName">
							   </div>	
							
							  <div class="col-md-6">
							    <label for="inputEmail4" class="form-label">Email</label>
							    <input type="email" name="email" class="form-control" id="inputEmail4">
							  </div>
							 
							  
							  <div class="col-md-6">
							    <label for="inputPhone" class="form-label">Phone Number</label>
							    <input type="number" name="phone" class="form-control" id="inputPhone">
							  </div>
							  <div class="col-md-6">
							    <label for="inputAddress" class="form-label">Address</label>
							    <input type="text" name="address" class="form-control" id="inputAddress">
							  </div>
							  
							  <div class="col-md-6">
							    <label for="inputLandmark" class="form-label">Landmark</label>
							    <input type="text" name="landmark" class="form-control" id="inputLandmark">
							  </div>
							  <div class="col-md-6">
							    <label for="inputCity" class="form-label">City</label>
							    <input type="text" name="city" class="form-control" id="inputCity">
							  </div>
							  
							  <div class="col-md-6">
							    <label for="inputState" class="form-label">State</label>
							    <input type="text" name="state" class="form-control" id="inputState">
							  </div>
							  <div class="col-md-6">
							    <label for="inputPin" class="form-label">Pin Code</label>
							    <input type="text" name="pincode"class="form-control" id="inputPin">
							  </div>
							  
							  
							  <div class="text-center mt-1 mb-2">
								<button type="submit" class="btn btn-primary">Add User</button>
								
							</div>
							 </form>
						    
					</div>
				</div>
			
			</div>
			
		</div>
	</div>
	
</body>
</html>







<%--
<div class="row m-3">
			<div class="col-md-2 mb-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/java.jpg"
							style="width: 150px; height: 150px" class="img-thumblin">

						<p>Java Programming</p>
						<p>Josh Thompson</p>
						<p>Categories: New</p>
						
						<div class="columns">
							
							<a href="" class="btn btn-success btn-sm">View Details</a>
							<a href="" class="btn btn-success btn-sm px-3">$159</a>
							<br><br>
							<a href="order" class="btn btn-danger btn-sm">Order Now</a>
						</div>
					</div>
				</div>
			</div>

 --%>