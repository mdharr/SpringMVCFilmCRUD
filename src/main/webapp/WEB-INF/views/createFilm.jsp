<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Film</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>
<body style="color: #dddddd; background-color: #424242; margin: 10px;">
<div style="border-style: solid; background-color: #292929; border-color: white; padding: 10px; text-align: center; box-shadow: rgba(0, 0, 0, 0.35) 0px 10px 20px;">
<h2 style="color: #FFC107"><strong>Create a Film</strong></h2>
</div>
<div style="margin-top: 20px; border-style: solid; background-color: #292929; border-color: white; padding: 10px; box-shadow: rgba(0, 0, 0, 0.35) 0px 10px 20px;">
    <form action="createFilm.do" method="POST">
      <div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
      <label for="title"><strong>Title:</strong></label>
      <input type="text" name="title" required>
      </div>
      
      <div style="margin-top: 10px; background-color: #292929; border-color: white; padding: 10px; ">
      <label for="description"><strong>Description:</strong></label>
      <input type="text" name="description" required>
      </div>
      
      <div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
      <label for="releaseYear"><strong>Release Year:</strong></label>
      <input type="text" name="releaseYear" required>
      </div>
      
      <div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
      <label for="languageId"><strong>Language ID:</strong></label>
      <input type="text" name="languageId">
      </div>
      
      <div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
      <label for="rentalDuration"><strong>Rental Duration:</strong></label>
      <input type="text" name="rentalDuration" required>
      </div>
      
      <div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
      <label for="rentalRate"><strong>Rental Rate:</strong></label>
      <input type="text" name="rentalRate" required>
      </div>
      
      <div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
      <label for="length"><strong>Length:</strong></label>
      <input type="text" name="length" required>
      </div>
      
      <div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
      <label for="replacementCost"><strong>Replacement Cost:</strong></label>
      <input type="text" name="replacementCost" required>
      </div>
      
      <div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
      <label for="rating"><strong>Rating:</strong></label>
      <input type="text" name="rating" required>
      </div>
      
      <div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
      <label for="specialFeatures"><strong>Special Features:</strong></label>
      <input type="text" name="specialFeatures" required>
      </div>
      
      <div style="margin-top: 10px;  background-color: #292929; border-color: white; padding: 10px; ">
	  <button style="margin-left: 10px; "type="submit" class="btn btn-outline-warning">Submit</button>    
      </div>
	  </form>
</div>
<div style="margin-top: 10px; border-style: solid; background-color: #292929; border-color: white; padding: 10px; box-shadow: rgba(0, 0, 0, 0.35) 0px 10px 20px;">
 <form action="home.do" method="GET">
	<button style="margin-left: 10px; "type="submit" class="btn btn-outline-warning">Home</button>
	</form>
</div>
</body>
</html>

