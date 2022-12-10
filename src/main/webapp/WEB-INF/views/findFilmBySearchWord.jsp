<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Word</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty film}">
			<ul>
			<c:forEach var="film" items="${film}">
						<li>${film.title}</li>
						<li>${film.description}</li>
						<br>
					
						
			</c:forEach>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>
	<form action="home.do" method="GET">
		<button>Home</button>
	</form>
</body>
</html>