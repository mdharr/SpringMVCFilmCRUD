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
    <form action="CreateFilm.do" method="POST">
      <br>
      <label for="title">Title:</label>
      <input type="text" name="title">
      <br>
      <label for="description">Description:</label>
      <input type="text" name="description">
      <br>
      <input type="submit">
    </form>

</body>
</html>