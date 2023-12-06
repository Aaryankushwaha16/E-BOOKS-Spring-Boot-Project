<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Book View All</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="row">
	<c:forEach items="${object}" var="book">
			<div class="col-md-3 mb-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/${book.img}"
							style="width: 200px; height: 200px" class="img-thumblin">

						<p>${book.bname}</p>
						<p>${book.writer}</p>
						<p>Categories: New</p>
						
						<div class="columns">
							<a href="addToCart?id=${book.id}&email=<%=id%>" class="btn btn-success btn-sm">Add to Cart</a>
							<a href="viewdetail?id=${book.id}" class="btn btn-success btn-sm">View Details</a>
							<button class="btn btn-success btn-sm">$${book.price}</button>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>	
</div>
</body>
</html>