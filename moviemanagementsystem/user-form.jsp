<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    
        <html>

        <head>
            <title>Users</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script>
function myFunction() {
  int srno = document.form.srno.value;
  var name = document.form.name.value;
  var email = document.form.email.value;
  var username = document.form.username.value;
  
  
}
</script>
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    <div>
                        <a href="https://www.javaguides.net" class="navbar-brand"> </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/profile.jsp" class="nav-link">Users</a></li>
                    </ul>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
						 <%@page import="Model.User.UserDAO"%>
                            <%@page import="Model.User.User"%>
                            <%@page import="java.util.List"%>
                            <%
								int id = Integer.parseInt(request.getParameter("srno"));
                                UserDAO userDAO = new UserDAO();
                                User user = userDAO.selectUser(id);
                          							
							%>
                        
                            <form action="update" method="post">
                       
                       
                        <caption>
                            <h2>
                                <c:if test="${user != null}">
                                    Edit User
                                </c:if>
                                
                            </h2>
                        </caption>
						<%
                                if (user!=null){
                                
                            %>

                            <input type="hidden" name="srno" value="<%= user.getSrno() %>" />
                        <% } %>

                        <fieldset class="form-group">
                            <label>User Name</label> <input type="text" value="<%= user.getName() %>" class="form-control" name="name" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>User Email</label> <input type="text" value="<%= user.getEmail() %>" class="form-control" name="email">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>User Username</label> <input type="text" value="<%= user.getUsername() %>" class="form-control" name="username">
                        </fieldset>
								
                        <button type="submit" class="btn btn-success">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>