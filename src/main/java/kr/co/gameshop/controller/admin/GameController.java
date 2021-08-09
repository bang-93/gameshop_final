package kr.co.gameshop.controller.admin;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.gameshop.dao.GameDAO;
import kr.co.gameshop.service.GameService;
import kr.co.gameshop.vo.Criteria;
import kr.co.gameshop.vo.Game;
import kr.co.gameshop.vo.PageMaker;

@Controller
public class GameController {
	
	private static final Logger logger = LoggerFactory.getLogger(GameController.class);
	
	@Autowired
	private GameService gameService;
	
	// 게임 조회-
	@GetMapping("/game/list")
	public String getList(Model model) {
		
		logger.warn("post Game list");
		
		// 3단계
		List gameList = gameService.game_selectAll();
		
		// 4단계
		model.addAttribute("gameList", gameList);
		return "/gameshop/admin/product/game_list";
	}
	
	// 게임 디테일 조회
	@RequestMapping(value = "/detailView", method = RequestMethod.GET)
	public String read(Model model, HttpServletRequest request) throws Exception{
		int game_id=Integer.parseInt(request.getParameter("game_id"));
		logger.warn("get Game Detail");
		
//		gameService.heartCount(game_id);
//		model.addAttribute("game_heart", game_id);
		
		model.addAttribute("game_info", gameService.read(game_id));
		
		return "/gameshop/client/detail/game_detail";
		
	}
	
	// 게임 등록
	@RequestMapping(value = "/game/insert", method = RequestMethod.POST)
	@ResponseBody
	public int insert(Game game) throws Exception {
		
		logger.warn("post Game insert");

		gameService.insert(game);
		
		logger.warn("insert complete");
		
		return 0;
	}
	
	
	// 게임 수정	
	@RequestMapping(value = "/game/update", method = RequestMethod.POST)
	@ResponseBody
	public int update(Game game) throws Exception{
		
		logger.warn("post Game update");
		
		gameService.update(game);

		logger.warn("update complete");
		
		return 0;
	}	

	// 게임 삭제
	@RequestMapping(value = "/game/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(int game_id) {
		
		logger.warn("post Game delete");
		
		gameService.delete(game_id);
		
		return "";
	}
	
// 게임 목록 조회
//	@RequestMapping(value = "/game/page", method = RequestMethod.GET)
//	public String list(Model model, Criteria criteria) throws Exception{
//		
//		logger.info("get Game list");
//		
//		model.addAttribute("list", gameService.list(criteria));
//		
//		PageMaker pageMaker = new PageMaker();
//		pageMaker.setCriteria(criteria);
//		pageMaker.setTotalCount(gameService.listCount());
//		
//		model.addAttribute("pageMaker", pageMaker);		
//		
//		return "game/list";		
//	}
	
	//
	@RequestMapping(value = "/listCriteria", method = RequestMethod.GET)
	public String listCriteria(Model model, Criteria criteria) throws Exception {
		
		logger.warn("get listCriteria");
		
		model.addAttribute("game", gameService.listCriteria(criteria));
		
		return "/gameshop/admin/product/list_criteria";
		
	}
	@RequestMapping(value = "/listPaging", method = RequestMethod.GET)
	public String listPaging(Model model, Criteria criteria) throws Exception{
		
		logger.warn("get listCriteria");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(1000);
		
		model.addAttribute("game", gameService.listCriteria(criteria));
		model.addAttribute("pageMaker", pageMaker);
		
		return "/gameshop/admin/product/list_paging";
		
	} 
	
	
	
}



















