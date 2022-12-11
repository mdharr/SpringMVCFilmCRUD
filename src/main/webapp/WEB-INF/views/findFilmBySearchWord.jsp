<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Word</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>
<body style="color: #dddddd; background-color: #424242; margin: 10px;">
<div style="border-style: solid; background-color: #292929; border-color: white; padding: 10px; text-align: center; box-shadow: rgba(0, 0, 0, 0.35) 0px 10px 20px;">
<h2 style="color: #FFC107"><strong>Film Results By Search Word</strong></h2>
</div>
<div style="margin-top: 20px; border-style: solid; background-color: #292929; border-color: white; padding: 10px; box-shadow: rgba(0, 0, 0, 0.35) 0px 10px 20px;">
	<c:choose>
		<c:when test="${! empty film}">
			<ul>
				<c:forEach var="film" items="${film}">
					<li>Film ID: ${film.id }</li>
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
 					<li>Film Cast:</li>
       				 <ol>
						<c:forEach var="actor" items="${filmActorMap[film]}">
						<li>${actor.firstName } ${actor.lastName }</li>
						</c:forEach>
       				 </ol>
				</c:forEach>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>
</div>
<div style="margin-top: 20px; border-style: solid; background-color: #292929; border-color: white; padding: 10px; box-shadow: rgba(0, 0, 0, 0.35) 0px 10px 20px;">
	<form action="home.do" method="GET">
		<button style="margin-left: 10px; "type="submit" class="btn btn-outline-warning">Home</button>
	</form>
</div>
</body>
</html>