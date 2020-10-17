package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Jbean.User;
import DAOIplm.UserDaoJdbcIplm;

public class register extends HttpServlet {


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try{
			String email = request.getParameter("email");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			User user = new User();
			
			user.setUserName(username);
			user.setPassword(password);
			user.setEmail(email);
			
			UserDaoJdbcIplm action =new UserDaoJdbcIplm();
			action.addUser(user);	
			
			response.sendRedirect("login.jsp");
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
