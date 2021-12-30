package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Rating.RatingBean;
import Model.Rating.RatingDao;

public class RatingServlet extends HttpServlet{

	 public RatingServlet() {
     }
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String moviename= request.getParameter("moviename");
		String rating= request.getParameter("rating");
		String descip= request.getParameter("descip");
	
		RatingBean ratingBean = new RatingBean();
		
		ratingBean.setmoviename(moviename);
		ratingBean.setrating(rating);
		ratingBean.setdescip(descip);
		
		RatingDao ratingDao = new RatingDao();
		
		String movieRated = ratingDao.ratingMovie(ratingBean);
		
		if(movieRated.equals("SUCCESS")) {
			request.getRequestDispatcher("/VMovies.jsp").forward(request,response);
		}
		else {
			request.setAttribute("errMessage", movieRated);
			request.getRequestDispatcher("/Rating.jsp").forward(request,response);
		}
	}

}
