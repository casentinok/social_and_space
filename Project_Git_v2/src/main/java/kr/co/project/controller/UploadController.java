package kr.co.project.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.annotation.Resources;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sun.javafx.collections.MappingChange.Map;

import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.ContentImgVO;
import kr.co.project.domain.UploadDTO;
import kr.co.project.domain.UserVO;
import kr.co.project.service.BoardService;
import kr.co.project.service.UploadService;
import kr.co.project.service.UserService;



@Controller
//@RequestMapping("/board/*")
public class UploadController {

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);

	@Resource(name = "uploadPath")
	private String uploadPath;

	@Inject
	private UploadService service;

	@Inject
	private BoardService bservice;
	
	@Inject
	private UserService uservice;
	

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public @ResponseBody int imageWrite(@RequestParam("files") MultipartFile[] multi, @RequestParam("board_id") int board_id,
			Model model) throws Exception {
		// public String imageWrite(@ModelAttribute("formData") UploadDTO udto,Model
		// model) throws Exception {
		logger.info("//upload call");
		int result = 0;
		UploadDTO udto = new UploadDTO();
		udto.setBoard_id(board_id);
		udto.setMulti(multi);
		List<ContentImgVO> list = udto.makeFile(uploadPath);
		for (ContentImgVO ctnimg : list) {
			result = service.contentImgWrite(ctnimg);
			if (result < 0) {
				logger.info("error");
				break;
			}
		}
		if (result > 0) {
			String img_name = service.getFirstImg(board_id);
			CommonBoardVO cbvo = bservice.commmonboard(board_id);
			cbvo.setThumb_img(img_name);
			logger.info("commonboardvo" + cbvo);
			bservice.updateBoardThumbImg(cbvo);
		}
		return 1;
	}
	
	@RequestMapping(value = "/uploaduser", method = RequestMethod.POST)
	public @ResponseBody HashMap<String,Object> userimgupload(@RequestParam("files") MultipartFile file, @RequestParam("user_id")String user_id,Model model) throws Exception{
		logger.info("파일이름 : " + file.getOriginalFilename());
		logger.info("파일 크기 : " + file.getSize());
		logger.info("content type : " + file.getContentType());
		logger.info("user_id : " + user_id );
		
		//기존 파일 삭제 ( DB + 파일 ) 
		String filename = uservice.getthumb(user_id);
		//uservice.deletethumb(user_id);
		File fileuplo = new File(uploadPath,filename);
		fileuplo.delete();
		
		//새로운 파일 업로드 		
		String savedname =uploadFile(file.getOriginalFilename(), file.getBytes());
//		File target = new File(uploadPath,savedname);
//		FileCopyUtils.copy(file.getBytes(), target);
		uservice.updatethumb(savedname,user_id);
		//model.addAttribute("savedname",savedname);
		HashMap<String, Object> map = new HashMap<String,Object>();
		map.put("savedname",savedname);
		return map;
	}
	
	@RequestMapping(value = "/uploadboard", method = RequestMethod.POST)
	public @ResponseBody int boardimg(@RequestParam("files") MultipartFile[] file, @RequestParam("board_id")int board_id) throws Exception{
		//새로운 파일 업로드
		ContentImgVO cvo = new ContentImgVO();
		for(MultipartFile mf : file) {
			String savedname =uploadFile(mf.getOriginalFilename(), mf.getBytes());
			cvo.setImg_name(savedname);
			cvo.setBoard_id(board_id);
			cvo.setOriginal_name(mf.getOriginalFilename());
			cvo.setTime(System.currentTimeMillis());
			service.updatefile(cvo);
		}
		return 1;
	}
	
	private String uploadFile(String originalname,byte[] fileData) throws Exception{
		UUID uuid = UUID.randomUUID();
		String savedName = uuid.toString()+"_"+originalname;
		File target = new File(uploadPath,savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}
	
	@RequestMapping(value = "/deleteimg", method = RequestMethod.GET)
	public @ResponseBody int delete(@RequestParam("board_id")int board_id , @RequestParam("filename")String filename) {
		logger.info("board_id : " + board_id + "filename : " + filename );
		File file = new File(uploadPath, filename);
		boolean a = file.delete();
		try {
		if(a) {
			logger.info("파일삭제성공");
				service.deleteimg(board_id,filename);
			logger.info("DB삭제성공");
			
		}else {
			logger.info("삭제실패");
		}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return 1;
	}
	
	
	
	

}
