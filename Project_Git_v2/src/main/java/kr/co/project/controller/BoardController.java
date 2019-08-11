package kr.co.project.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.project.domain.BoardHasFavoriteVO;
import kr.co.project.domain.CommentVO;
import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.Criteria;
import kr.co.project.domain.FavoriteType;
import kr.co.project.domain.GiverBoardVO;
import kr.co.project.domain.PageMaker;
import kr.co.project.domain.SearchVO;
import kr.co.project.domain.Test;
import kr.co.project.domain.UserHasFavoriteVO;
import kr.co.project.service.BoardService;
import kr.co.project.service.BookmarkService;
import kr.co.project.service.FavoriteService;
import kr.co.project.service.LikeService;
import kr.co.project.service.UploadService;
import kr.co.project.service.UserService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

   private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

   @Inject
   private BoardService service;
   @Inject
   private UserService serviceuser;
   @Inject
   private LikeService likeservice;
   @Inject
   private BookmarkService markservice;
   @Inject
   private UploadService upservice;
   @Inject
   private FavoriteService fservice;
   
   @Resource(name = "uploadPath")
   private String uploadPath;

   @RequestMapping(value = "/list", method = RequestMethod.GET)
   public void giverlistPage(Model model, HttpSession session, @RequestParam("page") int page) throws Exception {

      logger.info("listpage");

      // model.addAttribute("list", service.listCriteria(cri));

      Criteria cri = new Criteria();
      // List<CommonBoardVO> list = service.giverlistAll();
      cri.setPage(page);
      logger.info("몇번째" + cri.getPage());
      logger.info(cri.toString());
      List<String> like = new ArrayList<String>();
      List<String> addr = new ArrayList<String>();

      List<CommonBoardVO> list2 = service.selectgiverList(cri);

      String user_id = (String) session.getAttribute("user_id");

      for (int i = 0; i < list2.size(); i++) {
         int board_id = list2.get(i).getBoard_id();
         
         boolean a = likeservice.checkLike(board_id, user_id);
         addr.add(service.getaddr(board_id));
         if (a) {
            like.add("like1.png");
         } else {
            like.add("like2.png");
         }

      }

      model.addAttribute("list", list2);
      model.addAttribute("like", like);
      model.addAttribute("addr", addr);

   }
  
      
   @RequestMapping(value = "/social.do")
   public String social() throws Exception {

      return "social";
   }

   @RequestMapping(value = "/tlist", method = RequestMethod.GET)
   public String takerlistPage(Model model, HttpSession session, @RequestParam("page") int page) throws Exception {

      logger.info("takerlistpage");
      Criteria cri = new Criteria();
      cri.setPage(page);

// model.addAttribute("list", service.listCriteria(cri));

      List<CommonBoardVO> list = service.takerlistAll(cri);
      List<String> like = new ArrayList<String>();

      String user_id = (String) session.getAttribute("user_id");
// mav.setViewName("list");

      for (int i = 0; i < list.size(); i++) {
         int board_id = list.get(i).getBoard_id();
         boolean a = likeservice.checkLike(board_id, user_id);
         
         if (a) {
            like.add("like1.png");
         } else {
            like.add("like2.png");
         }

      }
// mav.addObject("list",list);

      model.addAttribute("list", list);
      model.addAttribute("like", like);
      return "board/list";
   }

   @RequestMapping(value = "/flist", method = RequestMethod.GET)
   public String favoritelistpage(@ModelAttribute("ftype") FavoriteType ftype, Model model,
         @RequestParam("page") int page, HttpSession session) throws Exception {

      // logger.info(service.favoriteTypeList(ftype).toString());
      ftype.setPage(page);
      List<CommonBoardVO> list = service.favoriteTypeList(ftype);
      List<String> like = new ArrayList<String>();
      model.addAttribute("list", list);
      String user_id = (String)session.getAttribute("user_id");
      List<String> addr = new ArrayList<String>();
      
      for (int i = 0; i < list.size(); i++) {
         int board_id = list.get(i).getBoard_id();
         boolean a = likeservice.checkLike(board_id, user_id);
         addr.add(service.getaddr(board_id));
         if (a) {
            like.add("like1.png");
         } else {
            like.add("like2.png");
         }

      }
      model.addAttribute("like", like);
      model.addAttribute("addr", addr);

//     PageMaker pageMaker = new PageMaker();
//     Criteria cri = new Criteria();
//     cri.setPage(ftype.getPage());
//     cri.setPerPageNum(ftype.getPerPageNum());
//     pageMaker.setCri(cri);
// 
//     pageMaker.setTotalCount(service.favoriteListCount(ftype));

      logger.info(service.favoriteListCount(ftype) + " favorite list count");

//     model.addAttribute("pageMaker", pageMaker);
      return "board/list";
   }

   @RequestMapping(value = "/write", method = RequestMethod.POST)
   public @ResponseBody int writeBoard(@RequestParam("user_id") String user_id,
         @RequestParam("board_content") String board_content, @RequestParam("user_type") int type,
         HttpSession session) throws Exception {
      CommonBoardVO vo = new CommonBoardVO();
      vo.setUser_id(user_id);
      vo.setBoard_content(board_content);
      vo.setThumb_img("");
      int board_id = 0;
      // int type = Integer.parseInt((String)session.getAttribute("user_type"));

      if (type == 0) {
         service.takerWriteBoard(vo);
         board_id = service.getWritedBoardID(user_id);
      }
      return board_id;
   }
   //return type = json > javascript or ajax easy use lololololol

   @RequestMapping(value = "/writeg", method = RequestMethod.POST)
   public @ResponseBody int giverwriteBoard(@RequestParam("user_id") String user_id,
         @RequestParam("board_content") String board_content, @RequestParam("user_type") int type,
         /* @ModelAttribute("gvo") */GiverBoardVO gvo, HttpSession session,
         @RequestParam("favorite_id1") int favorite_id1, @RequestParam("favorite_id2") int favorite_id2,
         @RequestParam("favorite_id3") int favorite_id3, @RequestParam("favorite_id4") int favorite_id4,
         @RequestParam("favorite_id5") int favorite_id5, @RequestParam("favorite_id6") int favorite_id6,
         @RequestParam("favorite_id7") int favorite_id7, @RequestParam("favorite_id8") int favorite_id8)
         throws Exception {
      logger.info("asdfasdfsd");
      CommonBoardVO vo = new CommonBoardVO();
      vo.setUser_id(user_id);
      vo.setBoard_content(board_content);
      vo.setThumb_img("");
      int board_id = 0;
      // int type = Integer.parseInt((String)session.getAttribute("user_type"));

      logger.info(type + "");
      if (type == 1) {
         logger.info("????");
         service.takerWriteBoard(vo);
         logger.info(vo.toString());
         board_id = service.getWritedBoardID(user_id);
         gvo.setBoard_id(board_id);
         logger.info(gvo.toString());
         service.giverWriteBoard(gvo);
         if (favorite_id1 != 0) {
            BoardHasFavoriteVO bvo1 = new BoardHasFavoriteVO();
            bvo1.setBoard_id(board_id);
            bvo1.setFavorite_id(favorite_id1);
            fservice.boardinsertfavorite(bvo1);
         }
         if (favorite_id2 != 0) {
            BoardHasFavoriteVO bvo2 = new BoardHasFavoriteVO();
            bvo2.setBoard_id(board_id);
            bvo2.setFavorite_id(favorite_id2);
            fservice.boardinsertfavorite(bvo2);
         }
         if (favorite_id3 != 0) {
            BoardHasFavoriteVO bvo3 = new BoardHasFavoriteVO();
            bvo3.setBoard_id(board_id);
            bvo3.setFavorite_id(favorite_id3);
            fservice.boardinsertfavorite(bvo3);
         }
         if (favorite_id4 != 0) {
            BoardHasFavoriteVO bvo4 = new BoardHasFavoriteVO();
            bvo4.setBoard_id(board_id);
            bvo4.setFavorite_id(favorite_id4);
            fservice.boardinsertfavorite(bvo4);
         }
         if (favorite_id5 != 0) {
            BoardHasFavoriteVO bvo5 = new BoardHasFavoriteVO();
            bvo5.setBoard_id(board_id);
            bvo5.setFavorite_id(favorite_id5);
            fservice.boardinsertfavorite(bvo5);
         }
         if (favorite_id6 != 0) {
            BoardHasFavoriteVO bvo6 = new BoardHasFavoriteVO();
            bvo6.setBoard_id(board_id);
            bvo6.setFavorite_id(favorite_id6);
            fservice.boardinsertfavorite(bvo6);
         }
         if (favorite_id7 != 0) {
            BoardHasFavoriteVO bvo7 = new BoardHasFavoriteVO();
            bvo7.setBoard_id(board_id);
            bvo7.setFavorite_id(favorite_id7);
            fservice.boardinsertfavorite(bvo7);
         }
         if (favorite_id8 != 0) {
            BoardHasFavoriteVO bvo8 = new BoardHasFavoriteVO();
            bvo8.setBoard_id(board_id);
            bvo8.setFavorite_id(favorite_id8);
            fservice.boardinsertfavorite(bvo8);
         }
      }
      return board_id;
   }

   @RequestMapping(value = "/writePage", method = RequestMethod.GET)
   public String writeBoardPage() throws Exception {
      return "board/write";
   }

   ////////////////////////////////
   // 20190521 ts
   ///////////////////////////////
   @RequestMapping(value = "/ulist.do", method = RequestMethod.GET)
   public ModelAndView userboardlistpage(@RequestParam("user_id") String user_id, @RequestParam("page") int page)
         throws Exception {
      logger.info("useboard " + user_id);

      Criteria cri = new Criteria();
      cri.setPage(page);
      ModelAndView mav = new ModelAndView();
      List<CommonBoardVO> list = service.listUser(user_id, cri);
      mav.setViewName("board/list");
      mav.addObject("list", list);
      return mav;
   }

   @RequestMapping(value = "/boardview.do", method = RequestMethod.GET)
   public ModelAndView boardview(@RequestParam("board_id") int board_id, @RequestParam("user_id") String user_id,
         @RequestParam("loginUserId") String loginUserId) throws Exception {
      logger.info("boardview board_id ::: " + board_id);
      logger.info("boardview user_id ::::" + user_id);
      logger.info("boardview session user_id  ::::" + loginUserId);

      boolean flag = serviceuser.userTypeCheck(user_id);
      
      List<String> booklistST = new ArrayList<String>();
      List<String> booklistED = new ArrayList<String>();
      booklistST = service.booklikststart(board_id);
      booklistED = service.booklistend(board_id);
      System.out.println(booklistST);
      System.out.println(booklistED);
      List<LocalDate> totalDates = new ArrayList<LocalDate>();
      
      for(int i=0;i<booklistST.size();i++) {
	      LocalDate start = LocalDate.parse(booklistST.get(i));
	      LocalDate end = LocalDate.parse(booklistED.get(i));
	      while (!start.isAfter(end)) {
	          totalDates.add(start);
	          start = start.plusDays(1);
	      }
      }
      
      

      if (flag) {
         logger.info("boardview giver ::::::::::::::::");
      } else {
         logger.info("boardview taker ::::::::::::::::");
      }

      /*
       * int board_id = board_id; String user_id = loginUserId;
       */
      boolean a = markservice.checkExistBookmark(board_id, loginUserId);
      System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + a);
      boolean b = likeservice.checkLike(board_id, loginUserId);
      System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + b);
      int c = likeservice.selectLikecnt(board_id);
      System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + c);

      ModelAndView mav = new ModelAndView();
      // 醫뗭븘�슂 泥댄겕 濡쒖쭅
      
      
      
     
      
      if (b) {
         mav.addObject("like", "like1.png");
      } else {
         mav.addObject("like", "like2.png");
      }
      // 醫뗭븘�슂 媛쒖닔濡쒖쭅
      mav.addObject("likecnt", c);

      if (flag) {
    	  GiverBoardVO gvo =service.giverboard(board_id);
          gvo = service.giverboard(board_id);
          String startdate= gvo.getBooking_startdate();

          SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");

          Date sd = transFormat.parse(startdate);
          String sdate = transFormat.format(sd);
          
          System.out.println(sdate);
          
          Date tday =new Date();
          String today = transFormat.format(tday);
          System.out.println(today);
          
          int result = sd.compareTo(tday);
          
         mav.setViewName("board/boardForm");
         mav.addObject("common_board", service.commmonboard(board_id));
         mav.addObject("user_type", flag);
         mav.addObject("giver_board", service.giverboard(board_id));
         mav.addObject("img", upservice.getimgboardid(board_id));
         mav.addObject("favname", fservice.selectfavname(user_id, board_id));
         
         if (a) {
            mav.addObject("star", "star0.png");
         } else {
            mav.addObject("star", "star1.png");
         }
         
         if(result>0) {
             mav.addObject("startdate", sdate);
          }else if(result==0) {
             mav.addObject("startdate", today);
          }else {
             mav.addObject("startdate",today);
          }

      } else {
         mav.setViewName("board/boardForm");
         mav.addObject("common_board", service.commmonboard(board_id));
         mav.addObject("img", upservice.getimgboardid(board_id));
         mav.addObject("user_type", flag);
      }
      
      mav.addObject("bookday",totalDates );

      
      
      return mav;
   }

   /////////////////////////

