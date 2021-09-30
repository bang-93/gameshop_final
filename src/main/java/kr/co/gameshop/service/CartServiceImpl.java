package kr.co.gameshop.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gameshop.dao.CartDAO;
import kr.co.gameshop.vo.Cart;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
	CartDAO cartDAO;
	
	@Override
	public List selectAll(int mem_id) {
		System.out.println(mem_id+"=================");
		return cartDAO.selectAll(mem_id);
		
	}

	@Override
	public void insert(HashMap map) {
		cartDAO.insert(map);
	}

	@Override
	public void delete(Cart cart) {
		cartDAO.delete(cart);
	}

	@Override
	public void deleteAll(int mem_id) {
		cartDAO.deleteAll(mem_id);
	}

}
