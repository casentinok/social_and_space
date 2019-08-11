package kr.co.project.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.project.domain.BoardHasFavoriteVO;
import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.UserHasFavoriteVO;

@Repository
public class FavoriteDAOImpl implements FavoriteDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace="kr.co.project.FavoriteMapper";
	
	@Override
	public void userinsertfavorite(UserHasFavoriteVO fvo) throws Exception {
		session.insert(namespace+".userinsertfavorite",fvo);

	}

	@Override
	public void userdeletefavorite(UserHasFavoriteVO fvo) throws Exception {
		session.delete(namespace+".userdeletefavorite",fvo);
		
	}

	@Override
	public List<Integer> selectfavo_user(String user_id) throws Exception {
		return session.selectList(namespace+".selectfavo_user",user_id);
		}

	@Override
	public void deletefavorite_userid(String user_id) throws Exception {
		session.delete(namespace+".deletefavo_userid", user_id);
	}

	@Override
	public void boardinsertfavorite(BoardHasFavoriteVO bvo) throws Exception {
		session.insert(namespace+".boardinsertfavorite",bvo);
		
	}

	@Override
	public void boarddeletefavorite(BoardHasFavoriteVO bvo) throws Exception {
		session.delete(namespace+".boarddeletefavorite",bvo);
		
	}

	@Override
	public List<Integer> searchfavorite_boardid(int board_id) throws Exception {
		return session.selectList(namespace+".searchfavorite_boardid",board_id);
	}

	@Override
	public void boarddel_boardid(int board_id) throws Exception {
		session.delete(namespace+".boarddel_boardid",board_id);
		
	}

	@Override
	public void delfav_userid(String user_id) throws Exception {
		session.delete(namespace+".delfav_userid",user_id);
		
	}

	@Override
	public List<String> selectfavname(String user_id, int board_id) throws Exception {
		CommonBoardVO cbvo = new CommonBoardVO();
		cbvo.setBoard_id(board_id);
		cbvo.setUser_id(user_id);
		return session.selectList(namespace+".selectfavname",cbvo);
		
	}

	

}
