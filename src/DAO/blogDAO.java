package DAO;
import java.util.ArrayList;
import Jbean.*;

public interface blogDAO {
	
	public int getIdByEmail(String email);
	
	public ArrayList<Blog> getAllInfo();
	
	public ArrayList<Blog> getPersonInfo(int userId);
	
	public ArrayList<photo> getPhotoInfo(int userId);
	
	public ArrayList<Category> getCategoryInfo(int userId);
	
	public ArrayList<Leavemsg> getLeavemsg(int userId);
	
	public ArrayList<Comment> getComment(int userId);
	
}
