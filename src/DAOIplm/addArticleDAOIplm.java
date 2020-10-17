package DAOIplm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import jdbc.jdbcUtils;
import DAO.addArticleDAO;

public class addArticleDAOIplm implements addArticleDAO{
	public boolean addArticle(String title, String content, int userid){
		boolean result = false;
		Connection conn = null;
		int n = 0;
		Date date = new Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
		String time = dateFormat.format(date) ;
		try{
			
			conn = jdbcUtils.getConn();
			String sql = "insert into Blog(Category_id, title, content, Created_time, useId) values('0',?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(2, content);
			ps.setString(3, time);
			ps.setInt(4 , userid);
			
			n = ps.executeUpdate();
			
		} catch (SQLException el) {
			System.out.println(el+"dao");
		}
		if(n>0){
			result = true;
		}
		return result;
	}
	
	public int getIdByEmail(String email){
		int Id = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = jdbcUtils.getConn();
			String sql="select Id from User where Email = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1,email);
			
			rs = ps.executeQuery();
			
			if(rs!=null && rs.next()){
				Id = rs.getInt("Id");
			}
			
		} catch (SQLException el) {
			System.out.println(el+"dao");
		}finally {
			jdbcUtils.close(conn);
		}
		return Id;
	}
	
}
