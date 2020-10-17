package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAOIplm.blogDAOJdbcIplm;
import Jbean.*;

public class PersonalPage extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = null;
		ArrayList<Blog> blogList = new ArrayList<Blog>(); 
		ArrayList<photo> photoList = new ArrayList<photo>();
		ArrayList<Category> categoryList = new ArrayList<Category>();
		ArrayList<Comment> commentList = new ArrayList<Comment>();
		ArrayList<Leavemsg> leavemsgList = new ArrayList<Leavemsg>();
		blogDAOJdbcIplm action = new blogDAOJdbcIplm();
		HttpSession session = request.getSession();
		email = (String)session.getAttribute("email");
		
		try{
//			System.out.println(email);
			int Id = action.getIdByEmail(email);
//			System.out.println(Id);
			blogList = action.getPersonInfo(Id);
			photoList = action.getPhotoInfo(Id);
			categoryList = action.getCategoryInfo(Id);
			commentList = action.getComment(Id);
			leavemsgList = action.getLeavemsg(Id);
			request.setAttribute("commentList", commentList);
			request.setAttribute("leavemsgList", leavemsgList);
			request.setAttribute("categoryList", categoryList);
			request.setAttribute("photoList", photoList);
			request.setAttribute("blogList", blogList);

		} catch (Exception e){
			e.printStackTrace();
		}
		request.getRequestDispatcher("PersonalPage.jsp").forward(request, response);
	}
}

