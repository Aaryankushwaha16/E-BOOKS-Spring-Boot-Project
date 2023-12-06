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
		<td>ID</td><td>Book Id</td><td>Total Amount</td><td>Userdata_Id</td><td>Action</td>
		
		</tr>
		<c:forEach items="${obj}" var="order">
		<tr>
		
		<td>${order.id}</td>
		<td>${order.bid}</td>
		<td>${order.total}</td>
		<td>${order.userdata.id}</td>
						
		<td>	
							
							<a href="deleteorder?id=${order.id}" class="btn btn-success btn-sm">Delete</a>
							
					
		</td>				
			
		</c:forEach>
		</table>
		</div>
		</div>

</body>
</html>