package kr.co.project.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.project.domain.ContentImgVO;



@Repository
public class ContentImgDAO {
	@Inject
	  private SqlSession session;

	  private static String namespace = "kr.co.upload.UploadMapper";
	  
	  public int contentImgWrite(ContentImgVO vo) throws Exception{
		  return session.insert(namespace+".contentImgWrite", vo);
	  }
	  
	  public String getFirstImg(int board_id) throws Exception{
		  return session.selectOne(namespace+".getFirstImg",board_id);
	  }
	  
	  public List<String> getimgboardid(int board_id) throws Exception{
	      return session.selectList(namespace+".getimgboardid",board_id);  
	  }
	  
	  public void deleteupload_boardid(int board_id) throws Exception{
	        session.delete(namespace+".deleteupload_boardid",board_id);
	     }
	  public int deleteimg(int board_id , String filename) throws Exception{
		  Map<String,Object> map = new HashMap<String, Object>();
		  map.put("board_id", board_id);
		  map.put("filename", filename);
		  return session.delete(namespace+".deleteimg",map);
	  }
	  public void updatefile(ContentImgVO cvo) throws Exception{
		  session.insert(namespace+".updatefile",cvo);
	  }
}
