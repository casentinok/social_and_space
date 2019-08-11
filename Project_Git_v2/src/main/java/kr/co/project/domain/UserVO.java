package kr.co.project.domain;

public class UserVO {
	private String user_id;
	private String user_name;
	private String u_password;
	private String email;
	private String tel;
	private String thumb_nail;
	private int user_type;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getThumb_nail() {
		return thumb_nail;
	}
	public void setThumb_nail(String thumb_nail) {
		this.thumb_nail = thumb_nail;
	}
	public int getUser_type() {
		return user_type;
	}
	public void setUser_type(int user_type) {
		this.user_type = user_type;
	}
	public UserVO() {
		super();
	}
	
	
}
