package kr.co.project.domain;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class UploadDTO {


	private int board_id;
	private MultipartFile[] files;
	
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public MultipartFile[] getMulti() {
		return files;
	}
	public void setMulti(MultipartFile[] files) {
		this.files = files;
	}
	
	public List<ContentImgVO> makeFile(String uploadPath) throws Exception{
		List<ContentImgVO> list = new ArrayList<ContentImgVO>();		
		for (MultipartFile file : this.files) {
			ContentImgVO ctnimg = new ContentImgVO();
			String savedName = uploadFile(file.getOriginalFilename(), file.getBytes(),uploadPath);			
			ctnimg.setImg_name(savedName);
			ctnimg.setBoard_id(this.board_id);
			ctnimg.setOriginal_name(file.getOriginalFilename());
			ctnimg.setTime(System.currentTimeMillis());
			
			list.add(ctnimg);
		}
		return list;
	}
	private String uploadFile(String originalName, byte[] fileData,String uploadPath) throws Exception {
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;
		File target = new File(uploadPath, savedName);		
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}

}
