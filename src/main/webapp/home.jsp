<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>E-Book Center</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("images/ebook1.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
.crd-ho:hover{
background-color:#f5f7f6;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid back-img mt-1">
		<i><h2 class="text-white text-center pt-4">E-Book Management System</h2></i>
	</div>

	<br>

 
	<div class="container">
	
	<!--  
		<h3 class="text-center" id="Top Demanding Books">Top Demanding Books</h3>

		<br>
 
<div class="container-fluid">
<div class="row">
		
		<c:forEach items="${object}" var="book">
				
			<div class="col-md-3 mb-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/${book.img}"
							style="width: 200px; height: 200px" class="img-thumblin">

						<p>${book.bname}</p>
						<p>${book.writer}</p>
						<p>Categories:${book.category}</p>
						
						<div class="columns">
							<a href="addToCart?id=${book.id}&email=<%=id%>" class="btn btn-success btn-sm">Add to Cart</a>
							<a href="viewdetail?id=${book.id}" class="btn btn-success btn-sm">View Details</a>
							<a href="" class="btn btn-success btn-sm">$${book.price}</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
		</div>
		
		
	-->	
		
			
<!-- 	
			
			<div class="text-center mt-1 mb-2">
			<a href="viewAll" class="btn btn-danger btn-sm text-white px-4">View All</a>
		</div>
		
 -->
		
<!-- End of Top Demanding Books-->


<!-- <hr>  -->	
	
	<h3 class="text-center" id="New Books">New Books</h3>
	<br>
	<br>



<!-- Start of New Books -->		

<div class="container-fluid">
<div class="row">
		
		<c:forEach items="${object2}" var="newBook">
				
			<div class="col-md-3 mb-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/${newBook.img}"
							style="width: 200px; height: 200px" class="img-thumblin">

						<p>${newBook.bname}</p>
						<p>${newBook.writer}</p>
						<p>Categories:${newBook.category}</p>
						
						<div class="columns">
							<a href="addToCart?id=${newBook.id}&email=<%=id%>" class="btn btn-success btn-sm">Add to Cart</a>
							<a href="viewdetail?id=${newBook.id}" class="btn btn-success btn-sm">View Details</a>
							<a href="" class="btn btn-success btn-sm">$${newBook.price}</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
		</div>
	
			
			
			
			
			<div class="text-center mt-1 mb-2">
			<a href="viewAll" class="btn btn-danger btn-sm text-white px-4">View All</a>
		</div>
	<!-- ---------------------------------------- -->	
	
	
	
	
	<!-- End of New Books -->

	<hr>
	
	<h3 class="text-center" id="Old Books">Old Books</h3>
	<br>
	<br>



<!-- Start of Old Books -->		
			
			<div class="container-fluid">
<div class="row">
		
		<c:forEach items="${object3}" var="oldBook">
				
			<div class="col-md-3 mb-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/${oldBook.img}"
							style="width: 200px; height: 200px" class="img-thumblin">

						<p>${oldBook.bname}</p>
						<p>${oldBook.writer}</p>
						<p>Categories:${oldBook.category}</p>
						
						<div class="columns">
							<!-- <a href="addToCart?id=${oldBook.id}&email=<%=id%>" class="btn btn-success btn-sm">Add to Cart</a> -->
							<a href="viewdetail?id=${oldBook.id}" class="btn btn-success btn-sm">View Details</a>
							<a href="" class="btn btn-success btn-sm">$${oldBook.price}</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
		</div>
			
	<!-- ---------------------------------------- -->		
			
		</div>
		
		<div class="text-center mt-1 mb-2">
			<a href="viewAll" class="btn btn-danger btn-sm text-white px-4">View All</a>
		</div>
		
	</div>
	
	
<div id="Contact Us">
<%@include file="footer.jsp"%>
</div>
 


</body>
</html>