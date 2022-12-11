<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Film Query</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>
<body style="color: #dddddd; background-color: #424242; margin: 10px;">
	<div style="border-style: solid; background-color: #292929; border-color: white; padding: 10px; text-align: center; box-shadow: rgba(0, 0, 0, 0.35) 0px 10px 20px;">
		<h2 style="color: #FFC107"><strong>Welcome To Film Query</strong></h2>
	</div>
	<br>
	<div style="margin: 50px;"></div>
	<br>
	<div style="margin-top: 20px; border-style: solid; background-color: #292929; border-color: white; padding: 10px; box-shadow: rgba(0, 0, 0, 0.35) 0px 10px 20px;">
		<form action="findFilmById.do" method="GET">
			<label for="film"><strong>Search Film ID:</strong></label> <input type="text"
				id="filmID" name="filmID" required>
			<button style="margin-left: 10px; "type="submit" class="btn btn-outline-warning">Submit</button>
		</form>
	</div>
	<br>
	<div style="margin-top: 20px; border-style: solid; background-color: #292929; border-color: white; padding: 10px; box-shadow: rgba(0, 0, 0, 0.35) 0px 10px 20px;">
		<form action="findFilmBySearchWord.do" method="GET">
			<label for="film"><strong>Search Films By Search Word:</strong></label> <input
				type="text" id="searchWord" name="searchWord" required>
			<button style="margin-left: 10px; "type="submit" class="btn btn-outline-warning">Submit</button>
		</form>
	</div>
	<br>
	<div style="margin-top: 20px; border-style: solid; background-color: #292929; border-color: white; padding: 10px; box-shadow: rgba(0, 0, 0, 0.35) 0px 10px 20px;">
		<form action="createFilmPage.do">
			<label for="film"><strong>Add a Film:</strong></label>
			<button style="margin-left: 10px; "type="submit" class="btn btn-outline-warning">NEXT</button>
		</form>
	</div>
	<br>
	<div style="margin-top: 20px; border-style: solid; background-color: #292929; border-color: white; padding: 10px; box-shadow: rgba(0, 0, 0, 0.35) 0px 10px 20px;">
		<form action="deleteFilm.do" method="POST">
			<label for="title"><strong>Enter the ID of the film you would like to delete:</strong></label> 
				<input type="text" name="Id" required> 
				<button style="margin-left: 10px; "type="submit" class="btn btn-outline-warning">Submit</button>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>



</html>