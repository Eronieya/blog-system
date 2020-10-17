package DAOIplm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import jdbc.jdbcUtils;
import DAO.inputCommentDAO;

public class inputCommentDAOIplm implements inputCommentDAO{
	
	public boolean inputComment(int Blog_id, String Content, String Username){
		boolean result = false;
		Connection conn = null;
		int n = 0;
		Date date = new Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
		String time = dateFormat.format(date) ;
		System.out.println(time);
		try{
			conn = jdbcUtils.getConn();
			String sql = "insert into Comment (Blog_id, Contentd , CreatedTime , Username ) values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, Blog_id);
			ps.setString(2, Content);
			ps.setString(3,time);
			ps.setString(4, Username);
			
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
