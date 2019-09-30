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


<h1>login.jsp</h1>
<h3></h3>
<form action="" method="POST">
<label for ="loginElem">Login :</label>
<input id="loginElem" type="text" placeholder="login" name="inputlogin">
<label for ="pwElem">Login :</label>
<input id="pwElem" type="password" placeholder="Password" name="inputpw">
<button type="submit">ok</button>
</form>

</body>
</html>