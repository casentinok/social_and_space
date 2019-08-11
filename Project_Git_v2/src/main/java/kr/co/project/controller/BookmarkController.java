package kr.co.project.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.project.domain.BookmarkVO;
import kr.co.project.domain.Criteria;
import kr.co.project.domain.PageMaker;
import kr.co.project.service.BookmarkService;

@Controller
public class BookmarkController {

	private static final Logger logger = LoggerFactory.getLogger(BookmarkController.class);

	@Inject
	private BookmarkService service;

	/*
	 * @RequestMapping(value = "/bookmark.do") public String
	 * selectAllBookmark(HttpSession session)
	 */

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value ="/board/checkmark.nn") public boolean
	 * selectmark(@ModelAttribute BookmarkVO vo) {
	 * logger.info(">>>>>>>>>>>>>go to checkmark.nn"); // boolean a = false; // //
	 * try { // a = service.checkExistBookmark(vo); // }catch(Exception e){ //
	 * e.printStackTrace(); // } // // //占쎌뵠沃섓옙 �겫怨룹춳占쎄쾿 占쎈뻥占쎌몵筌롳옙 flase 占쎈툧占쎈뻥占쎌몵筌롳옙 true // if(a) { //
	 * return "bookmarkdo"; // }else { // return "bookmarkcancel"; // }
	 * 
	 * System.out.println(vo.getBoard_id() + " " + vo.getUser_id()); boolean a =
	 * true;
	 * 
	 * a = service.checkExistBookmark(board_id, user_id);
	 * 
	 * 
	 * 
	 * if(a) { insert 占쎈뼄占쎈뻬 } else { delete 占쎈뼄占쎈뻬 }
	 * 
	 * 
	 * System.out.println("�겫�뜄�뵛揶쏉옙 " + a); return a;
	 * 
	 * }
	 */

	@RequestMapping(value = "/board/insertmark.nn")
	@ResponseBody
	public String insertmark(@ModelAttribute BookmarkVO vo) {
		logger.info(">>>>>>>>>>>>>go to insertmark.nn");

		try {
			service.insertBookmark(vo);
		} catch (Exception e) {

			e.printStackTrace();
		}
		return "bookmarkcancel";
	}

	@RequestMapping(value = "/board/deletemark.nn")
	public String deletemark(HttpServletRequest req, BookmarkVO vo) {
		logger.info(">>>>>>>>>>>>>go to deletemark.nn ");

		try {
			service.deleteBookmark(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "bookmarkdo";
	}
	
	@RequestMapping(value = "/bookmarklist.nn")	  
	  public String list(@RequestParam("user_id")String user_id, Model model, @RequestParam("page")int page) {
		logger.info(">>>>>>>>>>>>>go to bookmarklist.nn " );				 
		Criteria cri = new Criteria();
		cri.setPage(page);
		  
		 try {
			 model.addAttribute("list", service.bookmarkList(user_id,cri));
			 //PageMaker pageMaker = new PageMaker();
			 
			  
		} catch (Exception e) {			
			e.printStackTrace();
		}
		
		  return "board/list";
	  }
}