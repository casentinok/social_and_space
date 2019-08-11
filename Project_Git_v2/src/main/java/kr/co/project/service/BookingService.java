package kr.co.project.service;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import kr.co.project.domain.BookingListVO;
import kr.co.project.domain.BookingVO;
import kr.co.project.domain.Criteria;

public interface BookingService {
	public void insertBooking(BookingVO vo) throws Exception ;
	public void deleteBooking(int rsv_num);
	public BookingListVO checkBooking(int rsv_num);
	public String bookingAddr(int rsv_num);
	public List<BookingListVO> tbookingList(String user_id,Criteria cri);
	public List<BookingListVO> gbookingList(String user_id,Criteria cri);
	public void deletebooking_boardid(int board_id);
	public void deletebooking_userid(String user_id);
}



