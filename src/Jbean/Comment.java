package Jbean;
import java.util.Date;

public class Comment {
	private int Id;
	private int Blog_id;
	private String Content;
	private Date CreatedTime;
	private String Username;
	private String BlogTitle;
	
	public String getBlogTitle() {
		return BlogTitle;
	}
	public void setBlogTitle(String blogTitle) {
		BlogTitle = blogTitle;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public int getBlog_id() {
		return Blog_id;
	}
	public void setBlog_id(int blog_id) {
		Blog_id = blog_id;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public Date getCreatedTime() {
		return CreatedTime;
	}
	public void setCreatedTime(Date createdTime) {
		CreatedTime = createdTime;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	
	
}