//  @RequestMapping(value = "/readPage", method = RequestMethod.GET)
//  public void read(@RequestParam("bno") int bno, @ModelAttribute("cri") SearchCriteria cri, Model model)
//      throws Exception {
//
//    model.addAttribute(service.read(bno));
//  }
//
//  @RequestMapping(value = "/removePage", method = RequestMethod.POST)
//  public String remove(@RequestParam("bno") int bno, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
//
//    service.remove(bno);
//
//    rttr.addAttribute("page", cri.getPage());
//    rttr.addAttribute("perPageNum", cri.getPerPageNum());
//    rttr.addAttribute("searchType", cri.getSearchType());
//    rttr.addAttribute("keyword", cri.getKeyword());
//
//    rttr.addFlashAttribute("msg", "SUCCESS");
//
//    return "redirect:/sboard/list";
//  }
//
//  @RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
//  public void modifyPagingGET(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
//
//    model.addAttribute(service.read(bno));
//  }
//
//  @RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
//  public String modifyPagingPOST(BoardVO board, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
//
//    logger.info(cri.toString());
//    service.modify(board);
//
//    rttr.addAttribute("page", cri.getPage());
//    rttr.addAttribute("perPageNum", cri.getPerPageNum());
//    rttr.addAttribute("searchType", cri.getSearchType());
//    rttr.addAttribute("keyword", cri.getKeyword());
//
//    rttr.addFlashAttribute("msg", "SUCCESS");
//
//    logger.info(rttr.toString());
//
//    return "redirect:/sboard/list";
//  }
//
//  @RequestMapping(value = "/register", method = RequestMethod.GET)
//  public void registGET() throws Exception {
//
//    logger.info("regist get ...........");
//  }
//
//  @RequestMapping(value = "/register", method = RequestMethod.POST)
//  public String registPOST(BoardVO board, RedirectAttributes rttr) throws Exception {
//
//    logger.info("regist post ...........");
//    logger.info(board.toString());
//
//    service.regist(board);
//
//    rttr.addFlashAttribute("msg", "SUCCESS");
//
//    return "redirect:/sboard/list";
//  }
//  
//  
//  @RequestMapping("/getAttach/{bno}")
//  @ResponseBody
//  public List<String> getAttach(@PathVariable("bno")Integer bno)throws Exception{
//    
//    return service.getAttach(bno);
//  }  

   // @RequestMapping(value = "/list", method = RequestMethod.GET)
   // public void listPage(@ModelAttribute("cri") SearchCriteria cri,
   // Model model) throws Exception {
   //
   // logger.info(cri.toString());
   //
   // model.addAttribute("list", service.listCriteria(cri));
   //
   // PageMaker pageMaker = new PageMaker();
   // pageMaker.setCri(cri);
   //
   // pageMaker.setTotalCount(service.listCountCriteria(cri));
   //
   // model.addAttribute("pageMaker", pageMaker);
   // }

   @RequestMapping(value = "/insertcomment.do")
   @ResponseBody
   public String commentinsert(@ModelAttribute CommentVO vo) {
      logger.info("go to insertcomment");
      service.insertcomment(vo);
      return "commentList";
   }

   @RequestMapping(value = "/commentlistboardid.do")
   public ModelAndView commentlist(@RequestParam("board_id") int board_id) {
      logger.info("go to commentlist");
      ModelAndView mav = new ModelAndView();
      mav.setViewName("commentList");
      try {
         mav.addObject("commentList", service.commentlistboardid(board_id));
         mav.addObject("board_id", board_id);
         mav.addObject("thumb_nail", service.selectcommentthumb(board_id));
      } catch (Exception e) {
         e.printStackTrace();
      }

      return mav;
   }

