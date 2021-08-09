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
 
    /** �Խ��� - ��� ��ȸ  */
    public List getCommunityList(CommunityForm communityForm) throws Exception {
        
        return (List) sqlSession.selectList(NAMESPACE + ".getCommunityList", communityForm);
    }
    
    /** �Խ��� - ��ȸ �� ����  */
    public int updateCommunityHits(CommunityForm communityForm) throws Exception {
        
        return sqlSession.update(NAMESPACE + ".updateCommunityHits", communityForm);
    }
    
    /** �Խ��� - �� ��ȸ  */
    public CommunityDto getCommunityDetail(CommunityForm communityForm) throws Exception {
        
        return sqlSession.selectOne(NAMESPACE + ".getCommunityDetail", communityForm);
    }
    
    /** �Խ��� - ���  */    
    public int insertCommunity(CommunityForm communityForm) throws Exception {
        return sqlSession.insert(NAMESPACE + ".insertCommunity", communityForm);
    }
    
    /** �Խ��� - ����  */
    public int deleteCommunity(CommunityForm communityForm) throws Exception {
        
        return sqlSession.delete(NAMESPACE + ".deleteCommunity", communityForm);
    }
    
    /** �Խ��� - ����  */
    public int updateCommunity(CommunityForm communityForm) throws Exception {
        
        return sqlSession.update(NAMESPACE + ".updateCommunity", communityForm);
    }

}
