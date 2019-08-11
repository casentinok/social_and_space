package kr.co.project.domain;

import java.util.Date;

public class GiverBoard {
	private int board_id;
	private String board_content;
	private int like_cnt;
	private Date reg_date;
	private String user_id;
	private String thumb_img;
	private String addr;
	private String amenities1;
	private String amenities2;
	private String amenities3;
	private String amenities4;
	private String amenities5;	
	private String amenities_etc;
	private String booking_startdate;
	private String booking_enddate;
	private int people;
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
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAmenities1() {
		return amenities1;
	}
	public void setAmenities1(String amenities1) {
		this.amenities1 = amenities1;
	}
	public String getAmenities2() {
		return amenities2;
	}
	public void setAmenities2(String amenities2) {
		this.amenities2 = amenities2;
	}
	public String getAmenities3() {
		return amenities3;
	}
	public void setAmenities3(String amenities3) {
		this.amenities3 = amenities3;
	}
	public String getAmenities4() {
		return amenities4;
	}
	public void setAmenities4(String amenities4) {
		this.amenities4 = amenities4;
	}
	public String getAmenities5() {
		return amenities5;
	}
	public void setAmenities5(String amenities5) {
		this.amenities5 = amenities5;
	}
	public String getAmenities_etc() {
		return amenities_etc;
	}
	public void setAmenities_etc(String amenities_etc) {
		this.amenities_etc = amenities_etc;
	}
	public String getBooking_startdate() {
		return booking_startdate;
	}
	public void setBooking_startdate(String booking_startdate) {
		this.booking_startdate = booking_startdate;
	}
	public String getBooking_enddate() {
		return booking_enddate;
	}
	public void setBooking_enddate(String booking_enddate) {
		this.booking_enddate = booking_enddate;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	@Override
	public String toString() {
		return "GiverBoard [board_id=" + board_id + ", board_content=" + board_content + ", like_cnt=" + like_cnt
				+ ", reg_date=" + reg_date + ", user_id=" + user_id + ", thumb_img=" + thumb_img + ", addr=" + addr
				+ ", amenities1=" + amenities1 + ", amenities2=" + amenities2 + ", amenities3=" + amenities3
				+ ", amenities4=" + amenities4 + ", amenities5=" + amenities5 + ", amenities_etc=" + amenities_etc
				+ ", booking_startdate=" + booking_startdate + ", booking_enddate=" + booking_enddate + ", people="
				+ people + "]";
	}
	
	
}
