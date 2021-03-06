package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Register.RegisterBean;
import Model.Register.RegisterDao;

public class RegisterServlet extends HttpServlet{

	 public RegisterServlet() {
     }
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String username= request.getParameter("username");
		String password= request.getParameter("password");
	
		RegisterBean registerBean = new RegisterBean();
		
		registerBean.setname(name);
		registerBean.setemail(email);
		registerBean.setusername(username);
		registerBean.setpassword(password);
		
		RegisterDao registerDao = new RegisterDao();
		
		String userRegistered = registerDao.registerUser(registerBean);
		
		if(userRegistered.equals("SUCCESS")) {
			request.getRequestDispatcher("/Login.jsp").forward(request,response);
		}
		else {
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/Register.jsp").forward(request,response);
		}
	}

}
