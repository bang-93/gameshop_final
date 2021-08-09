package kr.co.gameshop.controller.client;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.gameshop.dao.GameDAO;
import kr.co.gameshop.service.GameService;

	
	@Controller
	public class ClientController {
	
		private static final Logger logger = LoggerFactory.getLogger(ClientController.class);
		
		@Autowired
		private GameService gameService;
		
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String home(Locale locale, Model model) {
			logger.info("client locale {}", locale);
			
			model.addAttribute("msg", "test");
			return "client/main";
		}
		
		//클라이언트 메인 요청
		@GetMapping("/main")
		public String getMain(Model model) {
			
			return "gameshop/client/index";
		}
		
		//쇼핑 페이지 요청
		@GetMapping("/shop/list")
		public ModelAndView getList(HttpServletRequest request, @RequestParam(required = false) String game_genre) {
			logger.info("post Game list");
			//모든 상품 가져가기, 장르 선택하면 해당 장르 상품만 가져가기
			List gameList=null;
			// 3단계
			if(game_genre==null) {
				gameList = gameService.game_selectAll();	
			}else {
				gameList=gameService.game_selectByGenre(game_genre);
			}
			
			// 4단계(forwarding)
			ModelAndView mav=new ModelAndView("gameshop/client/shop/main");
			mav.addObject("gameList", gameList);
			
			return mav;
		}
}
