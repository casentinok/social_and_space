package kr.co.project.service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.project.domain.LikeVO;
import kr.co.project.persistence.LikeDAO;


@Service
@RequestMapping(value = "/like")
public class LikeServiceImpl implements LikeService {

	@Inject
	private LikeDAO likedao;

	@Override
	public void insertLike(LikeVO vo) {
		 likedao.insertLike(vo);
	}

	@Override
	public void removeLike(LikeVO vo) {
		likedao.removeLike(vo);
	}

	@Override
	public boolean checkLike(int board_id, String user_id) {
		return likedao.checkLike(board_id, user_id);
	}

	@Override
	public void updateLikecnt(int board_id) {
		likedao.updateLikecnt(board_id);
	}

	@Override
	public int selectLikecnt(int board_id) {
		return likedao.selectLikecnt(board_id);
	}

	@Override
	public void deletelike_boardid(int board_id) {
		likedao.deletelike_boardid(board_id); 
		
	}

	@Override
	public void deletelike_userid(String user_id) {
		likedao.deletelike_userid(user_id);		
	}

}
