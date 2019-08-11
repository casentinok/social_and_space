package kr.co.project.persistence;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.project.domain.LikeVO;

@Repository
public class LikeDAOImpl implements LikeDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="kr.co.project.mapper.LikeMapper";

	@Override
	public void insertLike(LikeVO vo) {
		session.insert(namespace+".insertLike", vo);
	}

	@Override
	public void removeLike(LikeVO vo) {
		session.delete(namespace+".removeLike", vo);
	}

	@Override
	public boolean checkLike(int board_id, String user_id) {
		LikeVO vo = new LikeVO();
		vo.setBoard_id(board_id);
		vo.setUser_id(user_id);
		String test = session.selectOne(namespace+".checkLike", vo);
		System.out.println(test);
		if(test != null) {
			return false;
		} else {
			return true;
		}
	}

	@Override
	public void updateLikecnt(int board_id) {
		session.update(namespace+".updateLikecnt",board_id);
	}

	@Override
	public int selectLikecnt(int board_id) {
		return session.selectOne(namespace+".selectLikecnt",board_id);
	}

	@Override
	public void deletelike_boardid(int board_id) {
		session.delete(namespace+".deletelike_boardid",board_id);
		
	}

	@Override
	public void deletelike_userid(String user_id) {
		session.delete(namespace+".deletelike_userid",user_id);
	}
	
}
