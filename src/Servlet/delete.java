package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAOIplm.deleteCommentDAOIplm;

public class delete extends HttpServlet {


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("cid")!=null){
			int commentId = Integer.parseInt(request.getParameter("cid")); 
			deleteCommentDAOIplm action = new deleteCommentDAOIplm();
			
			if(action.deleteComment(commentId)){
				request.getRequestDispatcher("PersonalPage").forward(request, response);
			}
		}else if(request.getParameter("lid")!=null){
			int leavemsgId = Integer.parseInt(request.getParameter("lid")); 
			deleteCommentDAOIplm action = new deleteCommentDAOIplm();
			
			if(action.deleteLeavemsg(leavemsgId)){
				request.getRequestDispatcher("PersonalPage").forward(request, response);
			}
		}else if(request.getParameter("bid")!=null){
			int BlogId = Integer.parseInt(request.getParameter("bid")); 
			deleteCommentDAOIplm action = new deleteCommentDAOIplm();
			
			if(action.deleteArticle(BlogId)){
				request.getRequestDispatcher("PersonalPage").forward(request, response);
			}
		}
	}
}
