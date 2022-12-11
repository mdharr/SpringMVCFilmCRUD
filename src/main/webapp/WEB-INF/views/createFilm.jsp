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
      <label for="release_year">Release Year:</label>
      <input type="text" name="release_year" required>
      <br>
      <label for="language_id">Language ID:</label>
      <input type="text" name="language_id">
      <br>
      <label for="rental_duration">Rental Duration:</label>
      <input type="text" name="rental_duration" required>
      <br>
      <label for="rental_rate">Rental Rate:</label>
      <input type="text" name="rental_rate" required>
      <br>
      <label for="length">Length:</label>
      <input type="text" name="length" required>
      <br>
      <label for="replacement_cost">Replacement Cost:</label>
      <input type="text" name="replacement_cost" required>
      <br>
      <label for="rating">Rating:</label>
      <input type="text" name="rating" required>
      <br>
      <label for="special_features">Special Features:</label>
      <input type="text" name="special_features" required>
      <br>
      <input type="submit">
    </form>

</body>
</html>

