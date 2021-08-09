package kr.co.gameshop.service;

import java.util.List;

import kr.co.gameshop.vo.Board;

public interface BoardService {
	public List selectAll();
	public void delete(int board_id);
	public boolean insert(Board board,int mem_userid);
	public void update(Board board);
	public int pointInfo(int mid);
}
