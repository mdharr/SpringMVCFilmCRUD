<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Film</title>
</head>
<body>
    <form action="createFilm.do" method="POST">
      <br>
      <label for="title">Title:</label>
      <input type="text" name="title" required>
      <br>
      <label for="description">Description:</label>
      <input type="text" name="description" required>
      <br>
      <label for="releaseYear">Release Year:</label>
      <input type="text" name="releaseYear" required>
      <br>
      <label for="languageId">Language ID:</label>
      <input type="text" name="languageId">
      <br>
      <label for="rentalDuration">Rental Duration:</label>
      <input type="text" name="rentalDuration" required>
      <br>
      <label for="rentalRate">Rental Rate:</label>
      <input type="text" name="rentalRate" required>
      <br>
      <label for="length">Length:</label>
      <input type="text" name="length" required>
      <br>
      <label for="replacementCost">Replacement Cost:</label>
      <input type="text" name="replacementCost" required>
      <br>
      <label for="rating">Rating:</label>
      <input type="text" name="rating" required>
      <br>
      <label for="specialFeatures">Special Features:</label>
      <input type="text" name="specialFeatures" required>
      <br>
      <input type="submit">
    </form>
 <form action="home.do" method="GET">
	<button>Home</button>
	</form>
</body>
</html>

