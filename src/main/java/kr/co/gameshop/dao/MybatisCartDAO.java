package kr.co.gameshop.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.gameshop.vo.Cart;

@Repository
public class MybatisCartDAO implements CartDAO{
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List selectAll(int mem_id) {
		return sqlSessionTemplate.selectList("Cart.selectAll",mem_id);
	}

	@Override
	public void insert(Cart cart) {
		sqlSessionTemplate.insert("Cart.insert",cart);
	}

	@Override
	public void delete(Cart cart) {
		sqlSessionTemplate.delete("Cart.delete",cart);
	}

	@Override
	public void deleteAll(int mem_id) {
		sqlSessionTemplate.delete("Cart.deleteAll",mem_id);
	}

}
