package kr.co.project.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.project.domain.BookingListVO;
import kr.co.project.domain.BookingVO;
import kr.co.project.domain.Criteria;
import kr.co.project.service.BookingService;



@Controller
public class BookingController {

	private static final Logger logger = LoggerFactory.getLogger(BookingController.class);
	
	@Inject
	private BookingService service;
	
	//cart
		@RequestMapping(value = "/cart.do", method = RequestMethod.POST)
		public String cart(@RequestParam("checkin") String checkin, @RequestParam("checkout") String checkout,@RequestParam("addr") String addr,@RequestParam("board_id") int board_id, @RequestParam("people") String people,Model model ) throws Exception {
	//userid, boardid, date, 諛쏆븘���빞�븳�떎
			logger.info("cartpage");
			System.out.println(checkin+"   "+checkout);
			model.addAttribute("checkin", checkin);
			model.addAttribute("checkout", checkout);
			model.addAttribute("addr", addr);
			model.addAttribute("people", people);
			model.addAttribute("board_id", board_id);
			
			return "cart";
		}
		
	//confirm
		@RequestMapping(value = "/confirm.do", method = RequestMethod.POST )
		public String confirm(@ModelAttribute BookingVO bkvo, @RequestParam("addr") String addr, Model model) throws Exception {
			logger.info("confirmpage");
			
			System.out.println(bkvo.toString());
			
			try {
				service.insertBooking(bkvo);	
				model.addAttribute("bookingVO", bkvo);
				model.addAttribute("addr", addr);
				System.out.println(addr);
				
			} catch (Exception e) {

				e.printStackTrace();
			}
			
			return "confirmation";
			
		}
		
	      //check booking
	      @RequestMapping(value = "/checkbooking.do", method = RequestMethod.POST )
	      public String checkbooking(@ModelAttribute BookingListVO bkvo, @RequestParam("rsv_num") int rsv_num, Model  model) throws Exception {
	         logger.info("::::::::::::::::checkbooking.do");
	         
	         System.out.println(rsv_num);

	            bkvo = service.checkBooking(rsv_num);   
	            String addr = service.bookingAddr(rsv_num);
	            model.addAttribute("bookingListVO", bkvo);
	            model.addAttribute("addr", addr);
	            System.out.println(addr);
	         
	         return "checkBooking";
	         
	      }
		
		@RequestMapping(value="/tbookingList")
		public String tbookingList(@RequestParam("user_id")String user_id, Model model, @RequestParam("page")int page) {
			logger.info(":::::::::::::::::::: go to tbookingList");
			Criteria cri = new Criteria();
			cri.setPage(page);
			
			try {
				
				model.addAttribute("list", service.tbookingList(user_id, cri));
					
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			return "board/tbookinglist";
		}
		@RequestMapping(value="/gbookingList")
		public String gbookingList(@RequestParam("user_id")String user_id, Model model, @RequestParam("page")int page) {
			logger.info("::::::::::::::::::::::: go to gbookingList");
			Criteria cri = new Criteria();
			cri.setPage(page);
			
			try {
					model.addAttribute("list", service.gbookingList(user_id, cri));
					
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			return "board/gbookinglist";
		}
		
	      @RequestMapping(value="/deleteBooking")
	      public String deleteBooking(@RequestParam("rsv_num") int rsv_num) {
	    	  logger.info(">>>>>>>>>>deleteBooking");
	    	  service.deleteBooking(rsv_num);
	    	  return "main";
	      }
}
