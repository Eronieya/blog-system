package DAO;

public interface ChangePswdDAO {
	
	public boolean change(int userId, String oldpassword, String newpassword);
	
	public int getIdByEmail(String email);
}
