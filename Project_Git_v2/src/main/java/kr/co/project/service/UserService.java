package kr.co.project.service;

import javax.servlet.http.HttpSession;

import kr.co.project.domain.UserVO;

public interface UserService {
	public boolean loginCheck(UserVO vo , HttpSession session) ;
	public UserVO viewMember(UserVO vo);
	public void logout(HttpSession session);
	public void insertMember(UserVO vo);
	public UserVO idcheck(String user_id);
	public UserVO usercheck(String user_id);
	public void updateuser(UserVO vo);
	public void deleteuser(String user_id, HttpSession session);
	public boolean userTypeCheck(String user_id);

	public void updatethumb(String savedname, String user_id);
	public String getthumb(String user_id);
	
}
