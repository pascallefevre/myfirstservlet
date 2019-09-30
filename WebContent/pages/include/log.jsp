<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
<c:when test="${sessionScope.user == null}">
<p>Not connected <a href = "login?action=login">login</a></p>
</c:when>
<c:otherwise>
<p>Connected as : ${ sessionScope.user } <a href = "login?action=logout">logout</a></p>
</c:otherwise>
</c:choose>