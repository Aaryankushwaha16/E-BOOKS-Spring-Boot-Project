<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Book search</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="row">
	<c:forEach items="${object4}" var="find">
			<div class="col-md-3 mb-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/${find.img}"
							style="width: 200px; height: 200px" class="img-thumblin">

						<p>${find.bname}</p>
						<p>${find.writer}</p>
						<p>Categories: ${find.category}</p>
						
						<div class="columns">
							<a href="addToCart?id=${find.id}&email=<%=id%>" class="btn btn-success btn-sm">Add to Cart</a>
							<a href="viewdetail?id=${find.id}" class="btn btn-success btn-sm">View Details</a>
							<button class="btn btn-success btn-sm">$${find.price}</button>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>	
</div>
</body>
</html>