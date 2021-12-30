<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
div.stars {
  width: 270px;
  display: inline-block;
}

input.star { display: none; }

label.star {
  float: right;
  padding: 10px;
  font-size: 18px;
  color: #444;
  transition: all .2s;
}

input.star:checked ~ label.star:before {
  content: '\f005';
  color: #FD4;
  transition: all .25s;
}

input.star-5:checked ~ label.star:before {
  color: #FE7;
  text-shadow: 0 0 20px #952;
}

input.star-1:checked ~ label.star:before { color: #F62; }

label.star:hover { transform: rotate(-15deg) scale(1.3); }

label.star:before {
  content: '\f006';
  font-family: FontAwesome;
}
.he{
	font-size:20px;
}
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
.btn {
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 8px 10px;
  font-size: 16px;
  cursor: pointer;
}

</style>
</head>
<body>
<header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
           <form>

<button type="submit" formaction="Home.jsp" class="btn"><i class="fa fa-home"></i></button>
</form>         

                    <ul class="navbar-nav">
                        <a  class="nav-link">Your Ratings</a>
                    </ul>
                </nav>
            </header>
<div class="container">
<form name="form" method="post" action="RatingServlet">
  <label for="moviename"><b>Movie Name</b></label><br>
			<input type="text" placeholder="Enter Movie Name" name="moviename" id="moviename" required style="width:400px;">
			<br>
			<label for="rating"><b>Rating</b></label>
			<br>
			<div class="stars">
			
				<input class="star star-5" id="star-5" type="radio" name="rating" value="5"/>
				<label class="star star-5" for="star-5"></label>
				<input class="star star-4" id="star-4" type="radio" name="rating" value="4"/>
				<label class="star star-4" for="star-4"></label>
				<input class="star star-3" id="star-3" type="radio" name="rating" value="3"/>
				<label class="star star-3" for="star-3"></label>
				<input class="star star-2" id="star-2" type="radio" name="rating" value="2"/>
				<label class="star star-2" for="star-2"></label>
				<input class="star star-1" id="star-1" type="radio" name="rating" value="1"/>
				<label class="star star-1" for="star-1"></label>
			
			</div>
			<br>
			<label for="descip"><b>Review</b></label><br>
			
			<textarea id="descip" name="descip" placeholder="Your Review" style="height:200px;width:500px" required></textarea><br>
			<input type="submit" value="Submit">
			</form>
</div>

</body>
</html>
