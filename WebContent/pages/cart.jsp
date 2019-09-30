<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="include/log.jsp"></jsp:include>


<table>
	<thead>
		<tr>
		<th>id</th>
		<th>produit</th>
		<th>prix</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${cart}" var="p">
			<tr>
				<td>${p.id}</td>
				<td>${p.name}</td>
				<td>${p.price}</td>
			</tr>
		</c:forEach>
	</tbody>
	
</table>
</body>
</html>