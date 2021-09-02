package kr.co.gameshop.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.gameshop.vo.Criteria;
import kr.co.gameshop.vo.Game;

@Repository
public class GameDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	// 게임 조회-
	public List selectAll() {
		return sqlSessionTemplate.selectList("Game.selectAll");
	}
	
	public List selectByGenre(String game_genre) {
		return sqlSessionTemplate.selectList("Game.selectByGenre",game_genre);
	}
	
	// 게임 디테일 조회
	public Game read(int game_id) throws Exception{
		
		return sqlSessionTemplate.selectOne("Detail.read", game_id);
	}
	
	//하트 수 증가
	public void heartCount(int game_id){
		sqlSessionTemplate.update("Game.heartCount", game_id);
	}
	
// 게임 클릭 조회
//	public Game read(int game_id) {
//		return sqlSessionTemplate.selectOne("Game.read", game_id);
//	}
	
	// 게임 등록
	public void insert(Game game) {
		sqlSessionTemplate.insert("Game.insert", game);
	}
	
	// 게임 수정
	public void update(Game game) {
		sqlSessionTemplate.update("Game.update", game);
	}	
	
	// 게임 삭제
	public void delete(int game_id) {
		sqlSessionTemplate.delete("Game.delete", game_id);
	}
	
	// 게임 목록 조회
	public List<Game> listPaging(int	page) throws Exception{
		
		if(page<=0) {
			page=1;
		}
		page = (page - 1)*10;
		
		return sqlSessionTemplate.selectList("Game.listPage", page);
	}
	public List<Game> listCriteria(Criteria criteria) throws Exception{
		return sqlSessionTemplate.selectList("Game.listCriteria", criteria);
	}
	
// 게임 총 갯수
//	public int listCount() throws Exception{
//		return sqlSessionTemplate.selectOne("Game.listCount");
//	}
	
}



