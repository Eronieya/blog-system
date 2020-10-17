package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAOIplm.addArticleDAOIplm;

public class addArticle extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String content = request.getParameter("description");
		String title = request.getParameter("title");
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		int id = 0;
		
		addArticleDAOIplm action = new addArticleDAOIplm();
		
		id = action.getIdByEmail(email);
		
		if(action.addArticle(title,content,id)){
			request.getRequestDispatcher("BlogHome").forward(request, response);
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	
}
