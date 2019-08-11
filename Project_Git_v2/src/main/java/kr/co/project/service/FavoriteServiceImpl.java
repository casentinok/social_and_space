package kr.co.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.project.domain.BoardHasFavoriteVO;
import kr.co.project.domain.UserHasFavoriteVO;
import kr.co.project.persistence.FavoriteDAO;

@Service
public class FavoriteServiceImpl implements FavoriteService {
	@Inject
	private FavoriteDAO fao;

	@Override
	public void userinsertfavorite(UserHasFavoriteVO fvo) throws Exception {
		fao.userinsertfavorite(fvo);

	}

	@Override
	public void userdeletefavorite(UserHasFavoriteVO fvo) throws Exception {
		fao.userdeletefavorite(fvo);

	}

	@Override
	public List<Integer> selectfavo_user(String user_id) throws Exception {
		return fao.selectfavo_user(user_id);
		
	}

	@Override
	public void deletefavorite_userid(String user_id) throws Exception {
		fao.deletefavorite_userid(user_id);
	}

	@Override
	public void boardinsertfavorite(BoardHasFavoriteVO bvo) throws Exception {
		fao.boardinsertfavorite(bvo);
	}

	@Override
	public void boarddeletefavorite(BoardHasFavoriteVO bvo) throws Exception {
		fao.boarddeletefavorite(bvo);
		
	}

	@Override
	public List<Integer> searchfavorite_boardid(int board_id) throws Exception {
		return fao.searchfavorite_boardid(board_id);
	}

	@Override
	public void boarddel_boardid(int board_id) throws Exception {
		fao.boarddel_boardid(board_id);
		
	}

	@Override
	public void delfav_userid(String user_id) throws Exception {
		fao.delfav_userid(user_id);
		
	}

	@Override
	public List<String> selectfavname(String user_id, int board_id) throws Exception {
		
		return fao.selectfavname(user_id,board_id);
	}


}
