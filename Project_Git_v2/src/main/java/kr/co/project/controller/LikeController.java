package kr.co.project.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;

import kr.co.project.domain.LikeCntVO;
import kr.co.project.domain.LikeVO;
import kr.co.project.domain.UserVO;
import kr.co.project.service.LikeService;

@Controller
public class LikeController {
	private static final Logger logger = LoggerFactory.getLogger(LikeController.class);

	@Inject
	private LikeService service;

	@RequestMapping(value = "/board/insertLike.do")
	@ResponseBody
	// 좋아요
	public String insertlike(@ModelAttribute LikeVO vo) {
		logger.info("go to like.do");
		try {
			service.insertLike(vo);
			service.updateLikecnt(vo.getBoard_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	@RequestMapping(value = "/board/removeLike.do")
	@ResponseBody
	// 좋아요취소
	public String remove(@ModelAttribute LikeVO vo) {
		logger.info("go to remove.do");
		try {
			service.removeLike(vo);
			service.updateLikecnt(vo.getBoard_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

//	@RequestMapping(value = "/board/selectLikecnt.do")
//	public int select(HttpServletRequest req, LikeVO vo, Model model) {
//		logger.info("go ro selectLikecnt.do");
//		int a = 0;
//		try {
//			a = service.selectLikecnt(vo.getBoard_id());
//			model.addAttribute("cnt", a);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return a;
//	}
	@RequestMapping(value = "/board/selectLikecnt.do")
	public @ResponseBody int select(HttpServletRequest req, LikeVO vo) {
		logger.info("go ro selectLikecnt.do");
		
		int like = 0;
		try {
			like = service.selectLikecnt(vo.getBoard_id());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return like;
	}
}
