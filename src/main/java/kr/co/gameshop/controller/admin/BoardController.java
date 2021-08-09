package kr.co.gameshop.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.gameshop.service.BoardService;
import kr.co.gameshop.vo.Board;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;

	//게시글 조회
	@GetMapping("/board/list")
	public String getBoardList(Model model) {
		//3단계
		List boardList=boardService.selectAll();
		//4단계
		model.addAttribute("boardList",boardList);
		return "/gameshop/admin/board/board_list";
	}

	//게시글 삭제
	@RequestMapping(value="/board/delete",method = RequestMethod.POST)
	@ResponseBody
	public String delete(int board_id) {
		//3단계
		boardService.delete(board_id);

		return "";
	}
}