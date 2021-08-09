package kr.co.gameshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ko.co.gameshop.dto.CommunityDto;
import ko.co.gameshop.form.CommunityForm;
import kr.co.gameshop.dao.CommunityDAO;

@Service
public class CommunityService {
	@Autowired
    private static CommunityDAO communityDao;
 
    //
    public List getCommunityList(CommunityForm communityForm) throws Exception {
 
        return communityDao.getCommunityList(communityForm);
    }
 
    //
    public static CommunityDto getCommunityDetail(CommunityForm communityForm) throws Exception {
    	 
        CommunityDto communityDto = new CommunityDto();
 
        String searchType = communityForm.getSearch_type();
 
        if("S".equals(searchType)){
            
            int updateCnt = communityDao.updateCommunityHits(communityForm);
        
            if (updateCnt > 0) {
                communityDto = communityDao.getCommunityDetail(communityForm);
            }
            
        } else {
            
            communityDto = communityDao.getCommunityDetail(communityForm);
        }
 
        return communityDto;
    }
 
    
    //
    public CommunityDto insertCommunity(CommunityForm communityForm) throws Exception {
 
        CommunityDto communityDto = new CommunityDto();
 
        int insertCnt = communityDao.insertCommunity(communityForm);
 
        if (insertCnt > 0) {
            communityDto.setResult("SUCCESS");
        } else {
            communityDto.setResult("FAIL");
        }
 
        return communityDto;
    }
 
    //
    public CommunityDto deleteCommunity(CommunityForm communityForm) throws Exception {
 
        CommunityDto communityDto = new CommunityDto();
 
        int deleteCnt = communityDao.deleteCommunity(communityForm);
 
        if (deleteCnt > 0) {
            communityDto.setResult("SUCCESS");
        } else {
            communityDto.setResult("FAIL");
        }
 
        return communityDto;
    }
 
    //
    public CommunityDto updateCommunity(CommunityForm communityForm) throws Exception {
 
        CommunityDto communityDto = new CommunityDto();
 
        int updateCnt = communityDao.updateCommunity(communityForm);
 
        if (updateCnt > 0) {
            communityDto.setResult("SUCCESS");
        } else {
            communityDto.setResult("FAIL");
        }
 
        return communityDto;
    }
}
