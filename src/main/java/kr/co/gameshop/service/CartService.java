package kr.co.gameshop.service;

import java.util.List;

import kr.co.gameshop.vo.Cart;

public interface CartService{
	public List selectAll(String mem_id);
	public void insert(Cart cart);
	public void delete(Cart cart);
	public void deleteAll(String mem_id);
}