// board update 
   @RequestMapping(value = "/updateboard.do")
   public ModelAndView updateboard(@RequestParam("board_id") int board_id, @RequestParam("user_id") String user_id) {
      logger.info("boardupdate board_id ::: " + board_id);
      logger.info("boardupdate user_id ::::" + user_id);
      boolean flag = serviceuser.userTypeCheck(user_id);
      ModelAndView mav = new ModelAndView();
      List<String> photo = new ArrayList<String>();
      
      try {
         mav.setViewName("boardupdate");
         if (flag) {
            mav.addObject("common_board", service.commmonboard(board_id));
//            mav.addObject("user_type",flag);
            mav.addObject("giver_board", service.giverboard(board_id));
            mav.addObject("fav", fservice.searchfavorite_boardid(board_id));
            mav.addObject("thumb_nail",service.searchthumb(board_id));
            /* mav.addObject("img",upservice.getimgboardid(board_id)); */
         } else {
            mav.addObject("common_board", service.commmonboard(board_id));
            mav.addObject("thumb_nail",service.searchthumb(board_id));
//            mav.addObject("user_type",flag);
            /* mav.addObject("img",upservice.getimgboardid(board_id)); */
         }
      } catch (Exception e) {
         e.printStackTrace();
      }
      return mav;
   }
   
   @RequestMapping(value= "/imglist.do", method = RequestMethod.GET)
   public String imglist(@RequestParam("board_id")int board_id, Model model)throws Exception{
      model.addAttribute("img", upservice.getimgboardid(board_id));
      model.addAttribute("board_id",board_id);
      return "board/ImgList";
   }

   @RequestMapping(value = "/updateg", method = RequestMethod.GET)
   public String updateboardgiver(@ModelAttribute CommonBoardVO cbvo, @ModelAttribute GiverBoardVO gbvo) {
      logger.info("update giver");
      logger.info("" + cbvo);
      logger.info("" + gbvo);

      try {
         service.updateboardtaker(cbvo);
         service.updateboardgiver(gbvo);
      } catch (Exception e) {

         e.printStackTrace();
      }
      int board_id = gbvo.getBoard_id();
      String user_id = cbvo.getUser_id();
      return "forward:/board/boardview.do?board_id=" + board_id + "&loginUserId=" + user_id;
   }

   @RequestMapping(value = "/update", method = RequestMethod.GET)
   public String updateboardtaker(@ModelAttribute CommonBoardVO cbvo, HttpServletRequest request) {
      logger.info("update taker " + cbvo);
      try {
         service.updateboardtaker(cbvo);
      } catch (Exception e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      int board_id = cbvo.getBoard_id();
      String user_id = cbvo.getUser_id();

      return "forward:/board/boardview.do?board_id=" + board_id + "&loginUserId=" + user_id;
   }

   /// 湲��궘�젣
   // �뙎湲� 醫뗭븘�슂 遺곷쭏�겕 �떎 �궘�젣�릺怨� �굹�꽌 湲� �궘�젣
   @RequestMapping(value = "/deleteboard")
   public String deleteboard(@RequestParam("user_id") String user_id, @RequestParam("board_id") int board_id) {
      try {
         logger.info("deleteboard");
         List<String> imglist = new ArrayList<String>();
         imglist = upservice.getimgboardid(board_id);
         // user媛� giver�씤吏�, taker �씤吏� �뙋�떒 �썑�뿉
         boolean flag = serviceuser.userTypeCheck(user_id);
         if (flag) {// giver �씠硫�
            // �뙎湲� �궘�젣
            service.deletecomment_boardid(board_id);
            // like, 遺곷쭏�겕 �궘�젣(異붽�)
            likeservice.deletelike_boardid(board_id);
            markservice.deletemark_boardid(board_id);
            // content_img �궘�젣
            upservice.deleteupload_boardid(board_id);
            for(int i=0;i<imglist.size();i++) {
               String filename = imglist.get(i);
               File file = new File(uploadPath, filename);
               boolean a = file.delete();
               if(a) {
                  logger.info("file delete ok ");
               }else {
                  logger.info("file delete fail");
               }
            }
            // board_has_favorite �궘�젣
            fservice.boarddel_boardid(board_id);
            // giver_board �궘�젣
            service.deletegiverboard_boardid(board_id);
            // common_board �궘�젣
            service.deletecommonboard_boardid(board_id);
         } else {
            // �뙎湲� �궘�젣
            service.deletecomment_boardid(board_id);
            // like, 遺곷쭏�겕 �궘�젣 (異붽�)
            likeservice.deletelike_boardid(board_id);
            markservice.deletemark_boardid(board_id);
            upservice.deleteupload_boardid(board_id);
            for(int i=0;i<imglist.size();i++) {
               String filename = imglist.get(i);
               File file = new File(uploadPath, filename);
               boolean a = file.delete();
               if(a) {
                  logger.info("file delete ok ");
               }else {
                  logger.info("file delete fail");
               }
            }
            // board_has_favorite �궘�젣
            fservice.boarddel_boardid(board_id);
            // common_board �궘�젣
            service.deletecommonboard_boardid(board_id);
         }

      } catch (Exception e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      return "main";
   }

   @RequestMapping(value = "/commentdelete")

   public String deletecomment(@RequestParam("comment_id") int comment_id) {
      logger.info("go to insertcomment");
      try {
         service.deletecomment(comment_id);
      } catch (Exception e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      return "commentList";
   }

   // boardfavorite insert
   @RequestMapping(value = "/insertfavboard.do")
   // board favorite insert
   public @ResponseBody int insertfavoriteboard(@ModelAttribute BoardHasFavoriteVO bvo) {
      logger.info("insert favorite board : " + bvo.getBoard_id() + " , favo : " + bvo.getFavorite_id());
      try {
         fservice.boardinsertfavorite(bvo);
      } catch (Exception e) {
         e.printStackTrace();
      }
      return 1;
   }

   @RequestMapping(value = "/deletefavboard.do")
   // board favorite insert
   public @ResponseBody int deletefavoriteboard(@ModelAttribute BoardHasFavoriteVO bvo) {
      logger.info("delete favorite board : " + bvo.getBoard_id() + " , favo : " + bvo.getFavorite_id());
      try {
         fservice.boarddeletefavorite(bvo);
      } catch (Exception e) {
         e.printStackTrace();
      }
      return 1;
   }
   
///////////////////////////////////////////////
//20190607 seol
///////////////////////////////////////////////
@RequestMapping(value = "/tsearch", method=RequestMethod.GET)
public ModelAndView searchtaker(@RequestParam("user_id") String user_id, @RequestParam("page") int page, HttpSession session) throws Exception {
logger.info("search taker"+ user_id);

Criteria cri = new Criteria();
cri.setPage(page);
ModelAndView mav = new ModelAndView();
List<CommonBoardVO> list = service.tsearch(user_id, cri);
List<String> like = new ArrayList<String>();
List<String> addr = new ArrayList<String>();
String user_id_session = (String)session.getAttribute("user_id");
for(int i=0;i<list.size();i++) {
int board_id = list.get(i).getBoard_id();

boolean a = likeservice.checkLike(board_id, user_id_session);
addr.add(service.getaddr(board_id));
if(a) {
like.add("like1.png");
}else {
like.add("like2.png");
}
}

mav.setViewName("board/list");
mav.addObject("list", list);//list.jsp까지 들어간 값이 main.jsp의 ajax의 success(data)입니다
mav.addObject("like", like);
mav.addObject("addr", addr);

return mav;
}

@RequestMapping(value = "/psearch", method=RequestMethod.GET)
public ModelAndView searchpeople(@ModelAttribute SearchVO svo, @RequestParam("page") int page,HttpSession session) throws Exception {
logger.info("search people" + svo.getPeople());
logger.info("search favorite" + svo.getFavorite_id());
logger.info("search startdate" + svo.getBooking_startdate());
logger.info("search enddate" + svo.getBooking_enddate());
logger.info("search addr" + svo.getAddr());

svo.setPage(page);
ModelAndView mav = new ModelAndView();
List<SearchVO> list = service.psearch(svo);
List<String> like = new ArrayList<String>();
List<String> addr = new ArrayList<String>();
String user_id_session = (String)session.getAttribute("user_id");
for(int i=0;i<list.size();i++) {
int board_id = list.get(i).getBoard_id();
String user_id = list.get(i).getUser_id();
boolean a = likeservice.checkLike(board_id, user_id_session);
addr.add(service.getaddr(board_id));
if(a) {
like.add("like1.png");
}else {
like.add("like2.png");
}
}

logger.info("list" + list);

mav.setViewName("board/list");
mav.addObject("list", list);
mav.addObject("like", like);
mav.addObject("addr", addr);
return mav;
}

}