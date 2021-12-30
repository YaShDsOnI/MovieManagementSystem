package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Movie.Movie;
import Model.Movie.MovieDAO;
public class MovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private MovieDAO movieDAO;
	
	public void init() {
        movieDAO = new MovieDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                /*case "/new":
                    showNewForm(request, response);
                    break;*/
                /*case "/insert":
                    insertMovie(request, response);
                    break;
                case "/delete":
                    deleteMovie(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                    updateMovie(request, response);
                    break;*/
                default:
                    listMovie(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
	
	private void listMovie(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < Movie > listMovie = movieDAO.selectAllMovies();
        request.setAttribute("listMovie", listMovie);
        RequestDispatcher dispatcher = request.getRequestDispatcher("VMovies.jsp");
        dispatcher.forward(request, response);
    }
	/*
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        int srno = Integer.parseInt(request.getParameter("srno"));
        User existingUser = userDAO.selectUser(srno);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        request.setAttribute("user", existingUser);
        dispatcher.forward(request, response);
    }
	
	private void insertUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        User newUser = new User(name, email, username);
        userDAO.insertUser(newUser);
        response.sendRedirect("list");
    }
	
	private void updateUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int srno = Integer.parseInt(request.getParameter("srno"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");

        User book = new User(srno, name, email, username);
        userDAO.updateUser(book);
        response.sendRedirect("list");
    }
	
	private void deleteUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int srno = Integer.parseInt(request.getParameter("srno"));
        userDAO.deleteUser(srno);
        response.sendRedirect("list");

    }*/
}