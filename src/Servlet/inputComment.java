package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAOIplm.inputCommentDAOIplm;

public class inputComment extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int BlogId = Integer.parseInt(request.getParameter("id")); 
//		System.out.println(BlogId);
		String content = request.getParameter("content");
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
			
		inputCommentDAOIplm action = new inputCommentDAOIplm();
		
		if(action.inputComment(BlogId, content, username)){
			request.setAttribute("BlogId",BlogId);
			request.getRequestDispatcher("article?id="+BlogId).forward(request, response);
		}
		
	}

}
