package kr.co.project.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.project.domain.BookmarkVO;
import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.Criteria;

@Repository
public class BookmarkDAOImpl implements BookmarkDAO {

	
	@Inject
	private SqlSession session;
	
	private static String namespace ="kr.co.project.mapper.BookmarkMapper";	
	
	@Override
	public void insertBookmark(BookmarkVO vo) {
		System.out.println(">>>>>>>>>>>>>>>>dao占쎌긾");	
		session.insert(namespace+".insertBookmark", vo);
		
	}


	@Override
	public void deletBookmark(BookmarkVO vo) {
			
		session.delete(namespace+".deleteBookmark", vo);
		
	}


	@Override
	public boolean checkExistBookmark(int board_id, String user_id) {
		System.out.println("sql 占쎈뼄占쎈뻬占쎌읈 " + board_id + user_id);
		BookmarkVO vo = new BookmarkVO();
		vo.setBoard_id(board_id);
		vo.setUser_id(user_id);
		String test = session.selectOne(namespace+".checkExistBookmark", vo);
		System.out.println(test+"11111111");
		if(test != null) {
			return false;
		} else {
			return true;
		}
//		System.out.println(user_id);
//		return (user_id == null)? true : false ;
		//鈺곌퀬�돳占쎈쭆 揶쏅�れ뵠 占쎄섯揶쏅�れ뵠筌롳옙 �겫怨룹춳占쎄쾿�몴占� 占쎈툧占쎈맙->true
		//雅뚭쑵�돳占쎈쭆 揶쏅�れ뵠 占쎄섯揶쏅�れ뵠 占쎈툡占쎈빍筌롳옙 �겫怨룹춳占쎄쾿�몴占� 占쎈뻥占쎌벉 -> false
	}

	@Override
	public List<CommonBoardVO> bookmarkList(String user_id,Criteria cri) {
		Map<String, Object> map = new HashMap<String, Object>();
		  map.put("user_id",user_id);
		  map.put("pageStart", cri.getStartpage());
		  map.put("perPageNum", cri.getPerPageNum());
		
		return session.selectList(namespace+".bookmarkList", map);
	}


	@Override
	public void deletemark_boardid(int board_id) {
		session.delete(namespace+".deletemark_boardid",board_id);
		
	}


	@Override
	public void deletemark_userid(String user_id) {
		session.delete(namespace+".deletemark_userid", user_id);		
	}
}
