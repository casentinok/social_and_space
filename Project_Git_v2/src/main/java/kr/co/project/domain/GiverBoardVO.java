package kr.co.project.domain;

import java.util.Date;

public class GiverBoardVO {
	private int board_id;	
	private String addr;
	private String amenities1;
	private String amenities2;
	private String amenities3;
	private String amenities4;
	//private String amenities5;	
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
		this.amenities1 = amenities1.equals("") ? null : amenities1;
	}
	public String getAmenities2() {
		return amenities2;
	}
	public void setAmenities2(String amenities2) {
		this.amenities2 =amenities2.equals("") ? null : amenities2;
	}
	public String getAmenities3() {
		return amenities3;
	}
	public void setAmenities3(String amenities3) {
		this.amenities3 = amenities3.equals("") ? null : amenities3;
	}
	public String getAmenities4() {
		return amenities4;
	}
	public void setAmenities4(String amenities4) {
		this.amenities4 = amenities4.equals("") ? null : amenities4;
	}
//	public String getAmenities5() {
//		return amenities5;
//	}
//	public void setAmenities5(String amenities5) {
//		this.amenities5 = amenities5;
//	}
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
		return "GiverBoardVO [board_id=" + board_id + ", addr=" + addr + ", amenities1=" + amenities1 + ", amenities2="
				+ amenities2 + ", amenities3=" + amenities3 + ", amenities4=" + amenities4 + ", amenities_etc="
				+ amenities_etc + ", booking_startdate=" + booking_startdate + ", booking_enddate=" + booking_enddate
				+ ", people=" + people + "]";
	}
	
	
	
}
