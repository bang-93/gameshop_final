package kr.co.gameshop.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.gameshop.vo.Cart;

public interface CartService{
	public List selectAll(int mem_id);
	public void insert(HashMap map);
	public void delete(Cart cart);
	public void deleteAll(String mem_userid);
}