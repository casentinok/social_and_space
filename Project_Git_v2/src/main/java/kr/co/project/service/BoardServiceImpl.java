package kr.co.project.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import kr.co.project.domain.CommentVO;
import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.Criteria;
import kr.co.project.domain.FavoriteType;
import kr.co.project.domain.GiverBoardVO;
import kr.co.project.domain.PageMaker;
import kr.co.project.domain.SearchCriteria;
import kr.co.project.domain.SearchVO;
import kr.co.project.persistence.CommonBoardDAO;
import kr.co.project.persistence.GiverBoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private CommonBoardDAO dao;

	@Inject
	private GiverBoardDAO gdao;

	@Override
	public List<CommonBoardVO> takerlistAll(Criteria cri) throws Exception {
		return dao.takerListAll(cri);
	}
	@Override
	public List<CommonBoardVO> giverlistAll() throws Exception{
		return dao.giverListAll();
	}
	@Override
	public int userTypeListCountAll(int type) throws Exception {
		return dao.userTypeListCount(type);
	}

	@Override
	public List<CommonBoardVO> favoriteTypeList(FavoriteType ftype) throws Exception {
		return dao.favoriteTypeList(ftype);
	}

	@Override
	public int favoriteListCount(FavoriteType ftype) throws Exception {
		return dao.favoriteListCount(ftype);
	}
//  @Override
//  public List<CommonBoardVO> userBoardList(String user_id) throws Exception {
//	  return dao.userBoardList(user_id);
//  }

	@Override
	public int takerWriteBoard(CommonBoardVO vo) throws Exception {
		return dao.takerWriteBoard(vo);
	}

	@Override
	public int giverWriteBoard(GiverBoardVO gvo) throws Exception {
		return gdao.giverWriteBoard(gvo);
	}

	@Override
	public int getWritedBoardID(String user_id) throws Exception {
		return dao.getWritedBoardID(user_id);
	}

	///////////////////
	// 20190521 ts
	//////////
	@Override
	public List<CommonBoardVO> listAll() throws Exception {
		return dao.listAll();
	}
	@Override
	public List<CommonBoardVO> listUser(String user_id,Criteria cri) throws Exception {
		return dao.listUser(user_id,cri);
	}
	@Override
	public CommonBoardVO commmonboard(int board_id) throws Exception {
		return dao.commmonboard(board_id);
	}
	@Override
	public GiverBoardVO giverboard(int board_id) throws Exception {
		return dao.giverboard(board_id);
	}
	//////////////////
	//�뙎湲�
	@Override
	public void insertcomment(CommentVO vo) {
		dao.insertcomment(vo);
		
	}

	@Override
	public List<CommentVO> commentlistboardid(int board_id) throws Exception {
		return dao.commentlistboardid(board_id);
	}
	@Override
	public void updateboardtaker(CommonBoardVO cbvo) throws Exception {
		dao.updateboardtaker(cbvo);
		
	}
	@Override
	public void updateboardgiver(GiverBoardVO gbvo) throws Exception {
		gdao.updateboardgiver(gbvo);
		
	}
	@Override
	public void deleteboard(String user_id, int board_id) throws Exception {
		gdao.deleteboard(user_id,board_id);
		dao.deleteboard(user_id,board_id);
	}
	@Override
	public void deletecomment(int comment_id) throws Exception {
		dao.deletecomment(comment_id);
		
	}
	@Override
	public void deletecomment_boardid(int board_id) throws Exception {
		dao.deletecomment_boardid(board_id);
		
	}
	@Override
	public void deletegiverboard_boardid(int board_id) throws Exception {
		gdao.deletegiverboard_boardid(board_id);
		
	}
	@Override
	public void deletecommonboard_boardid(int board_id) throws Exception {
		dao.deletecommonboard_boardid(board_id);
		
	}
	@Override
	public void deletecomment_userid(String user_id) throws Exception {
		dao.deletecomment_userid(user_id);
		
	}
	@Override
	public void deletegiverboard_userid(String user_id) throws Exception {
		gdao.deletegiverboard_userid(user_id);
		
	}
	@Override
	public void deletecommonboard_userid(String user_id) throws Exception {
		dao.deletecommonboard_userid(user_id);
		
	}
	@Override
	public int updateBoardThumbImg(CommonBoardVO vo) throws Exception {
	
		return dao.updateBoardThumbImg(vo);
	}
	
	@Override
	public List<String> addrlist() throws Exception {
		
		return gdao.addrlist();
	}
	@Override
	public void deletecontentimg(String user_id) throws Exception {
		dao.deletecontentimg(user_id);
	}
	@Override
	public int giverboardcount() throws Exception {
		return gdao.giverboardcount();
	}
	@Override
	public List<CommonBoardVO> selectgiverList(Criteria cri) throws Exception {
		return gdao.selectgiverList(cri);
	}
