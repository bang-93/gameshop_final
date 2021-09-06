package kr.co.gameshop.controller.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.gameshop.service.CartService;
import kr.co.gameshop.vo.Cart;
import kr.co.gameshop.vo.Member;

@Controller
public class CartController {
	
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	@Autowired
	CartService cartService;
	
	//장바구니 목록
	@RequestMapping(value = "/cart/list")
	public ModelAndView cartList(HttpSession session, ModelAndView mav) {		
		logger.warn("get Cart list");
		//Map<String, Object> map = new HashMap<String, Object>();		
		
		Member member = (Member) session.getAttribute("member");
		logger.warn("mem_id====="+member);
		List<Cart> cartList = cartService.selectAll(member.getMem_id()); 
		
		//map.put("cartList", cartList); // 장바구니 정보를 map에 저장
		logger.warn("cartList====="+cartList);
		mav.addObject("cartList", cartList);
		mav.setViewName("/gameshop/client/cart1"); // jsp 이름저장
		//mav.addObject("map", map); // map 변수 저장
		
		return mav;
	}
	
	
	
	//장바구니 목록 가져오기
//	@PostMapping("/cart/getlist")
//	public String getCartList(Model model,HttpServletRequest request,@RequestParam String mem_id){
//		List cartList=cartService.selectAll(mem_id);
//		model.addAttribute("cartList",cartList);
//		return "/gameshop/client/cart1";
//		
//	}
	
	//장바구니에 추가
	
}
