package kr.co.gameshop.controller.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.gameshop.vo.CartVO;

@Controller
@RequestMapping("/gameshop/cart/")
public class CartController {
/**
	@Inject
	CartService CartService;
	
	//1. 장바구니 추가
	@RequestMapping("insert.do")
	public String insert(@ModelAttribute VartVO vo, HttpSession session) {
		String userId = (String) session.getAttribute("userId");
		vo.SetUserId(userId);
		//장바구니에 기존 상품이 있는지 확인검사
		int count = cartService.countCart(vo.getProductId(), userId);
		count == 0 ? cartService.updateCart(vo) : cartService.insert(vo);
		if(count == 0) {
			//없으면 생성
			cartService.insert(vo);
		}else {
			//있으면 등록
			cartService.updateCart(vo);
		}
		return "redirect:/gameshop/cart/list.do";		
	}
	
	//장바구니 목록
	@RequestMapping("list.do")
	public ModelAndView list(HttpSession session, ModelAndView mav){
		String userId = (String) session.getAttribute("userId");
		Map<String, Object> map = new HashMap<String, Object>();
		List<CartVO> list = cartService.listCart(userId);//장바구니 정보
		int sumMoney = cartService.sumMoney(userId); //자바구니 전체 금액 호출
		map.put("list", list);					//장바구니 정보를 map에 저장
		map.put(count, list.size());			//장바구니 상품의 유무
		map.put("sumMoney", sumMoney);			//장바구니 전체금액
		map.put("allSum", sumMoney);			//주문 상품 전체금액
		mav.setViewName("gameshop/cartList");	//view(jsp)의 이름 저장
		mav.addObject("map",map);				//map변수 저장
		return mav;		
	}
	
	//장바구니 삭제
	@RequestMapping("delete.do")
	public String delete(@RequestParam int cartId) {
		cartService.delete(cartId);
		return "redirect:/gameshop/cart/list.do;
	}
	
	//장바구니 목록
	@RequestMapping("list.do")
	public String update(@RequestParam int[] amount, @RequestParam int[] productId, HttpSession session) {
		String userId = (String) session.getAttribute("userId");
		//레코드의 갯수 만큼 반복문 실행
		for(int i=0; i<productId.length;i++) {
			CartVO vo = new CartVO();
			vo.setUserId(userId);
			vo.setAmount(amount[i]);
			vo.setProductId(productId[i]);
			cartService.modifyCart(vo);
		}
		return"redirect:/gameshop/cart/list.do";
	}
**/}
