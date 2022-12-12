<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Film</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>
<body style="color: #dddddd; background-color: #424242; margin: 10px;">

<div style="border-style: solid; background-color: #292929; border-color: white; padding: 10px; text-align: center; box-shadow: rgba(0, 0, 0, 0.35) 0px 10px 20px;">
<h2 style="color: #FFC107"><strong>Update Film Info</strong></h2>
</div>
<div style="margin-top: 20px; border-style: solid; background-color: #292929; border-color: white; padding: 10px; box-shadow: rgba(0, 0, 0, 0.35) 0px 10px 20px;">
    
    <form action="updateFilm.do" method="POST">
   	<input id="filmId" type="hidden" name="filmId" value="${film.id}"> 
   	
	<div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
    	<label for="title">Title:</label>
    	<input type="text" name="title" value="${film.title}" required>
    </div>
	<div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
    	<label for="description">Description:</label>
    	<input type="text" name="description" value="${film.description}" required>
    </div>
	<div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
    	<label for="releaseYear">Release Year:</label>
    	<input type="text" name="releaseYear" value="${film.releaseYear}" required>
    </div>
    
    <div style="margin-left: 10px; margin-top: 10px; margin-bottom: 10px; max-width: 200px; border-style: solid; padding: 15px;">
	<h6><strong>Language:</strong></h6>
    <div>
      <input type="radio" id="1" name="languageId" value="1"
             checked>
      <label for="languageId">English</label>
    </div>

    <div>
      <input type="radio" id="2" name="languageId" value="2">
      <label for="languageId">Italian</label>
    </div>

    <div>
      <input type="radio" id="3" name="languageId" value="3">
      <label for="languageId">Japanese</label>
    </div>
        <div>
      <input type="radio" id="4" name="languageId" value="4"
             checked>
      <label for="languageId">Mandarin</label>
    </div>
        <div>
      <input type="radio" id="5" name="languageId" value="5"
             checked>
      <label for="languageId">French</label>
    </div>
        <div>
      <input type="radio" id="6" name="languageId" value="6"
             checked>
      <label for="languageId">German</label>
    </div>
      </div>
    
	<div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
        <label for="rentalDuration">Rental Duration:</label>
        <input type="text" name="rentalDuration" value="${film.rentalDuration}" required>
    </div>
	<div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
        <label for="rentalRate">Rental Rate:</label>
        <input type="text" name="rentalRate" value="${film.rentalRate}" required>
    </div>
	<div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
        <label for="length">Length:</label>
        <input type="text" name="length" value="${film.length}" required>
    </div>
	<div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
        <label for="replacementCost">Replacement Cost:</label>
        <input type="text" name="replacementCost" value="${film.replacementCost}" required>
    </div>
	<div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
        <label for="rating">Rating:</label>
        <input type="text" name="rating" value="${film.rating}" required>
    </div>
	<div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
        <label for="specialFeatures">Special Features:</label>
        <input type="text" name="specialFeatures" value="${film.specialFeatures}" required> 
    </div>
    <div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px;">
      <button style="margin-left: 10px; "type="submit" class="btn btn-outline-warning" type="submit">Submit</button>
    </div>
    </form>
</div>
    
<div style="margin-top: 20px; border-style: solid; background-color: #292929; border-color: white; padding: 10px; box-shadow: rgba(0, 0, 0, 0.35) 0px 10px 20px;">
 <form action="home.do" method="GET">
	<button style="margin-left: 10px; "type="submit" class="btn btn-outline-warning">Home</button>
	</form>
</div>
</body>
</html>

