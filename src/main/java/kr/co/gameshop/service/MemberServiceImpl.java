package kr.co.gameshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gameshop.dao.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public List selectAll() {
		return memberDAO.selectAll();
	}

	@Override
	public void delete(int mem_id) {
		memberDAO.delete(mem_id);
		
	}

}
