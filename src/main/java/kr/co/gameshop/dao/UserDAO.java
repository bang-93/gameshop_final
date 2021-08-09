package kr.co.gameshop.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.gameshop.vo.Member;

@Repository
@Mapper
public class UserDAO {

	@Autowired
	SqlSession sqlsession;

	// 회원가입 요청
	public boolean regist(Member member) throws Exception {
		boolean flag = false;

		try {
			sqlsession.insert("Member.memberRegist", member);
			flag = true;
		} catch (Exception e) {
			flag = false;
		}
		return flag;
	}

	// 아이디 중복 체크
	public int useridCheck(Member member) throws Exception {

		int checkResult = 0;

		checkResult = sqlsession.selectOne("Member.useridCheck", member);
		System.out.println("0=가입가능, 1=아이디중복: " + checkResult);

		return checkResult;
	}

	// 로그인
	public Member login(Member member) throws Exception {

		return sqlsession.selectOne("Member.login", member);
	}

	// 관리자 로그인

	  public int adminLogin() throws Exception{ int
	  adminLoginResult=0;
	  adminLoginResult=sqlsession.selectOne("Member.adminLogin"); 
	  return adminLoginResult; 
	  
	  }
	 
}
