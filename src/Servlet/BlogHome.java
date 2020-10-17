package Servlet;

import java.io.IOException;

import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Jbean.Blog;
import DAOIplm.blogDAOJdbcIplm;

public class BlogHome extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ArrayList<Blog> blogList = new ArrayList<Blog>(); 
		blogDAOJdbcIplm action = new blogDAOJdbcIplm();
		String s = "yes";
		
		try{
			blogList = action.getAllInfo();
			request.setAttribute("blogList", blogList);
			request.setAttribute("s", s);
			
		} catch (Exception e){
			e.printStackTrace();
		}
		request.getRequestDispatcher("BlogHome.jsp").forward(request, response);
	}



}
