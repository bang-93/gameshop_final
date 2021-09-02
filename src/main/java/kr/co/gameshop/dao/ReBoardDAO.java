package kr.co.gameshop.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.gameshop.vo.ReBoard;
import kr.co.gameshop.vo.ReBoardForm;

@Repository
public class ReBoardDAO { 

	@Resource(name = "sqlSession")
    private SqlSession sqlSession;
 
    private static final String NAMESPACE = "ReBoard";
 
    /** 게시판 - 목록 수 */
    public int getReBoardCnt(ReBoardForm reboardForm) throws Exception {
 
        return sqlSession.selectOne(NAMESPACE + ".getReBoardCnt", reboardForm);
    }
    
    /** 게시판 - 목록 조회  */
    public List<ReBoard> getReBoardList(ReBoardForm reboardForm) throws Exception {
        
        return sqlSession.selectList(NAMESPACE + ".getReBoardList", reboardForm);
    }
    
    /** 게시판 - 조회 수 수정  */
    public int updateReBoardHits(ReBoardForm reboardForm) throws Exception {
        
        return sqlSession.update(NAMESPACE + ".updateReBoardHits", reboardForm);
    }
    
    /** 게시판 - 상세 조회  */
    public ReBoard getReBoardDetail(ReBoardForm reboardForm) throws Exception {
        
        return sqlSession.selectOne(NAMESPACE + ".getReBoardDetail", reboardForm);
    }
    
    /** 게시판 - 그룹 번호 조회 */
    public int getReBoardReRef(ReBoardForm reboardForm) throws Exception {
 
        return sqlSession.selectOne(NAMESPACE + ".getReBoardReRef", reboardForm);
    }
    
    /** 게시판 - 등록  */    
    public int insertReBoard(ReBoardForm reboardForm) throws Exception {
        return sqlSession.insert(NAMESPACE + ".insertReBoard", reboardForm);
    }
 
    /** 게시판 - 등록 실패(트랜잭션 테스트)  */    
    public int insertReBoardFail(ReBoardForm reboardForm) throws Exception {
        return sqlSession.insert(NAMESPACE + ".insertReBoardFail", reboardForm);
    }
    
    /** 게시판 - 삭제  */
    public int deleteReBoard(ReBoardForm reboardForm) throws Exception {
        
        return sqlSession.delete(NAMESPACE + ".deleteReBoard", reboardForm);
    }
    
    /** 게시판 - 수정  */
    public int updateReBoard(ReBoardForm reboardForm) throws Exception {
        
        return sqlSession.update(NAMESPACE + ".updateReBoard", reboardForm);
    }
    
    /** 게시판 - 답글 정보  조회 */
    public ReBoard getReBoardReplyInfo(ReBoardForm reboardForm) throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".getReBoardReplyInfo", reboardForm);
    }
    
    /** 게시판 - 답글의 순서 수정 */
    public int updateReBoardReSeq(ReBoardForm reboardForm) throws Exception {
 
        return sqlSession.update(NAMESPACE + ".updateReBoardReSeq", reboardForm);
    }
    
    /** 게시판 - 답글 등록 */
    public int insertReBoardReply(ReBoardForm reboardForm) throws Exception {
        return sqlSession.insert(NAMESPACE + ".insertReBoardReply", reboardForm);
    }

}
