<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Info</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty film}">

			<h2>Results:</h2>
			<ul>
				<li>Film ID: ${film.id } </li>
        <li>Film Title: ${film.title}</li>
        <li>Film Description: ${film.description}</li>
        <li>Film Release Year: ${film.releaseYear}</li>
        <li>Film Language ID: ${film.languageId}</li>
        <li>Film Rental Duration: ${film.rentalDuration}</li>
        <li>Film Rental Rate: ${film.rentalRate}</li>
        <li>Film Length: ${film.length}</li>
        <li>Film Replacement Cost: ${film.replacementCost}</li>
        <li>Film Rating: ${film.rating}</li>
        <li>Film Special Features: ${film.specialFeatures}</li>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>

	<form action="editFilmById.do" method="GET">
		<button name=filmId type="submit" value="${film.id}">Update
			Film</button>
	</form>

 <form action="home.do" method="GET">
	<button>Home</button>
	</form>
</body>
</html>

