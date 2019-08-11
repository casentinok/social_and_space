package kr.co.project.domain;

public class ContentImgVO {
	private String img_name;
	private int board_id;
	private String original_name;
	private long time;
	
	public String getImg_name() {
		return img_name;
	}
	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public String getOriginal_name() {
		return original_name;
	}
	public void setOriginal_name(String original_name) {
		this.original_name = original_name;
	}
	public long getTime() {
		return time;
	}
	public void setTime(long time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "ContentImgVO [img_name=" + img_name + ", board_id=" + board_id + ", original_name=" + original_name
				+ ", time=" + time + "]";
	}
}
