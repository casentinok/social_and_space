package kr.co.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.project.domain.BookmarkVO;
import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.Criteria;
import kr.co.project.persistence.BookmarkDAO;

@Service
public class BookmarkServiceImpl implements BookmarkService {

	@Inject
	private BookmarkDAO dao;
	
	
	@Override
	public void insertBookmark(BookmarkVO vo) {
		dao.insertBookmark(vo);
	}

	@Override
	public void deleteBookmark(BookmarkVO vo) {
		dao.deletBookmark(vo);
		
	}

	@Override
	public boolean checkExistBookmark(int board_id, String user_id) {
		return dao.checkExistBookmark(board_id, user_id);
		
	}
	
	@Override
	public List<CommonBoardVO> bookmarkList(String user_id,Criteria cri) {
		return dao.bookmarkList(user_id,cri);
		
	}

	@Override
	public void deletemark_boardid(int board_id) {
		dao.deletemark_boardid(board_id);
		
	}

	@Override
	public void deletemark_userid(String user_id) {
		dao.deletemark_userid(user_id);		
	}

}
