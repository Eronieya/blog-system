package DAOIplm;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;

import DAO.UserDAO;
import DAO.DaoException;
import Jbean.User;
import jdbc.jdbcUtils;


public class UserDaoJdbcIplm implements UserDAO {
	public void addUser(User user){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		SQLException ex = null;
		int level = 0;
		try{
			conn = jdbcUtils.getConn();
			String sql = "insert into User(UserName, Password, Level, Email ) value (?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			ps.setInt(3, level);
			ps.setString(4, user.getEmail());
			ps.executeUpdate();
		} catch (SQLException e){
			throw new DaoException(e.getMessage(),e) ;
		} finally{
			jdbcUtils.free(rs, ps, conn);
		}
		
	}
	
	public boolean lgoinByEmail(String email, String password){
		boolean result = false;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = jdbcUtils.getConn();
			String sql="select * from User where email = ? and password= ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1,email);
			ps.setString(2,password);
			
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
	
	public String getUserNameByEmail(String email){
		String name = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = jdbcUtils.getConn();
			String sql="select UserName from User where email = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1,email);
			
			rs = ps.executeQuery();
			
			if(rs!=null && rs.next()){
				name = rs.getString("UserName");
			}
			
		} catch (SQLException el) {
			System.out.println(el+"dao");
		}finally {
			jdbcUtils.close(conn);
		}
		return name;
	}
	
	public String getPassword(String username){
		String name = null;
		return name;
	}
	
	public String getPassword(int uid){
		String name = null;
		return name;
	}
}
