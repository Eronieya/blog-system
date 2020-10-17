package DAOIplm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jdbc.jdbcUtils;
import DAO.deleteCommentDAO;

public class deleteCommentDAOIplm implements deleteCommentDAO{
	public boolean deleteComment(int commentId){
		boolean result = false;
		int n = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		try{
			conn = jdbcUtils.getConn();
			String sql = "delete from Comment where cid = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,commentId);
			
			n = ps.executeUpdate();
		} catch (SQLException el) {
			System.out.println(el+"dao");
		} 
		
		if(n>0){
			result = true;
		}
		return result;
	}
	
	public boolean deleteLeavemsg(int leavemsgId){
		boolean result = false;
		int n = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		try{
			conn = jdbcUtils.getConn();
			String sql = "delete from Leavemsg where Id = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,leavemsgId);
			
			n = ps.executeUpdate();
		} catch (SQLException el) {
			System.out.println(el+"dao");
		} 
		
		if(n>0){
			result = true;
		}
		return result;
	}
	
	public boolean deleteArticle(int BlogId){
		boolean result = false;
		int n = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		try{
			conn = jdbcUtils.getConn();
			String sql = "delete from Blog where Id = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,BlogId);
			
			n = ps.executeUpdate();
		} catch (SQLException el) {
			System.out.println(el+"dao");
		} 
		
		if(n>0){
			result = true;
		}
		return result;
	}
}
