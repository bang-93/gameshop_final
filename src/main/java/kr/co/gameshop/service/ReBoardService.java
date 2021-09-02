package kr.co.gameshop.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gameshop.dao.ReBoardDAO;
import kr.co.gameshop.util.PagingUtil;
import kr.co.gameshop.util.ResultUtil;
import kr.co.gameshop.vo.Common;
import kr.co.gameshop.vo.CommonForm;
import kr.co.gameshop.vo.ReBoard;
import kr.co.gameshop.vo.ReBoardForm;

@Service
public class ReBoardService {

	@Autowired
    private ReBoardDAO reboardDAO;
 
    /** 게시판 - 목록 조회 */
    public ResultUtil getReBoardList(ReBoardForm reboardForm) throws Exception {
 
        ResultUtil resultUtil = new ResultUtil();
 
        Common common = new Common();
 
        int totalCount = reboardDAO.getReBoardCnt(reboardForm);
        if (totalCount != 0) {
            CommonForm commonForm = new CommonForm();
            commonForm.setFunction_name(reboardForm.getFunction_name());
            commonForm.setCurrent_page_no(reboardForm.getCurrent_page_no());
            commonForm.setCount_per_page(10);
            commonForm.setCount_per_list(10);
            commonForm.setTatal_list_count(totalCount);
            common = PagingUtil.setPageUtil(commonForm);
        }
 
        reboardForm.setLimit(common.getLimit());
        reboardForm.setOffset(common.getOffset());
 
        List<ReBoard> list = reboardDAO.getReBoardList(reboardForm);
 
        HashMap<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("list", list);
        resultMap.put("totalCount", totalCount);
        resultMap.put("pagination", common.getPagination());
 
        resultUtil.setData(resultMap);
        resultUtil.setState("SUCCESS");
 
        return resultUtil;
    }
 
    /** 게시판 - 상세 조회 */
    public ReBoard getReBoardDetail(ReBoardForm reboardForm) throws Exception {
 
        ReBoard reboard = new ReBoard();
 
        String searchType = reboardForm.getSearch_type();
 
        if ("S".equals(searchType)) {
 
            int updateCnt = reboardDAO.updateReBoardHits(reboardForm);
 
            if (updateCnt > 0) {
            	reboard = reboardDAO.getReBoardDetail(reboardForm);
            }
 
        } else {
 
        	reboard = reboardDAO.getReBoardDetail(reboardForm);
        }
 
        return reboard;
    }
 
    /** 게시판 - 등록 */
    public ReBoard insertReBoard(ReBoardForm reboardForm) throws Exception {
 
    	ReBoard reboard = new ReBoard();
 
        int insertCnt = 0;
        
        int reboardReRef = reboardDAO.getReBoardReRef(reboardForm);
        reboardForm.setBoard_re_ref(reboardReRef); 
        
        insertCnt = reboardDAO.insertReBoard(reboardForm);
        
        //insertCnt = reboardDAO.insertReBoardFail(reboardForm);
 
        if (insertCnt > 0) {
        	reboard.setResult("SUCCESS");
        } else {
        	reboard.setResult("FAIL");
        }
 
        return reboard;
    }
 
    /** 게시판 - 삭제 */
    public ReBoard deleteReBoard(ReBoardForm reboardForm) throws Exception {
 
    	ReBoard reboard = new ReBoard();
 
        int deleteCnt = reboardDAO.deleteReBoard(reboardForm);
 
        if (deleteCnt > 0) {
        	reboard.setResult("SUCCESS");
        } else {
        	reboard.setResult("FAIL");
        }
 
        return reboard;
    }
 
    /** 게시판 - 수정 */
    public ReBoard updateReBoard(ReBoardForm reboardForm) throws Exception {
 
    	ReBoard reboard = new ReBoard();
 
        int deleteCnt = reboardDAO.updateReBoard(reboardForm);
 
        if (deleteCnt > 0) {
        	reboard.setResult("SUCCESS");
        } else {
        	reboard.setResult("FAIL");
        }
 
        return reboard;
    }
    
    /** 게시판 - 답글 등록 */
    public ReBoard insertReBoardReply(ReBoardForm reboardForm) throws Exception {
 
    	ReBoard reboard = new ReBoard();
 
    	ReBoard boardReplayInfo = reboardDAO.getReBoardReplyInfo(reboardForm);
 
        reboardForm.setBoard_seq(boardReplayInfo.getBoard_seq());
        reboardForm.setBoard_re_lev(boardReplayInfo.getBoard_re_lev());
        reboardForm.setBoard_re_ref(boardReplayInfo.getBoard_re_ref());
        reboardForm.setBoard_re_seq(boardReplayInfo.getBoard_re_seq());
 
        int insertCnt = 0;
 
        insertCnt += reboardDAO.updateReBoardReSeq(reboardForm);
 
        insertCnt += reboardDAO.insertReBoardReply(reboardForm);
 
        if (insertCnt > 0) {
        	reboard.setResult("SUCCESS");
        } else {
        	reboard.setResult("FAIL");
        }
 
        return reboard;
    }	
	
}
