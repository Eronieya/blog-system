package DAOIplm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jdbc.jdbcUtils;
import DAO.articleDAO;
import Jbean.Blog;
import Jbean.Comment;

public class articleDAOIplm implements articleDAO{
	
	public Blog serchArticleById(int BlogId){
		Blog blog = new Blog();
		Connection conn = null;
		ResultSet rs = null;
		Statement stmt = null;
		
		try{
			conn = jdbcUtils.getConn();
			stmt = conn.createStatement();
			String sql = "SELECT * from Blog where Id = "+ BlogId;
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {				
				
				blog.setId(rs.getInt("Id"));
				blog.setCategoryId(rs.getInt("Category_id"));
				blog.setTitle(rs.getString("title"));
				blog.setContent(rs.getString("content"));
				blog.setCreatedTime(rs.getDate("Created_time"));
				blog.setUserId(rs.getInt("useId"));				
							
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
		return blog;
	}
	
	public ArrayList<Comment> serchCommentById(int BlogId){
		Comment comment = null;
		ArrayList<Comment> commentList = new ArrayList<Comment>();
		Connection conn = null;
		ResultSet rs = null;
		Statement stmt = null;
		
		try{
			conn = jdbcUtils.getConn();
			stmt = conn.createStatement();
			String sql = "SELECT * from Comment where Blog_id = "+ BlogId;
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {				
				comment = new Comment();
				
				comment.setContent(rs.getString("contentd"));
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
	
	public String getEmailById(int id){
		String email = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = jdbcUtils.getConn();
			String sql="select Email from User where Id = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,id);
			
			rs = ps.executeQuery();
			
			if(rs!=null && rs.next()){
				email = rs.getString("Email");
			}
			
		} catch (SQLException el) {
			System.out.println(el+"dao");
		}finally {
			jdbcUtils.close(conn);
		}
		return email;
	}

	
}
