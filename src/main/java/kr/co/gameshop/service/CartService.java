package kr.co.gameshop.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

//import kr.co.gameshop.dao.CartDAO;
import kr.co.gameshop.vo.CartVO;

/**@Service
public class CartService {
	@Inject
	CartDAO cartDao;
	
	//장바구니 추가
	public void insert(CartVO vo) {
		cartDao.insert(vo);
	}
	//장바구니 목록
	public List<CartVO> listCart(String userId) {
		return cartDao.listCart(userId);
	}
	//장바구니 삭제
	public void delete(int cartId) {
		cartDao.delete(cartId);
	}
	//장바구니 수정
	public void modifyCart(CartVO vo) {
		cartDao.modifyCart(vo);
	}
	//장바구니 금액합
	public int sumMoney(String userId) {
		return cartDao.sumMoney(userId);
	}
	//장바구니 상품 확인
	public int countCart(int productId, String userId) {
		return cartDao.countCart(productId, userId));
	}
	//장바구니 상품 수량변경
	public void updateCart(CartVO vo) {
		cartDao.updateCart(vo);
	}
}**/
