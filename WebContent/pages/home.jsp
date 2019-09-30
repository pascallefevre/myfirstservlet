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

<h3>this is home.jsp</h3>
<c:if test="${monattribut != null} "></c:if>
<h3>Bienvenu ${monattribut} :</h3>

</body>
</html>