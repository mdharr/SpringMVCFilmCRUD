<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Film</title>
</head>
<body>


<h2>Update Film's Details</h2>

    <form action="updateFilm.do" method="POST">
    
   	<input id="filmId" type="hidden" name="filmId" value="${film.id}"> 
      <br>
      <label for="title">Title:</label>
      <input type="text" name="title" placeholder="${film.title}" value="${film.title}" required>
      <br>
      <label for="description">Description:</label>
      <input type="text" name="description" placeholder="${film.description}" required>
      <br>
      <label for="releaseYear">Release Year:</label>
      <input type="number" name="releaseYear" placeholder="${film.releaseYear}" required>
      <br>
      <label for="languageId">Language ID:</label>
      <input type="number" name="languageId" placeholder="${film.languageId}">
      <br>
      <label for="rentalDuration">Rental Duration:</label>
      <input type="number" name="rentalDuration" placeholder="${film.rentalDuration}" required>
      <br>
      <label for="rentalRate">Rental Rate:</label>
      <input type="number" name="rentalRate" placeholder="${film.rentalRate}" required>
      <br>
      <label for="length">Length:</label>
      <input type="number" name="length" placeholder="${film.length}" required>
      <br>
      <label for="replacementCost">Replacement Cost:</label>
      <input type="number" name="replacementCost" placeholder="${film.replacementCost}" required>
      <br>
     <label for="rating">Rating:</label>
      <input type="text" name="rating" placeholder="${film.rating}" required>
      <br>
      <label for="specialFeatures">Special Features:</label>
      <input type="text" name="specialFeatures" placeholder="${film.specialFeatures}" required> 
      <br>
      <input type="submit">
    </form>
    
    
 <form action="home.do" method="GET">
	<button>Home</button>
	</form>
</body>
</html>

