package DAO;
import java.sql.SQLException;
import Jbean.User;

public interface UserDAO {
	public void addUser(User user);
	
	public boolean lgoinByEmail(String email, String password);
	
	public String getUserNameByEmail(String email);		//通过id获取用户名
	
	public String getPassword(String username);		//通过用户名获取密码
	
	public String getPassword(int uid);		//通过id获取密码
}
