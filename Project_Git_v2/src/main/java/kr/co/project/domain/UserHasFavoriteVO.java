package kr.co.project.domain;

public class UserHasFavoriteVO {
	private String user_id;
	private int favorite_id;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getFavorite_id() {
		return favorite_id;
	}
	public void setFavorite_id(int favorite_id) {
		this.favorite_id = favorite_id;
	}
	public UserHasFavoriteVO() {
		super();
	}
	@Override
	public String toString() {
		return "UserHasFavoriteVO [user_id=" + user_id + ", favorite_id=" + favorite_id + "]";
	}
	
	
	
}
