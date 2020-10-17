package Jbean;
import java.util.Date;


public class Blog {
	private int Id;
	private int CategoryId;
	private int userId;
	private String title;
	private String content;
	private Date CreatedTime;
	
	public int getCategoryId() {
		return CategoryId;
	}
	public void setCategoryId(int categoryId) {
		CategoryId = categoryId;
	}
	public Date getCreatedTime() {
		return CreatedTime;
	}
	public void setCreatedTime(Date createdTime) {
		CreatedTime = createdTime;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

}
