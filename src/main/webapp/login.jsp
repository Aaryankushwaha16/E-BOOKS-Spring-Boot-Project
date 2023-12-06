<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Book Login</title>
<%@include file="allCss.jsp"%>
</head>
<body>

<%@include file="navbar.jsp"%>

<div class="conatiner mt-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					
						<div class="text-center"><h4>User Login</h4></div>
						
						<form action="login" method="get">
						  
						  <div class="mb-3">
						    <label for="exampleInputEmail1" class="form-label">Email Address*</label>
						    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">
						  </div>
						 						  
						  <div class="mb-3">
						    <label for="exampleInputPassword1" class="form-label">Password*</label>
						    <input type="password" name="password" class="form-control" id="exampleInputPassword1"  required="required">
						  </div>
						  
						  <div class="mb-3 form-check">
						    <input type="checkbox" class="form-check-input" id="exampleCheck1">
						    <label class="form-check-label" for="exampleCheck1">Check me out</label>
						  </div>
						  <center><button type="submit" class="btn btn-primary">Log In</button></center>
						</form>
						If not registered <a href="Register">Click Here<a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>