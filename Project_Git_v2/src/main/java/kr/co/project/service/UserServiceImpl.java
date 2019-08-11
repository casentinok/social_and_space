package kr.co.project.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.project.domain.UserVO;
import kr.co.project.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	@Inject
	UserDAO userdao;
	
	@Override
	public boolean loginCheck(UserVO vo, HttpSession session) {
		boolean result = userdao.loginCheck(vo);
		System.out.println(result);
		if(result) { // true
			vo = viewMember(vo);
			session.setAttribute("user_id", vo.getUser_id());
			session.setAttribute("user_type", vo.getUser_type());
			
		}
		return result;
	}
	@Override
	public UserVO viewMember(UserVO vo) {
		
		return userdao.viewMember(vo);
	}
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
		
	}
	@Override
	public void insertMember(UserVO vo) {
		userdao.insertMember(vo);
		
	}
	@Override
	public UserVO idcheck(String user_id) {
		return userdao.idcheck(user_id);
		
	}
	@Override
	public UserVO usercheck(String user_id) {
		return userdao.userfromid(user_id);
		
	}
	@Override
	public void updateuser(UserVO vo) {
		userdao.updateuser(vo);
		
	}
	@Override
	public void deleteuser(String user_id, HttpSession session) {
		session.invalidate();
		userdao.deleteuser(user_id);
		
	}
	@Override
	public boolean userTypeCheck(String user_id) {
		return userdao.userTypeCheck(user_id);
	}
	@Override
	public void updatethumb(String savedname, String user_id) {
		userdao.updatethumb(savedname, user_id);
		
	}
	@Override
	public String getthumb(String user_id) {
		return userdao.getthumb(user_id);
	}
	
	
	
	

}
