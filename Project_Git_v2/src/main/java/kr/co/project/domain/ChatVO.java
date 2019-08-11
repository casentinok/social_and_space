package kr.co.project.domain;

public class ChatVO {
	private int board_id;
	private String booking_startdate;
	private String booking_enddate;
	private int people;
	private String user_id;
	private String booking_memo;
	private String rsv_num;
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
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
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
	public String getRsv_num() {
		return rsv_num;
	}
	public void setRsv_num(String rsv_num) {
		this.rsv_num = rsv_num;
	}
	public ChatVO() {
		super();
	}
	
}
