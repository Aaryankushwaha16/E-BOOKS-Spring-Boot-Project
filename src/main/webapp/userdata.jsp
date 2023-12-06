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
		<td>Address</td><td>City</td><td>Email</td><td>landmark</td><td>Name</td><td>Phone</td><td>Pincode</td><td>State</td>
		
		</tr>
		<c:forEach items="${obj}" var="user">
		<tr>
		<td>${user.address}</td>
		<td>${user.city}</td>
		<td>${user.email}</td>
		<td>${user.landmark}</td>
		<td>${user.name}</td>
		<td>${user.phone}</td>
		<td>${user.pincode}</td>
		<td>${user.state}</td>
						
		<td>	
			<a href="deleteuser?id=${user.id}" class="btn btn-success btn-sm">Delete</a>					
					
		</td>				
			
		</c:forEach>
		</table>
		</div>
		</div>

</body>
</html>