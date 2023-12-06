<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Book View All</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	
	
	<div class="container">
		<div class="row pt-2">
			<div class="col-md-6">
				<div class="card bg-white">
					<div class="card-body">
		<center>			
					<img alt="" src="books/${obj.img}"
							style="width: 200px; height: 200px" class="img-thumblin">


						<p>Book Name: ${obj.bname}</p>
						<p>Author Name: ${obj.writer}</p>
						<p>Categories: ${obj.category}</p>
</center>					
					
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
							
							<h3 class="text-center mb-3">${obj.bname}</h3>
							<center>
							<h5>Author:${obj.writer}</h5>
							
							<a href="addToCart?id=${obj.id}" class="btn btn-success btn-sm">Add Cart</a>		
							<a href="" class="btn btn-success btn-sm">$${obj.price}</a>
						    
						</center>
							
						    
					</div>
				</div>
			
			</div>
			
		</div>
	</div>
	

</body>
</html>