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

import kr.co.gameshop.dao.MybatisMemberDAO;
import kr.co.gameshop.service.MemberService;
import kr.co.gameshop.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MybatisMemberDAO mybatismemberDAO;
	
	//회원 조회
	@GetMapping("/member/list")
	public String getList(Model model) {
		//3단계
		List memList=memberService.selectAll();
		//4단계
		model.addAttribute("memList",memList);
		return "/gameshop/admin/member/member_list";
	}
	
	//회원삭제
	@RequestMapping(value="/member/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(int mem_id) {
		//3단계
		memberService.delete(mem_id);
		//회원목록 재요청
		return "";
	}

}
