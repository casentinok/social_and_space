package kr.co.project.persistence;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.project.domain.UserVO;
@Repository
public class UserDAOImpl implements UserDAO {
	@Inject
	private SqlSession session;//DB�젒洹쇱슜
	
	private static String namespace ="kr.co.project.mapper.UserMapper";	
	@Override
	public boolean loginCheck(UserVO vo) {
		String user_id = session.selectOne(namespace+".loginCheck",vo);
		return (user_id == null) ? false : true;//null �씪�븣  id媛� db�뿉 �뾾�쑝�땲源� false 
	}

	@Override
	public UserVO viewMember(UserVO vo) {
		
		return session.selectOne(namespace+".viewMember",vo);
	}

	@Override
	public void logout(HttpSession session) {
		
	}

	@Override
	public void insertMember(UserVO vo) {
		session.insert(namespace+".register",vo);//�뒪�봽留곸씠 �옄�룞�쑝濡� �빐以섏꽌 insert �꽦怨듭뿬遺�瑜� �븣 �븘�슂媛� �뾾�떎 洹몃옒�꽌 return�뾾�쓬, �떎�뙣�떆 console�뿉 �뿉�윭�쑙
		
	}

	@Override
	public UserVO idcheck(String user_id) {
		
		return session.selectOne(namespace+".idcheck",user_id);
	}

	@Override
	public UserVO userfromid(String user_id) {
		return session.selectOne(namespace+".viewMemberfromuserid",user_id);
		
	}

	@Override
	public void updateuser(UserVO vo) {
		session.update(namespace+".updateuser",vo);
		
	}

	@Override
	public void deleteuser(String user_id) {
		session.delete(namespace+".deleteuser",user_id);
		
		
	}

	@Override
	public boolean userTypeCheck(String user_id) {
		int i = session.selectOne(namespace+".userTypeCheck",user_id);
		return (i == 1) ? true : false;
		//1�씠硫� (giver�씠硫�) true, 0�씠硫� (taker�씠硫� ) false return 
	}

	@Override
	public void updatethumb(String savedname, String user_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("savedname", savedname);
		map.put("user_id", user_id);		
		
		session.update(namespace+".updatethumb",map);
		
	}

	@Override
	public String getthumb(String user_id) {
		return session.selectOne(namespace+".getthumb",user_id);
	}

}
