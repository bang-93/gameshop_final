package kr.co.gameshop.controller.client;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.gameshop.service.CartService;

@Controller
public class CartController {
	@Autowired
	CartService cartService;
	
	//장바구니 페이지 이동
	@RequestMapping(value = "/cart/list")
	public String cartList(HttpServletRequest request, HttpServletResponse response) {
		
		
		return "/gameshop/client/cart1";
	}
	
	
	
	//장바구니 목록 가져오기
	@PostMapping("/cart/getlist")
	public String getCartList(Model model,HttpServletRequest request,@RequestParam String mem_id){
		List cartList=cartService.selectAll(mem_id);
		model.addAttribute("cartList",cartList);
		return "/gameshop/client/cart1";
		
	}
	
	//장바구니에 추가
	
}
