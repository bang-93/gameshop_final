package kr.co.gameshop.controller.client;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.gameshop.service.ReBoardService;
import kr.co.gameshop.util.ResultUtil;
import kr.co.gameshop.vo.ReBoard;
import kr.co.gameshop.vo.ReBoardForm;

@Controller
//@RequestMapping(value = "/reboard")
public class ReboardController { 

	@Autowired
    private ReBoardService reboardService;
 
    /** 게시판 - 목록 페이지 이동 */
    @RequestMapping( value = "/reboardlist")
    public String reboardList(HttpServletRequest request, HttpServletResponse response) throws Exception{
        
        return "/gameshop/reboard/list";
    }
        
    /** 게시판 - 목록 조회  */
    @RequestMapping(value = "/getReBoardList")
    @ResponseBody
    public ResultUtil getReBoardList(HttpServletRequest request, HttpServletResponse response, ReBoardForm reboardForm) throws Exception {
 
        ResultUtil resultUtils = reboardService.getReBoardList(reboardForm);
 
        return resultUtils;
    }
    
    /** 게시판 - 상세 페이지 이동 */
    @RequestMapping( value = "/reboardDetail")
    public String reboardDetail(HttpServletRequest request, HttpServletResponse response) throws Exception{
        
        return "/gameshop/reboard/detail";
    }    
    
    /** 게시판 - 상세 조회  */
    @RequestMapping(value = "/getReBoardDetail")
    @ResponseBody
    public ReBoard getReBoardDetail(HttpServletRequest request, HttpServletResponse response, ReBoardForm reboardForm) throws Exception {
 
    	ReBoard reboard = reboardService.getReBoardDetail(reboardForm);
 
        return reboard;
    }
    
    /** 게시판 - 작성 페이지 이동 */
    @RequestMapping( value = "/reboardWrite")
    public String reboardWrite(HttpServletRequest request, HttpServletResponse response) throws Exception{
        
        return "/gameshop/reboard/write";
    }
    
    /** 게시판 - 등록 */
    @RequestMapping( value = "/insertReBoard")
    @ResponseBody
    public ReBoard insertReBoard(HttpServletRequest request, HttpServletResponse response, ReBoardForm reboardForm) throws Exception{
        
        ReBoard reboard = reboardService.insertReBoard(reboardForm);
        
        return reboard;
    }
    
    /** 게시판 - 삭제 */
    @RequestMapping( value = "/deleteReBoard")
    @ResponseBody
    public ReBoard deleteReBoard(HttpServletRequest request, HttpServletResponse response, ReBoardForm reboardForm) throws Exception{
        
        ReBoard reboard = reboardService.deleteReBoard(reboardForm);
        
        return reboard;
    }
    
    /** 게시판 - 수정 페이지 이동 */
    @RequestMapping( value = "/reboardUpdate")
    public String reboardUpdate(HttpServletRequest request, HttpServletResponse response) throws Exception{
        
        return "/gameshop/reboard/edit";
    }
    
    /** 게시판 - 수정 */
    @RequestMapping( value = "/updateReBoard")
    @ResponseBody
    public ReBoard updateReBoard(HttpServletRequest request, HttpServletResponse response, ReBoardForm reboardForm) throws Exception{
        
    	ReBoard reboard = reboardService.updateReBoard(reboardForm);
        
        return reboard;
    }
    
    /** 게시판 - 답글 페이지 이동 */
    @RequestMapping(value = "/reboardReply")
    public String reboardReply(HttpServletRequest request, HttpServletResponse response) throws Exception {
 
        return "/gameshop/reboard/reply";
    }
 
    /** 게시판 - 답글 등록 */
    @RequestMapping(value = "/insertReBoardReply")
    @ResponseBody
    public ReBoard insertReBoardReply(HttpServletRequest request, HttpServletResponse response, ReBoardForm reboardForm) throws Exception {
 
    	ReBoard reboard = reboardService.insertReBoardReply(reboardForm);
 
        return reboard;
    }
}
