package kr.co.gameshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gameshop.dao.BoardDAO;
import kr.co.gameshop.dao.MemberDAO;
import kr.co.gameshop.vo.Board;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAO boardDAO;
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public List selectAll() {
		return boardDAO.selectAll();
	}

	@Override
	public void delete(int board_id) {
		boardDAO.delete(board_id);
	}

	@Override
	public boolean insert(Board board,int mem_userid) {
		boolean flag = false;
		
		// 게시판 등록 성공 여부
		flag = boardDAO.insert(board);
		System.out.println("service------------"+mem_userid);
		
		if(flag==true) {
			memberDAO.updatePoint(mem_userid);
		}
		 
		return flag;
	}

	@Override
	public void update(Board board) {
		boardDAO.update(board);
		
	}
	
	@Override
	public int pointInfo(int mid) {
		int point =0;
		point=memberDAO.pointCheck(mid);
		return point;
	}

}
