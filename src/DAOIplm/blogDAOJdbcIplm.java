package DAOIplm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
//import java.text.SimpleDateFormat;
//import java.util.Date;






import jdbc.jdbcUtils;
import DAO.blogDAO;
import Jbean.Blog;
import Jbean.Category;
import Jbean.Comment;
import Jbean.Leavemsg;
import Jbean.photo;

public class blogDAOJdbcIplm implements blogDAO {
	public ArrayList<Blog> getAllInfo(){
		
		ArrayList<Blog> blogList = new ArrayList<Blog>();
		Blog blog = null;
		Connection conn = null;
		ResultSet rs = null;
		Statement stmt = null;
		
		try{
			conn = jdbcUtils.getConn();
			stmt = conn.createStatement();
			String sql = "SELECT * from Blog";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				blog = new Blog();
				
				blog.setId(rs.getInt("Id"));
				blog.setCategoryId(rs.getInt("Category_id"));
				blog.setTitle(rs.getString("title"));
				blog.setContent(rs.getString("content"));
				blog.setCreatedTime(rs.getDate("Created_time"));
				blog.setUserId(rs.getInt("useId"));
				
				blogList.add(blog);
				
			}
		}catch (SQLException e1) {
			System.out.println(e1+"dao");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			jdbcUtils.close(conn);
		}
		
		return blogList;
	}
	
	public ArrayList<Blog> getPersonInfo(int userId){
		ArrayList<Blog> blogList = new ArrayList<Blog>();
		Blog blog = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try{
			conn = jdbcUtils.getConn();
			String sql = "SELECT Id, title, Created_time, Category_id from Blog where useId = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,userId);
			
			rs = ps.executeQuery();
			
			while (rs.next()) {
				blog = new Blog();
				
				blog.setId(rs.getInt("Id"));
				blog.setCategoryId(rs.getInt("Category_id"));
				blog.setTitle(rs.getString("title"));
				blog.setCreatedTime(rs.getDate("Created_time"));
				
				blogList.add(blog);
				
			}
		}catch (SQLException e1) {
			System.out.println(e1+"dao");
		} 
		finally {
			jdbcUtils.close(conn);
		}
		
		return blogList;
	}
	
	
	
	
	public ArrayList<photo> getPhotoInfo(int userId){
		ArrayList<photo> photoList = new ArrayList<photo>();
		photo photo = null;
		Connection conn = null;
		ResultSet rs = null;
		Statement stmt = null;
		
		try{
			conn = jdbcUtils.getConn();
			stmt = conn.createStatement();
			String sql = "SELECT * from Photo where userId = 0 || userId = "+userId;
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				photo = new photo();
				
				photo.setId(rs.getInt("Id"));
				photo.setFoldername(rs.getString("Foldername"));
				photo.setFilename(rs.getString("Filename"));
				photo.setUserId(rs.getInt("userId"));
				
				photoList.add(photo);
				
			}
		}catch (SQLException e1) {
			System.out.println(e1+"dao");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			jdbcUtils.close(conn);
		}
			
		return photoList;
	}
	
	public ArrayList<Category> getCategoryInfo(int userId){
		ArrayList<Category> categoryList = new ArrayList<Category>();
		Category category = null;
		Connection conn = null;
		ResultSet rs = null;
		Statement stmt = null;
		
		try{
			conn = jdbcUtils.getConn();
			stmt = conn.createStatement();
			String sql = "SELECT * from Category where userId = 0 || userId = "+userId;
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				category = new Category();
				
				category.setId(rs.getInt("Id"));
				category.setLevel(rs.getString("Level"));
				category.setName(rs.getString("Name"));
				category.setUserId(rs.getInt("userId"));
				
				categoryList.add(category);
				
			}
		}catch (SQLException e1) {
			System.out.println(e1+"dao");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			jdbcUtils.close(conn);
		}
			
		return categoryList;
	}
	
	public ArrayList<Leavemsg> getLeavemsg(int userId){
		ArrayList<Leavemsg> LeavemsgList = new ArrayList<Leavemsg>();
		Leavemsg leavemsg = null;
		Connection conn = null;
		ResultSet rs = null;
		Statement stmt = null;
		
		try{
			conn = jdbcUtils.getConn();
			stmt = conn.createStatement();
			String sql = "SELECT * from Leavemsg where forId = "+userId;
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				leavemsg = new Leavemsg();
				
				leavemsg.setId(rs.getInt("Id"));
				leavemsg.setForId(rs.getInt("forId"));
				leavemsg.setContent(rs.getString("Content"));
				leavemsg.setName(rs.getString("Name"));
				leavemsg.setCreatedTime(rs.getDate("CreatedTime"));
				
				LeavemsgList.add(leavemsg);
				
			}
		}catch (SQLException e1) {
			System.out.println(e1+"dao");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			jdbcUtils.close(conn);
		}
			
		return LeavemsgList;
	}
	
	public ArrayList<Comment> getComment(int userId){
		ArrayList<Comment> commentList = new ArrayList<Comment>();
		Comment comment = null;
		Connection conn = null;
		ResultSet rs = null;
		Statement stmt = null;
		
		try{
			conn = jdbcUtils.getConn();
			stmt = conn.createStatement();
			String sql = "select * from Blog,Comment where Blog_id in (select Id from Blog where useId = "+userId+")";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				comment = new Comment();
				
				comment.setId(rs.getInt("cid"));
				comment.setBlog_id(rs.getInt("Id"));
				comment.setBlogTitle(rs.getString("title"));
				comment.setContent(rs.getString("Contentd"));
				comment.setCreatedTime(rs.getDate("CreatedTime"));
				comment.setUsername(rs.getString("Username"));
				
				commentList.add(comment);
				
			}
		}catch (SQLException e1) {
			System.out.println(e1+"dao");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			jdbcUtils.close(conn);
		}
			
		return commentList;
	}
	
	public int getIdByEmail(String email){
		int Id = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			conn = jdbcUtils.getConn();
			String sql = "select Id from User where Email = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			
			rs = ps.executeQuery();
			
			if(rs.next())
				Id = rs.getInt("Id");
			
		}catch (SQLException e1) {
			System.out.println(e1+"dao");
		}finally {
			jdbcUtils.close(conn);
		}
		
		return Id;
	}
	
/*	private final static String A = "yyyy-MM-dd";
	
	public static String getDateToString(Date date) throws Exception{
		String s;
		SimpleDateFormat sft = new SimpleDateFormat(A);
		s=sft.format(date);
		return s;
	}*/
}
