<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<h3>Welcome To Film Query</h3>

<head>
<meta charset="UTF-8">
<title>Film Query</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>
<body>
	<form action="findFilmById.do" method="GET">
		<label for="film">Search Film ID:</label> 
		<input type="text"
			id="filmID" name="filmID">
	<button>Submit</button>
	</form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  
  <form action="findFilmBySearchWord.do" method="GET">
		<label for="film">Search Films By Search Word:</label> 
		<input type="text"
			id="searchWord" name="searchWord">
	<button>Submit</button>
	</form>
	

<form action="createFilmPage.do">
		<label for="film">Add a Film:</label> 
	<button>NEXT</button>
</form>


</body>



</html>