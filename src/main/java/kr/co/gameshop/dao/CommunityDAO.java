package kr.co.gameshop.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.context.annotation.ImportResource;
import org.springframework.stereotype.Repository;

import ko.co.gameshop.dto.CommunityDto;
import ko.co.gameshop.form.CommunityForm;

@Repository
public class CommunityDAO {
	
	@Resource(name = "sqlSession")
    private SqlSession sqlSession;
 
    private static final String NAMESPACE = "com.spring.community.communityMapper";
 
    /** 게시판 - 목록 조회  */
    public List getCommunityList(CommunityForm communityForm) throws Exception {
        
        return (List) sqlSession.selectList(NAMESPACE + ".getCommunityList", communityForm);
    }
    
    /** 게시판 - 조회 수 수정  */
    public int updateCommunityHits(CommunityForm communityForm) throws Exception {
        
        return sqlSession.update(NAMESPACE + ".updateCommunityHits", communityForm);
    }
    
    /** 게시판 - 상세 조회  */
    public CommunityDto getCommunityDetail(CommunityForm communityForm) throws Exception {
        
        return sqlSession.selectOne(NAMESPACE + ".getCommunityDetail", communityForm);
    }
    
    /** 게시판 - 등록  */    
    public int insertCommunity(CommunityForm communityForm) throws Exception {
        return sqlSession.insert(NAMESPACE + ".insertCommunity", communityForm);
    }
    
    /** 게시판 - 삭제  */
    public int deleteCommunity(CommunityForm communityForm) throws Exception {
        
        return sqlSession.delete(NAMESPACE + ".deleteCommunity", communityForm);
    }
    
    /** 게시판 - 수정  */
    public int updateCommunity(CommunityForm communityForm) throws Exception {
        
        return sqlSession.update(NAMESPACE + ".updateCommunity", communityForm);
    }

}
