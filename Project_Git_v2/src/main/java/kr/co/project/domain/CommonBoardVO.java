package kr.co.project.domain;

import java.util.Date;

public class CommonBoardVO {
	private int board_id;
	private String board_content;
	private int like_cnt;
	private Date reg_date;
	private String user_id;
	private String thumb_img;
	
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public int getLike_cnt() {
		return like_cnt;
	}
	public void setLike_cnt(int like_cnt) {
		this.like_cnt = like_cnt;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getThumb_img() {
		return thumb_img;
	}
	public void setThumb_img(String thumb_img) {
		this.thumb_img = thumb_img;
	}
	@Override
	public String toString() {
		return "CommonBoardVO [board_id=" + board_id + ", board_content=" + board_content + ", like_cnt=" + like_cnt
				+ ", reg_date=" + reg_date + ", user_id=" + user_id + ", thumb_img=" + thumb_img + "]";
	}
	
	
}
