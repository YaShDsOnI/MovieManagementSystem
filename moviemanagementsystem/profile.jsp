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
                        <a  class="nav-link">Users</a>
                    </ul>
                </nav>
            </header>

<!--
<div class="container">
			<label for="name"><b>Name</b></label><br>
			<input type="text" name="name" id="name" required style="width:400px;">
			<br>
			<label for="username"><b>Username</b></label><br>
			<input type="text" name="username" id="username" required style="width:400px;">
			<br>
			<label for="email"><b>Email</b></label><br>
			<input type="text" name="email" id="email" required style="width:400px;">
			<br>
			<input type="submit" value="Submit">
</div>
-->

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">List of Users</h3>
                    <hr>
                    
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Username</th>
                               <!-- <th>Actions</th> -->
                            </tr>
                        </thead>
                        <tbody>
                            <%@page import="Model.User.UserDAO"%>
                            <%@page import="Model.User.User"%>
                            <%@page import="java.util.List"%>
                            <%
                                UserDAO userDAO = new UserDAO();
                                List<User> listUser = userDAO.selectAllUsers();
                                for(int i = 0; i < listUser.size(); i++) {
                                User user = listUser.get(i);
                            %>

                                <tr>
                                    <td>
                                        <%= user.getSrno() %>
                                    </td>
                                    <td>
                                        <%= user.getName() %>
                                    </td>
                                    <td>
                                        <%= user.getEmail() %>
                                    </td>
                                    <td>
                                        <%= user.getUsername() %>
                                    </td>
                                  <!--  <td><a href="user-form.jsp?srno=<%=user.getSrno()%>">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?srno=<%=user.getSrno()%>">Delete</a></td>-->
                                </tr>
                            <% } %>
                        </tbody>

                    </table>
                </div>
            </div>

</body>
</html>