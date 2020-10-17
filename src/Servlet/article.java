package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

import DAOIplm.articleDAOIplm;
import Jbean.Blog;
import Jbean.Comment;

public class article extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Blog blog = new Blog();
		String email = null;
		ArrayList<Comment> commentList = new ArrayList<Comment>();
		int id = Integer.parseInt(request.getParameter("id"));
//		System.out.println(id);
		articleDAOIplm action = new articleDAOIplm();
		blog = action.serchArticleById(id);
//		System.out.println(blog.getTitle());
		commentList = action.serchCommentById(id);
		email = action.getEmailById(blog.getUserId());
		request.setAttribute("Blog", blog);
		request.setAttribute("commentList", commentList);
		request.setAttribute("Email", email);
		
		request.getRequestDispatcher("article.jsp").forward(request, response);
		
	}
	
}
