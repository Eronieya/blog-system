package Jbean;

public class photo {
	private int Id;
	private String Foldername;
	private String Filename;
	private int UserId;
	
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		this.UserId = userId;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getFoldername() {
		return Foldername;
	}
	public void setFoldername(String foldername) {
		Foldername = foldername;
	}
	public String getFilename() {
		return Filename;
	}
	public void setFilename(String filename) {
		Filename = filename;
	}
	
}
