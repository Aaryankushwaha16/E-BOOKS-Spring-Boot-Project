<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Book Registeration</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="adminNavbar.jsp"%>

	<div class="conatiner mt-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					
						<div class="text-center"><h4>Add Book</h4></div>
						
						<form action="submitbook" method="get">
						  <div class="mb-3">
						    <label for="exampleInputEmail1" class="form-label">Book Name*</label>
						    <input type="text" name="bname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">
						  </div>
						  <div class="mb-3">
						    <label for="exampleInputEmail1" class="form-label">Book writer*</label>
						    <input type="text" name="writer" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">
						  </div>
						  <div class="mb-3">
						    <label for="exampleInputCategory" cltegoryass="form-label">Category*</label>
						    <input type="text" name="category" class="form-control" id="exampleInputCategory" aria-describedby="emailHelp">
						  </div>
						  <div class="mb-3">
						    <label for="exampleInputEmail1" class="form-label">Price</label>
						    <input type="number" name="price" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
						  </div>
						  
						  <div class="mb-3">
						    <label for="exampleInputPassword1" class="form-label">Image name*</label>
						    <input type="text" name="img" class="form-control" id="exampleInputPassword1"  required="required">
						  </div>
						 
						  <center><button type="submit" class="btn btn-primary">Add book</button></center>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>