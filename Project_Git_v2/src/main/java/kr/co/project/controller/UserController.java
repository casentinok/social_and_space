package kr.co.project.controller;



import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.runners.Parameterized.Parameter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.project.domain.UserHasFavoriteVO;
import kr.co.project.domain.UserVO;
import kr.co.project.service.BoardService;
import kr.co.project.service.BookmarkService;
import kr.co.project.service.FavoriteService;
import kr.co.project.service.LikeService;
import kr.co.project.service.UserService;
import kr.co.project.service.UserServiceImpl;


@Controller
public class UserController {
	  private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	  
	  @Inject
	  private UserService service;
	  @Inject
	  private BoardService bservice;
	  @Inject
	  private FavoriteService fservice;
	  @Inject
	  private LikeService lservice;
	  @Inject
	  private BookmarkService mservice;	
	 
	  
	  @RequestMapping(value = "/main.do")
	  //硫붿씤�럹�씠吏� �씠�룞
	  public String main() {
		  logger.info("Welcome home! The client locale is {}.");
		  return "main";
	  }
	  //濡쒓렇�씤�럹�씠吏� �씠�룞
	  @RequestMapping(value = "/loginForm.do")
	  public String login() {
		  logger.info("go to loginForm.do");
		  return "loginForm";
	  }
	  //濡쒓렇�씤泥섎━	  
	  @RequestMapping(value = "/login.do")
	  public ModelAndView loginForm(@ModelAttribute UserVO vo, HttpSession session) {
		  
		  boolean result = service.loginCheck(vo, session);
		  ModelAndView mav = new ModelAndView();
		  if(result == true) {//占싸깍옙占쏙옙 占쏙옙占쏙옙
			  //main.do占쏙옙 占싱듸옙 
			  mav.setViewName("main");//vo媛� dao源뚯� �솕�떎媛붾떎 �븯硫댁꽌, �젙蹂� 泥섎━瑜� �떎 �븯怨�, �뼱�뵒濡� 留ㅽ븨�븷嫄댁��뿉 ���븳 �젙蹂� 
			  mav.addObject("msg","濡쒓렇�씤�꽦怨�");
		  }else {
			  mav.setViewName("loginForm");
			  mav.addObject("msg","濡쒓렇�씤�떎�뙣" );
		  }
		  return mav ;
	  }
	  @RequestMapping(value = "/logout.do")
	  //濡쒓렇�븘�썐 泥섎━
	  public ModelAndView logout(HttpSession session) {
		  service.logout(session);
		  ModelAndView mav = new ModelAndView();
		  logger.info("logout");
		  mav.setViewName("main");
		  mav.addObject("msg","logout");
		  return mav;
	  }
	  
	  
	  @RequestMapping(value = "/registerForm.do")
	  //�쉶�썝媛��엯�럹�씠吏� �씠�룞 
	  public String registerForm() {
		  logger.info("go to registerForm.do");
		  return "register";
	  }
	  
	  @RequestMapping(value = "/register.do")
	  //�쉶�썝媛��엯 泥섎━
	  public String register(@ModelAttribute UserVO vo) {
		  logger.info("go to register!.do");
		  service.insertMember(vo);
		  return "main";
	  }
	  
	  @ResponseBody
	  @RequestMapping(value = "/idcheck.do")
	  //�븘�씠�뵒 以묐났泥댄겕
	  public int idcheck(HttpServletRequest req) {
		  logger.info("exec idcheck.do ");
		  String user_id = req.getParameter("user_id");
		  UserVO vo = service.idcheck(user_id);
		  int result = 0;
		  if(vo == null) {
			  result = 1;//�븘�씠�뵒 以묐났 �릺吏� �븡�쑝硫� 
		  }
		  return result;
	  }
	  
	  @RequestMapping(value = "/searchuser.do")

	  public String searchuser(HttpServletRequest req, Model model) {
		  
		 		  //
		  try {
		  String user_id = req.getParameter("user_id");
		  model.addAttribute("vo",service.usercheck(user_id));
		 
		  logger.info(">>>>>>>>>>>>>>>>>>>>>>searchuser.do  :::::::: " + user_id);
		  model.addAttribute("fav",fservice.selectfavo_user(user_id));
		} catch (Exception e) {
			e.printStackTrace();
		}
		  
		 
		  return "ranking";
	  }
	  
