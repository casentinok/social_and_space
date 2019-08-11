package kr.co.project.domain;

public class BookingVO {
	private int board_id;
	private String booking_startdate;
	private String booking_enddate;
	private String people;
	private String user_id;
	private String booking_memo;
	private int rsv_num;
	private int option1;
	private int option2;
	private int option3;
	private int option4;
	
	public int getOption1() {
		return option1;
	}
	public void setOption1(int option1) {
		this.option1 = option1;
	}
	public int getOption2() {
		return option2;
	}
	public void setOption2(int option2) {
		this.option2 = option2;
	}
	public int getOption3() {
		return option3;
	}
	public void setOption3(int option3) {
		this.option3 = option3;
	}
	public int getOption4() {
		return option4;
	}
	public void setOption4(int option4) {
		this.option4 = option4;
	}
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
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
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getBooking_memo() {
		return booking_memo;
	}
	public void setBooking_memo(String booking_memo) {
		this.booking_memo = booking_memo;
	}
	public int getRsv_num() {
		return rsv_num;
	}
	public void setRsv_num(int rsv_num) {
		this.rsv_num = rsv_num;
	}
	public BookingVO() {
		super();
	}
	@Override
	public String toString() {
		return "BookingVO [board_id=" + board_id + ", booking_startdate=" + booking_startdate + ", booking_enddate="
				+ booking_enddate + ", people=" + people + ", user_id=" + user_id + ", booking_memo=" + booking_memo
				+ ", rsv_num=" + rsv_num + "]";
	}
	
}
