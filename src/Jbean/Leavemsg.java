package Jbean;
import java.util.Date;

public class Leavemsg {
	private int Id;
	private int forId;
	private String Name;
	private String Content;
	private Date CreatedTime;
	
	public int getForId() {
		return forId;
	}
	public void setForId(int forId) {
		this.forId = forId;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
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
	
	
}
