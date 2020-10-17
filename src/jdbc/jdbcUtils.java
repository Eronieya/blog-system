package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public final class jdbcUtils {
	static final String jdbcUrl = "jdbc:mysql://localhost:3306/blog?useSSL=true";
	static final String username = "root";
	static final String password = null;
	static Connection conn;
	

	public jdbcUtils(){}
	
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new ExceptionInInitializerError(e);	
		}
	}
	
	public static Connection getConn() throws SQLException{
		return DriverManager.getConnection(jdbcUrl, username, password);
	}
	
	public static void close(Connection conn) {
		try {
			if (conn!=null) {
				conn.close();
			}
		}catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
	}
	
	public static void free(ResultSet rs,Statement st,Connection conn){
		try {
			if(rs != null)
				rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(st != null)
					st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally{
				try{
					if(conn != null)
						conn.close();
				} catch (SQLException e){
					e.printStackTrace();
				}
			}	
		}		
	}
}
