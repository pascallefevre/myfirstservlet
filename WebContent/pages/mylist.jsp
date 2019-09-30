<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="include/titletag.jsp"></jsp:include>
</head>
<body>

<jsp:include page="include/log.jsp"></jsp:include>



<h3></h3>

<br>
<h1>Etudiant Hipster Store:</h1>


<table>
	<thead>
		<tr>
		<th>id</th>
		<th>produit</th>
		<th>prix</th>
		<th>add</th>
		<th>rm</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${inventaire}" var="p">
			<tr>
				<td>${p.id}</td>
				<td>${p.name}</td>
				<td>${p.price}</td>
				<td><a href = "cart?action=add&id=${p.id}">+</a></td>
				<td><a href = "cart?action=rm&id=${p.id}">-</a></td>
			</tr>
		</c:forEach>
	</tbody>
	<tfoot>
		<th colspan="3"> See my cart: </th>
		<th><a href="cart">myCart</a></th>
	</tfoot>
</table>


</body>
</html>