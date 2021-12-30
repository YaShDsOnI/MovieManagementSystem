<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Movies IMDB</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

.bg-image {
  background-image: url("movies.jpg");

  filter: blur(4px);
  -webkit-filter: blur(4px);


  height: 100%;


  background-position: center;
  background-size: cover;
}
.bg-text {
  background-color: rgb(0,0,0); 
  background-color: rgba(0,0,0, 0.4); 
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}

.button {
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}


</style>
</head>
<body>
<div class="bg-image"></div>

<div class="bg-text">


<center><h1 style="color:white">Movies IMDB</h1></center>


	<form align="center">
    <button class="button" type="Submit" formaction="profile.jsp"><span>profile</span></button>
	<button class="button" type="Submit" formaction="VMovies.jsp"><span>View Ratings</span></button>
	<button class="button" type="Submit" formaction="Rating.jsp"><span>Rate Movie</span></button>
	</form>
	<form align="right">
<button type="submit" formaction="Login.jsp" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-log-out"></span>Logout</button>
</form>
</div>
</body>
</html>