	  @RequestMapping(value = "/update.do")
	  //�쉶�썝�젙蹂� �닔�젙 
	  public String updateuser(@ModelAttribute UserVO vo, HttpServletRequest req) {
		  service.updateuser(vo);
		  logger.info("�쉶�썝�젙蹂� �닔�젙  " );
		  String user_id = req.getParameter("user_id");
		  return "forward:/searchuser.do?user_id="+user_id;
	  }
	  
	  @RequestMapping(value = "/insertfavoriteuser.do")
	  //user favorite insert 
	  public @ResponseBody int insertfavoriteuser(@ModelAttribute UserHasFavoriteVO fvo) {
		  logger.info("insert favorite user : " + fvo.getUser_id() + " , favo : " + fvo.getFavorite_id());
		  try {
			fservice.userinsertfavorite(fvo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		  return 1;
	  }
	  
	  @RequestMapping(value = "/deletefavoriteuser.do")
	  //user favorite insert 
	  public @ResponseBody int deletefavoriteuser(@ModelAttribute UserHasFavoriteVO fvo) {
		  logger.info("delete favorite user : " + fvo.getUser_id() + " , favo : " + fvo.getFavorite_id());
		  try {
			fservice.userdeletefavorite(fvo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		  return 1;
	  }
	  
	  @RequestMapping(value = "/deleteuser.do")
	  //�쉶�썝�깉�눜
	  public String deleteuser(HttpSession session, @RequestParam("user_id")String user_id) {
		  boolean a = service.userTypeCheck(user_id);
		  
		  try {
			  if(a == true) {//giver �씠硫�
				  logger.info("usertype : giver");
			  //醫뗭븘�슂, 遺곷쭏�겕 �궘�젣 
				  lservice.deletelike_userid(user_id);
				  logger.info("醫뗭븘�슂 �궘�젣 ok");
				  mservice.deletemark_userid(user_id);
				  logger.info("遺곷쭏�겕 �궘�젣 ok");
			  //�뙎湲� �궘�젣 
				bservice.deletecomment_userid(user_id);
				logger.info("�뙎湲��궘�젣 ok");
			  //梨꾪똿 �궘�젣 
			  //user_has_favorite �궘�젣
				fservice.deletefavorite_userid(user_id);
				logger.info("favorite�궘�젣 ok");
			  //board_has_favorite �궘�젣 
				fservice.delfav_userid(user_id);
				logger.info("favorite board ok");
			  //content_img �궘�젣
				bservice.deletecontentimg(user_id);
				logger.info("�씠誘몄��궘�젣 ok");
			  //giver_board �궘�젣 
				bservice.deletegiverboard_userid(user_id);
				logger.info("giverboard �궘�젣 ok ");
			  //common_board �궘�젣 
				bservice.deletecommonboard_userid(user_id);
				logger.info("commonboard �궘�젣 ok ");
				service.deleteuser(user_id, session);
				logger.info("user�궘�젣 ok ");
		  }else {//taker �씠硫� 
			  logger.info("usertype : taker");
			  //醫뗭븘�슂, 遺곷쭏�겕 �궘�젣 
			  lservice.deletelike_userid(user_id);
			  logger.info("醫뗭븘�슂 �궘�젣 ok");
			  mservice.deletemark_userid(user_id);
			  logger.info("遺곷쭏�겕 �궘�젣 ok");
			  //�뙎湲� �궘�젣 
			  bservice.deletecomment_userid(user_id);
			  logger.info("�뙎湲� �궘�젣 ok ");
			  //梨꾪똿 �궘�젣 
			  //user_has_favorite �궘�젣
				fservice.deletefavorite_userid(user_id);
				logger.info("favorite�궘�젣 ok");
			  //board_has_favorite �궘�젣 
			  //content_img �궘�젣
			  bservice.deletecontentimg(user_id);
			  logger.info("�씠誘몄��궘�젣 ok");
			  //common_board �궘�젣 
			  bservice.deletecommonboard_userid(user_id);
			  logger.info("common_board �궘�젣 ok ");
			  service.deleteuser(user_id, session); 
			  logger.info("user �궘�젣 ok ");
		  }
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//		  service.deleteuser(user_id,session);
//		  logger.info("�쉶�썝�젙蹂� �궘�젣 " );
		 
		  return "main";
	  }
	  
	  
	 
}
