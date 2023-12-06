<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Book allCart</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row pt-2">
			<div class="col-md-12">
				<div class="card bg-white">
					<div class="card-body">

						<h3 class="text-center text-success mb-3">Here is Your
							Selected Item</h3>
							
							<!-- 
							
							double totalPrice =0.00;
							<c:forEach items="${obj}" var="book">
							totalPrice= totalPrice+c.getPrice();
							</c:forEach>  %>
							 -->
							
							
							
							
						<table class="table">
							<thead>
								<tr class="bg-info">
									<th scope="col">Book Name</th>
									<th scope="col">Author</th>
									<th scope="col">Price</th>
									<th scope="col">Remove</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${obj}" var="book">
								
									<tr>
										<th scope="row">${book.bookdata.bname}</th>
										<td>${book.bookdata.writer}</td>
										<td>$${book.bookdata.price}</td>
										<c:set var="total" value="${total+book.bookdata.price}"/>
										<c:set var="bid" value="${bid},${book.bookdata.id}"/>
										<c:set var="cid" value="${cid},${book.id}"/>
										<td><a href="remove?id=${book.id}" class="btn btn-danger">Remove</a></td>
									    
									</tr>
								</c:forEach>
							</tbody>

							<tfoot>
								<tr class="bg-secondary text-white">
									<th scope="col">Total</th>
									<td></td>
									<td>$<c:out value="${total}"/></td>
									<td></td>
								</tr>
							</tfoot>
						</table>

					</div>
				</div>
			</div>


			<div>
				<h6 class="text-danger">* Only Cash On Delivery Payment Method
					is Available</h6>
			</div>

		</div>
		<center>
			<a href="completeOrder?email=<%=id%>&bid=${bid}&total=${total}&cid=${cid}" class="btn btn-success mt-5 al" >Complete Your Order Now</a>
		</center>
		
		
	</div>

	<script>
	function showAlert() {
	    alert("Your Order has been Confirmed!");
	}
</script>

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