package kr.co.project.domain;

public class CommentVO {
	private int comment_id;
	private String user_id;
	private String content;
	private int comment_star;
	private int board_id;
	private String reg_date;
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getComment_star() {
		return comment_star;
	}
	public void setComment_star(int comment_star) {
		this.comment_star = comment_star;
	}
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public CommentVO() {
		super();
	}
	
}
