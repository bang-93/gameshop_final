package kr.co.gameshop.controller.client;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.co.gameshop.dao.MemberDAO;
import kr.co.gameshop.service.BoardService;
import kr.co.gameshop.vo.Board;
import kr.co.gameshop.vo.Member;

@Controller
public class CommunityController {
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	HttpSession httpSession;

	/** 게시판 - 목록 페이지 이동 */
	@RequestMapping(value = "/communityList", method = RequestMethod.GET)
	public String communityList(Model model) throws Exception {
		// 3단계
		List boardList = boardService.selectAll();
		System.out.println("============보드리스트 " + boardList);
		// 4단계
		model.addAttribute("boardList", boardList);
		return "/gameshop/community/CommunityList";
	}

	/** 게시판 - 목록 조회 */
	/*
	 * @RequestMapping(value = "/getCommunityList") public String
	 * getCommunityList(HttpServletRequest request, HttpServletResponse response,
	 * CommunityForm communityForm) throws Exception {
	 * 
	 * boardService.selectAll(); System.out.println("목록페이지 이동 요청"); return
	 * "/gameshop/community/CommunityList"; }
	 */
	 

	/** 게시판 - 상세 페이지 이동 */
	/*
	 * @RequestMapping( value = "/communityDetail") public String
	 * boardDetail(HttpServletRequest request, HttpServletResponse response) throws
	 * Exception{
	 * 
	 * return "community/communityDetail"; }
	 */

	/** 게시판 - 상세 조회 */
	/*
	 * @RequestMapping(value = "/getCommunityDetail")
	 * 
	 * @ResponseBody public CommunityDto getCommunityDetail(HttpServletRequest
	 * request, HttpServletResponse response, CommunityForm communityForm) throws
	 * Exception {
	 * 
	 * //CommunityDto communityDto = boardService.getCommunityDetail(communityForm);
	 * 
	 * //return communityDto; return null; }
	 */

	/** 게시판 - 작성 페이지 이동 */
	@RequestMapping(value = "/communityWrite", method = RequestMethod.GET)
	public String communityWrite(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "/gameshop/community/CommunityWrite";
	}

	/** 게시판 - 등록 */
	@RequestMapping(value = "/insertCommunity", method = RequestMethod.POST)
	@ResponseBody
	public boolean insertCommunity(Board board) throws Exception {
		boolean flag = false;
		
		Member memberSession=new Member();
		memberSession=(Member) httpSession.getAttribute("member");
		System.out.println("세션값 :::"+httpSession.getAttribute("member").toString());
		System.out.println("memberSession :::"+memberSession.getMem_email());
		System.out.println("게시글 작성 요청");		

		flag = boardService.insert(board,memberSession.getMem_id());
		


		return flag;
	}
	
	// 포인트 조회
	@RequestMapping(value = "/checkPoint", method = RequestMethod.POST)
	@ResponseBody
	public int checkPoint(String mem_id) throws Exception{
		
		int mid=Integer.parseInt(mem_id);
		//포인트조회
		int point =boardService.pointInfo(mid);
		
		return point;
	}

	/** 게시판 - 삭제 */
	/*
	 * @RequestMapping( value = "/deleteCommunity") public String
	 * deleteCommunity(HttpServletRequest request, HttpServletResponse response,
	 * Board board) throws Exception{
	 * 
	 * boardService.delete(board.getBoard_id());
	 * 
	 * return "client/communityList"; }
	 * 
	 *//** 게시판 - 수정 페이지 이동 */
	/*
	 * @RequestMapping( value = "/communityUpdate") public String
	 * communityUpdate(HttpServletRequest request, HttpServletResponse response)
	 * throws Exception{
	 * 
	 * return "/gameshop/community/communityUpdate"; }
	 * 
	 *//** 게시판 - 수정 *//*
						 * @RequestMapping( value = "/updateBoard") public String
						 * updateCommunity(HttpServletRequest request, HttpServletResponse response,
						 * Board board) throws Exception{
						 * 
						 * boardService.update(board);
						 * 
						 * return "client/communityList"; }
						 */

}
