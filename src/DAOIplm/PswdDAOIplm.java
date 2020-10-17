package DAOIplm;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jdbc.jdbcUtils;
import DAO.ChangePswdDAO;


public class PswdDAOIplm implements ChangePswdDAO {
	public boolean change(int userId, String oldpassword, String newpassword){
		boolean result = false;
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = jdbcUtils.getConn();
			String sql="update User set Password = ? where Id = ? and Password = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1,newpassword);
			ps.setInt(2,userId);
			ps.setString(3,oldpassword);
			
			ps.executeUpdate();
			
		} catch (SQLException el) {
			System.out.println(el+"dao");
		}finally {
			jdbcUtils.close(conn);
		}
		
		result = isChange(userId,newpassword);
		
		return result;
	}

	static private boolean isChange(int userId,String newpassword){
		boolean result = false;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = jdbcUtils.getConn();
			String sql="select * from User where Id = ? and Password = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,userId);
			ps.setString(2,newpassword);

			
			rs = ps.executeQuery();
			
			if(rs!=null && rs.next()){
				result = true;
			}
			
		} catch (SQLException el) {
			System.out.println(el+"dao");
		}finally {
			jdbcUtils.close(conn);
		}
		return result;
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
}
