package kr.co.gameshop.dao;

import java.util.List;

import kr.co.gameshop.vo.Cart;

public interface CartDAO {
	public List selectAll(String mem_id);
	public void insert(Cart cart);
	public void delete(Cart cart);
	public void deleteAll(String mem_id);
}