//  @Transactional
//  @Override
//  public void regist(BoardVO board) throws Exception {
//  
//    dao.create(board);
//    
//    String[] files = board.getFiles();
//    
//    if(files == null) { return; } 
//    
//    for (String fileName : files) {
//      dao.addAttach(fileName);
//    }   
//  }
	@Override
	public String getaddr(int board_id) throws Exception {
		return gdao.getaddr(board_id);
	}
	@Override
	public List<String> selectcommentthumb(int board_id) throws Exception {
		return gdao.selectcommentthumb(board_id);
	}
	//20190607 seol
	@Override
	public List<CommonBoardVO> tsearch(String user_id, Criteria cri) throws Exception {
		return dao.tsearch(user_id,cri);
	}
	@Override
	public String searchthumb(int board_id) throws Exception {
		return dao.searchthumb(board_id);
	}
	@Override
	public List<SearchVO> psearch(SearchVO svo) throws Exception {
		return dao.psearch(svo);
	}
	@Override
	public List<String> booklikststart(int board_id) throws Exception {
		return gdao.booklikststart(board_id);
	}
	@Override
	public List<String> booklistend(int board_id) throws Exception {
		return gdao.booklistend(board_id);
	}

	//
//  @Override
//  public void regist(BoardVO board) throws Exception {
//    dao.create(board);
//  }

//  @Override
//  public BoardVO read(Integer bno) throws Exception {
//    return dao.read(bno);
//  }

//  @Transactional(isolation=Isolation.READ_COMMITTED)
//  @Override
//  public BoardVO read(Integer bno) throws Exception {
//    dao.updateViewCnt(bno);
//    return dao.read(bno);
//  }

//  @Override
//  public void modify(BoardVO board) throws Exception {
//    dao.update(board);
//  }

//  @Transactional
//  @Override
//  public void modify(BoardVO board) throws Exception {
//    dao.update(board);
//    
//    Integer bno = board.getBno();
//    
//    dao.deleteAttach(bno);
//    
//    String[] files = board.getFiles();
//    
//    if(files == null) { return; } 
//    
//    for (String fileName : files) {
//      dao.replaceAttach(fileName, bno);
//    }
//  }

//  @Override
//  public void remove(Integer bno) throws Exception {
//    dao.delete(bno);
//  }

//  @Transactional
//  @Override
//  public void remove(Integer bno) throws Exception {
//    dao.deleteAttach(bno);
//    dao.delete(bno);
//  } 
//
//  @Override
//  public List<BoardVO> listAll() throws Exception {
//    return dao.listAll();
//  }
//
//  @Override
//  public List<BoardVO> listCriteria(Criteria cri) throws Exception {
//
//    return dao.listCriteria(cri);
//  }
//
//  @Override
//  public int listCountCriteria(Criteria cri) throws Exception {
//
//    return dao.countPaging(cri);
//  }
//
//  @Override
//  public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
//
//    return dao.listSearch(cri);
//  }
//
//  @Override
//  public int listSearchCount(SearchCriteria cri) throws Exception {
//
//    return dao.listSearchCount(cri);
//  }
//  
//
//  @Override
//  public List<String> getAttach(Integer bno) throws Exception {
//    
//    return dao.getAttach(bno);
//  }   

}
