package kr.co.gameshop.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.gameshop.dao.GameDAO;
import kr.co.gameshop.vo.Criteria;
import kr.co.gameshop.vo.Game;

@Service
public class GameService {
	
	@Inject
	GameDAO gameDAO;
	
	// 게임 조회-
	public List game_selectAll() {
		return gameDAO.selectAll();
	}
	
	public List game_selectByGenre(String game_genre) {
		return gameDAO.selectByGenre(game_genre);
	}
	
	// 게임 디테일 조회
	public Game read(int game_id) throws Exception{	
		return gameDAO.read(game_id);
	}
	
	//하트 수 증가
	public void heartCount(int game_id){		
		 gameDAO.heartCount(game_id);
	}
	
// 게임 클릭 조회
//	public Game read(int game_id) {
//		return gameDAO.read(game_id);
//	}
	
	// 게임 등록
	public void insert(Game game) {
		gameDAO.insert(game);
	}
	
	// 게임 수정
	public void update(Game game) {
		gameDAO.update(game);
	}

	// 게임 삭제
	public void delete(int game_id) {
		gameDAO.delete(game_id);
	}
		
// 게임 목록 조회
//	public List<Game> list(Criteria criteria) throws Exception{
//		return gameDAO.list(criteria);
//	}
	
// 게임 총 갯수
//	public int listCount() throws Exception{
//		return gameDAO.listCount();
//	}
	
	// 
	public List<Game> listCriteria(Criteria criteria) throws Exception{
		return gameDAO.listCriteria(criteria); 
	}
	
}
