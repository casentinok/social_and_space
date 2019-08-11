package kr.co.project.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import kr.co.project.domain.LikeVO;

public interface LikeService {
	public void insertLike(LikeVO vo);
	public void removeLike(LikeVO vo);
	public boolean checkLike(int board_id, String user_id);
	public void updateLikecnt(int board_id);
	public int selectLikecnt(int board_id);
	public void deletelike_boardid(int board_id);
	public void deletelike_userid(String user_id);
}
