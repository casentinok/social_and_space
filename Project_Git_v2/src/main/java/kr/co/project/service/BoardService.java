package kr.co.project.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import kr.co.project.domain.CommentVO;
import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.Criteria;
import kr.co.project.domain.FavoriteType;
import kr.co.project.domain.GiverBoardVO;
import kr.co.project.domain.PageMaker;
import kr.co.project.domain.SearchVO;

public interface BoardService {

	public List<CommonBoardVO> takerlistAll(Criteria cri) throws Exception;
	
	public List<CommonBoardVO> giverlistAll() throws Exception;

	public int userTypeListCountAll(int type) throws Exception;

	public List<CommonBoardVO> favoriteTypeList(FavoriteType ftype) throws Exception;
	
	public int giverboardcount()throws Exception;

	public int favoriteListCount(FavoriteType ftype) throws Exception;

	//public List<CommonBoardVO> userBoardList(String user_id) throws Exception;


	public int takerWriteBoard(CommonBoardVO vo) throws Exception;
	
	public int giverWriteBoard(GiverBoardVO gvo) throws Exception;
	
	public int getWritedBoardID(String user_id) throws Exception;
	
	///////////////////
	// 20190521 ts
	///////////////
	public List<CommonBoardVO> listAll() throws Exception;
	public List<CommonBoardVO> listUser(String user_id,Criteria cri) throws Exception ;
	public CommonBoardVO commmonboard(int board_id) throws Exception;
	public GiverBoardVO giverboard(int board_id) throws Exception;
	///////////////////
	
	public void insertcomment(CommentVO vo);
	public List<CommentVO> commentlistboardid(int board_id) throws Exception;
	//�뙎湲�
	
	
	
	//湲��닔�젙
	public void updateboardtaker(CommonBoardVO cbvo) throws Exception;
	public void updateboardgiver(GiverBoardVO gbvo) throws Exception;
	
	
	//湲��궘�젣
	public void deleteboard(String user_id, int board_id) throws Exception;
	public void deletegiverboard_boardid(int board_id) throws Exception;
	public void deletecommonboard_boardid(int board_id) throws Exception;
	public void deletegiverboard_userid(String user_id) throws Exception; 
	public void deletecommonboard_userid(String user_id) throws Exception; 
	
	//�뙎湲��궘�젣
	public void deletecomment(int comment_id) throws Exception;
	public void deletecomment_boardid(int board_id) throws Exception;
	public void deletecomment_userid(String user_id) throws Exception;
	
	
	public int updateBoardThumbImg(CommonBoardVO vo) throws Exception;
	
	//湲� 二쇱냼 戮묒븘�삤湲�
	public List<String> addrlist() throws Exception;
	public String getaddr(int board_id) throws Exception;
	
	//�씠誘몄� �궘�젣
	public void deletecontentimg(String user_id) throws Exception;
	
	public List<CommonBoardVO> selectgiverList(Criteria cri) throws Exception;
	
	public List<String> selectcommentthumb(int board_id) throws Exception;
	
	//20190607 seol
	public List<CommonBoardVO> tsearch(String user_id,Criteria cri) throws Exception; 
	public List<SearchVO> psearch(SearchVO svo) throws Exception;
	
	public String searchthumb(int board_id) throws Exception;
	public List<String> booklikststart(int board_id) throws Exception;
	public List<String> booklistend(int board_id) throws Exception;

}
