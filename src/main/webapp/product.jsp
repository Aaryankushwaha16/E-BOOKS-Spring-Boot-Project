<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminHome</title>
<%@include file="allCss.jsp"%>
</head>
<body>

<%@include file="adminNavbar.jsp"%>

<div class="container-fluid">
<div class="row">
		<table border="2" align="center" width="80%" height="80%">
		<tr>
		<td>Image</td><td>Product Name</td><td>Product Write</td><td>Price</td><td>Category</td><td>Action</td>
		
		</tr>
		<c:forEach items="${obj}" var="book">
		<tr>
		<td>
				
			     			<img alt="" src="books/${book.img}"
							style="width: 200px; height: 200px" class="img-thumblin">
		</td>
		<td>${book.bname}</td>
		<td>${book.writer}</td>
		<td>${book.price}</td>
		<td>${book.category}</td>
						
		<td>	
							<!-- <a href="addToCart?id=${oldBook.id}&email=<%=id%>" class="btn btn-success btn-sm">Add to Cart</a> -->
							<a href="delete?id=${book.id}" class="btn btn-success btn-sm">Delete</a>
							<a href="editproduct?id=${book.id}" class="btn btn-success btn-sm">Edit</a>
					
		</td>				
			
		</c:forEach>
		</table>
		</div>
		</div>

</body>
</html>