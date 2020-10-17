package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAOIplm.PswdDAOIplm;

public class changepswd extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = null;
		boolean rs = false;
		PswdDAOIplm action = new PswdDAOIplm();
		HttpSession session = request.getSession();
		email = (String)session.getAttribute("email");
		String oldpassword = request.getParameter("opwd");
		String newpassword = request.getParameter("npwd");
		int Id = action.getIdByEmail(email);
		
		rs = action.change(Id, oldpassword, newpassword);
		
		if(rs){
			session.invalidate();
			response.sendRedirect("login.jsp");
		}
		else{
			response.sendRedirect("PersonalPage.jsp");
		}
		
	}

}
