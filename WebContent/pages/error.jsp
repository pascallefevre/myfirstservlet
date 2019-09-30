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
<c:choose>
<c:when test="${sessionScope.user == null}">
<p>Not connected</p>
<a href = "login?action=login">login</a>
</c:when>
<c:otherwise>
<p>Connected as : ${ sessionScope.user }</p>
<a href = "login?action=logout">logout</a>
</c:otherwise>
</c:choose>
<h1>error</h1>
</body>
</html>