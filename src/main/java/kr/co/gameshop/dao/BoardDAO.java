package kr.co.gameshop.dao;

import java.util.List;

import kr.co.gameshop.vo.Board;

public interface BoardDAO {
	public List selectAll();
	public void delete(int board_id);
	public boolean insert(Board board);
	public void update(Board board);
}
