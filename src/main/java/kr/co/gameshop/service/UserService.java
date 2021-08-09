package kr.co.gameshop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gameshop.dao.UserDAO;
import kr.co.gameshop.vo.Member;

@Service
public class UserService {
	
	@Autowired
	UserDAO userDAO;
	
	//회원등록
	public boolean regist(Member member) throws Exception {
		boolean flag =false;
	
		// 회원등록  	
			flag=userDAO.regist(member);
		
		return flag;
	}	
	
	// 아이디 중복확인
	public int useridCheck(Member member) throws Exception{
		
		int checkResult = userDAO.useridCheck(member);
		
		return checkResult;
	}
	
	// 로그인
	public Member login(Member member) throws Exception{
		return userDAO.login(member);
	}
	
	//관리자 로그인
	  public int adminLogin() throws Exception{ int
	  adminLoginResult=userDAO.adminLogin();
	  return adminLoginResult; 
	  }
	 
	
}
