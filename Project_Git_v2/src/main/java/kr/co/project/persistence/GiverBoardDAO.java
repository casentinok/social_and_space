package kr.co.project.persistence;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.Criteria;
import kr.co.project.domain.FavoriteType;
import kr.co.project.domain.GiverBoardVO;
import kr.co.project.domain.PageMaker;
import kr.co.project.domain.SearchCriteria;

@Repository
public class GiverBoardDAO {
	@Inject
	  private SqlSession session;
	

	  private static String namespace = "kr.co.project.BoardMapper";

	  public int giverWriteBoard(GiverBoardVO gvo) throws Exception{
		  return session.insert(namespace+".giverWriteBoard",gvo);
	  }
	  
	  public void updateboardgiver(GiverBoardVO gbvo) throws Exception{
		  session.update(namespace+".updateboardgiver",gbvo);
	  }
	  
	  public void deleteboard(String user_id, int board_id)throws Exception{
		  GiverBoardVO gbvo = new GiverBoardVO();
		  gbvo.setBoard_id(board_id);
		  session.delete(namespace+".deleteboardgiver",gbvo);
	  }
	  
	  public void deletegiverboard_boardid(int board_id) throws Exception{
		  session.delete(namespace+".deletegiverboard_boardid",board_id);
	  }
	  
	  public void deletegiverboard_userid(String user_id) throws Exception{
		  session.delete(namespace+".deletegiverboard_userid",user_id);
	  }
	  
	  public List<String> addrlist() throws Exception{
		  System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>list媛�吏��윭 giverboard�샂");
		  return session.selectList(namespace+".addrlist");
	  }
	  
	  public int giverboardcount() throws Exception{
		  return session.selectOne(namespace+".giverboardcount");
	  }
	  
	  public List<CommonBoardVO> selectgiverList(Criteria cri) throws Exception{
		  return session.selectList(namespace+".selectgiverList",cri);
	  }
	  public String getaddr(int board_id) throws Exception{
		  return session.selectOne(namespace+".getaddr",board_id);
	  }
	  public List<String> selectcommentthumb(int board_id) throws Exception{
		  return session.selectList(namespace+".selectcommentthumb",board_id);
	  }
	  public List<String> booklikststart(int board_id) throws Exception{
		  return session.selectList(namespace+".booklikststart",board_id);
	  }
	  
	  public List<String> booklistend(int board_id) throws Exception{
		  return session.selectList(namespace+".booklistend",board_id);
	  }
}
