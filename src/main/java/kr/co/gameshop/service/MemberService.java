package kr.co.gameshop.service;

import java.util.List;

public interface MemberService {
	public List selectAll();
	public void delete(int mem_id);
}
