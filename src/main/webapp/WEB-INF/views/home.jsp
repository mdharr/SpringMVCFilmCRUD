<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


<!-- <form action="" method="GET">
 

  Password input
 <div class="form-outline mb-4">
     <label class="form-label" for="film">Search By ID: </label>
    <input type="text" id="ID" class="form-control" placeholder="id number" />
  </div>

  
  Submit button
  <button type="submit" class="btn btn-primary btn-block">Search</button>
</form>
 -->






    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

</body>
</html>