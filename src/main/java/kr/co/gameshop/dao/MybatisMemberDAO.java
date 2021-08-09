package kr.co.gameshop.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MybatisMemberDAO implements MemberDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List selectAll() {
		return sqlSessionTemplate.selectList("Member.selectAll");
	}

	@Override
	public void delete(int mem_id) {
		sqlSessionTemplate.delete("Member.delete",mem_id);
		
	}
	
	// 포인트 지급
	@Override
	public void updatePoint(int mem_userid) {
		
		System.out.println(mem_userid+" dao에서");
		sqlSessionTemplate.update("Member.updatePoint", mem_userid);
		
	}
	
	//포인트조회
	@Override
	public int pointCheck(int mid) {
		
		return sqlSessionTemplate.selectOne("Member.pointCheck", mid);
		
	}
}
