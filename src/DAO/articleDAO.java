package DAO;

import java.util.ArrayList;
import Jbean.*;

public interface articleDAO {
	
	public Blog serchArticleById(int BlogId);
	
	public ArrayList<Comment> serchCommentById(int BlogId);
}
