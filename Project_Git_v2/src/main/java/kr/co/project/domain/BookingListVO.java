package kr.co.project.domain;

public class BookingListVO {
	private String addr;
	private String amenities1;
	private String amenities2;
	private String amenities3;
	private String amenities4;
	
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
	private String giver_id;
	private String taker_id;
	
	public String getGiver_id() {
		return giver_id;
	}
	public void setGiver_id(String giver_id) {
		this.giver_id = giver_id;
	}
	public String getTaker_id() {
		return taker_id;
	}
	public void setTaker_id(String taker_id) {
		this.taker_id = taker_id;
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
	public BookingListVO() {
		super();
	}
	@Override
	public String toString() {
		return "BookingListVO [addr=" + addr + ", amenities1=" + amenities1 + ", amenities2=" + amenities2
				+ ", amenities3=" + amenities3 + ", amenities4=" + amenities4 +  ", board_id=" + board_id 
				+ ", booking_startdate=" + booking_startdate + ", booking_enddate="
				+ booking_enddate + ", people=" + people + ", user_id=" + user_id + ", booking_memo=" + booking_memo
				+ ", rsv_num=" + rsv_num + ", option1=" + option1 + ", option2=" + option2 + ", option3=" + option3
				+ ", option4=" + option4 + ", giver_id=" + giver_id + ", taker_id=" + taker_id + ", getGiver_id()="
				+ getGiver_id() + ", getTaker_id()=" + getTaker_id() + ", getAddr()=" + getAddr() + ", getAmenities1()="
				+ getAmenities1() + ", getAmenities2()=" + getAmenities2() + ", getAmenities3()=" + getAmenities3()
				+ ", getAmenities4()=" + getAmenities4() +  ", getOption1()="
				+ getOption1() + ", getOption2()=" + getOption2() + ", getOption3()=" + getOption3() + ", getOption4()="
				+ getOption4() + ", getBoard_id()=" + getBoard_id() + ", getBooking_startdate()="
				+ getBooking_startdate() + ", getBooking_enddate()=" + getBooking_enddate() + ", getPeople()="
				+ getPeople() + ", getUser_id()=" + getUser_id() + ", getBooking_memo()=" + getBooking_memo()
				+ ", getRsv_num()=" + getRsv_num() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	
	
}
