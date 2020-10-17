package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAOIplm.UserDaoJdbcIplm;

public class login extends HttpServlet {


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");//中文需设置编码
		String name = null;
		HttpSession session = request.getSession();
		try{
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			UserDaoJdbcIplm action =new UserDaoJdbcIplm();
			
			if(action.lgoinByEmail(email, password))
			{
				name = action.getUserNameByEmail(email);
				session.setAttribute("username", name);
				session.setAttribute("email", email);
				response.sendRedirect("BlogHome.jsp");
			}else{
				response.sendRedirect("login.jsp");
			}
			
		} catch(Exception e){
			e.printStackTrace();
		}
	}

}
