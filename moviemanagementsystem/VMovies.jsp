<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
.fa {
  font-size: 18px;
}

.checked {
  color: orange;
}
</style>
</script>
</head>
<body>
<header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
           <form>

<button type="submit" formaction="Home.jsp" class="btn"><i class="fa fa-home"></i></button>
</form>         

                    <ul class="navbar-nav">
                        <a  class="nav-link">Reviews</a>
                    </ul>
                </nav>
            </header>


            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">Movie Reviews</h3>
                    <hr>
                    
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Rno</th>
                                <th>Movie Name</th>
                                <th>Rating</th>
                                <th>Review</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%@page import="Model.Movie.MovieDAO"%>
                            <%@page import="Model.Movie.Movie"%>
                            <%@page import="java.util.List"%>
                            <%
                                MovieDAO movieDAO = new MovieDAO();
                                List<Movie> listMovie = movieDAO.selectAllMovies();
                                for(int i = 0; i < listMovie.size(); i++) {
                                Movie movie = listMovie.get(i);
                            %>

                                <tr>
                                    <td>
                                        <%= movie.getRno() %>
                                    </td>
                                    <td>
                                        <%= movie.getMoviename() %>
                                    </td>
                                    <td>
                                        <%= movie.getRating() %> <span class="fa fa-star checked"></span>
                                    </td>
                                    <td>
                                        <%= movie.getDescip() %>
                                    </td>
                                    
                                </tr>
                            <% } %>
                        </tbody>

                    </table>
                </div>
            </div>

</body>
</html>