package kr.co.project.domain;

public class BoardHasFavoriteVO {
	private int board_id;
	private int favorite_id;
	
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public int getFavorite_id() {
		return favorite_id;
	}
	public void setFavorite_id(int favorite_id) {
		this.favorite_id = favorite_id;
	}
	public BoardHasFavoriteVO() {
		
	}
}
