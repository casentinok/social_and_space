package kr.co.project.service;

import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.project.domain.ContentImgVO;
import kr.co.project.persistence.ContentImgDAO;


@Service
public class UploadServiceImpl implements UploadService{
	@Inject
	private ContentImgDAO dao;
	
	public int contentImgWrite(ContentImgVO vo) throws Exception{
		return dao.contentImgWrite(vo);
	}
	
	public String getFirstImg(int board_id) throws Exception{
		return dao.getFirstImg(board_id);
	}

	@Override
	public List<String> getimgboardid(int board_id) throws Exception {
	      return dao.getimgboardid(board_id);
	}

	@Override
	public void deleteupload_boardid(int board_id) throws Exception {
		dao.deleteupload_boardid(board_id);		
	}

	@Override
	public int deleteimg(int board_id, String filename) throws Exception {
		
		return dao.deleteimg(board_id,filename);
	}

	@Override
	public void updatefile(ContentImgVO cvo) throws Exception {
		dao.updatefile(cvo);
		
	}

	
}
