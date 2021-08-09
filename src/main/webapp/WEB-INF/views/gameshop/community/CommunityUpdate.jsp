<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
ib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>게시글 수정</title>
<%    
    String communitySeq = request.getParameter("communitySeq");        
%>
 
<c:set var="communitySeq" value="<%=communitySeq%>"/> <!-- 게시글 번호 -->
 
<!-- 공통 CSS -->
<link rel="stylesheet" type="text/css" href="/css/common/common.css"/>
 
<!-- 공통 JavaScript -->
<script type="text/javascript" src="/js/common/jquery.js"></script>
<script type="text/javascript">
    
    $(document).ready(function(){        
        getCommunityDetail();        
    });
    
    /** 게시판 - 목록 페이지 이동 */
    function goCommunityList(){                
        location.href = "/community/communityList";
    }
    
    /** 게시판 - 상세 조회  */
    function getCommunityDetail(communitySeq){
        
        var communitySeq = $("#community_seq").val();
 
        if(communitySeq != ""){
            
            $.ajax({    
                
               url      : "/community/getCommunityDetail",
               data     : $("#communityForm").serialize(),
               dataType : "JSON",
               cache    : false,
               async    : true,
               type     : "POST",    
               success  : function(obj) {
                    getCommunityDetailCallback(obj);                
                },           
               error    : function(xhr, status, error) {}
                
             });
            
        } else {
            alert("오류가 발생했습니다.\n관리자에게 문의하세요.");
        }    
    }
    
    /** 게시판 - 상세 조회  콜백 함수 */
    function getCommunityDetailCallback(obj){
        
        var str = "";
        
        if(obj != null){                                
                            
            var communitySeq        = obj.community_seq; 
            var communityReRef      = obj.community_re_ref; 
            var communityReLev      = obj.community_re_lev; 
            var communityReSeq      = obj.community_re_seq; 
            var communityWriter     = obj.community_writer; 
            var communitySubject    = obj.community_subject; 
            var communityContent    = obj.community_content; 
            var communityHits       = obj.community_hits;
            var delYn           = obj.del_yn; 
            var insUserId       = obj.ins_user_id;
            var insDate         = obj.ins_date; 
            var updUserId       = obj.upd_user_id;
            var updDate         = obj.upd_date;
                    
            $("#community_subject").val(communitySubject);            
            $("#community_content").val(communityContent);
            $("#community_writer").text(communityWriter);
            
        } else {            
            alert("등록된 글이 존재하지 않습니다.");
            return;
        }        
    }
    
    /** 게시판 - 수정  */
    function updateCommunity(){
 
        var communitySubject    = $("#community_subject").val();
        var communityContent     = $("#community_content").val();
            
        if (communitySubject == ""){            
            alert("제목을 입력해주세요.");
            $("#community_subject").focus();
            return;
        }
        
        if (communityContent == ""){            
            alert("내용을 입력해주세요.");
            $("#community_content").focus();
            return;
        }
        
        var yn = confirm("게시글을 수정하시겠습니까?");        
        if(yn){
                
            $.ajax({    
                
               url      : "/community/updateCommunity",
               data     : $("#communityForm").serialize(),
               dataType : "JSON",
               cache    : false,
               async    : true,
               type     : "POST",    
               success  : function(obj) {
                    updateCommunityCallback(obj);                
                },           
               error    : function(xhr, status, error) {}
                
            });
        }
    }
    
    /** 게시판 - 수정 콜백 함수 */
    function updateCommunityCallback(obj){
    
        if(obj != null){        
            
            var result = obj.result;
            
            if(result == "SUCCESS"){                
                alert("게시글 수정을 성공하였습니다.");                
                goCommunityList();                 
            } else {                
                alert("게시글 수정을 실패하였습니다.");    
                return;
            }
        }
    }
        
</script>
</head>
<body>
<%@ include file="../client/inc/header.jsp" %>
<div id="wrap">
    <div id="container">
        <div class="inner">    
            <h2>게시글 상세</h2>
            <form id="communityForm" name="communityForm">    
                <table width="100%" class="table02">
                <caption><strong><span class="t_red">*</span> 표시는 필수입력 항목입니다.</strong></caption>
                    <colgroup>
                         <col width="20%">
                        <col width="*">
                    </colgroup>
                    <tbody id="tbody">
                       <tr>
                            <th>제목<span class="t_red">*</span></th>
                            <td><input id="community_subject" name="community_subject" value="" class="tbox01"/></td>
                        </tr>
                         <tr>
                            <th>작성자</th>
                            <td id="community_writer"></td>
                        </tr>
                        <tr>
                            <th>내용<span class="t_red">*</span></th>
                            <td colspan="3"><textarea id="community_content" name="community_content" cols="50" rows="5" class="textarea01"></textarea></td>
                        </tr>
                    </tbody>
                </table>    
                <input type="hidden" id="community_seq"        name="community_seq"    value="${communitySeq}"/> <!-- 게시글 번호 -->
                <input type="hidden" id="search_type"    name="search_type"    value="U"/> <!-- 조회 타입 - 상세(S)/수정(U) -->
            </form>
            <div class="btn_right mt15">
                <button type="button" class="btn black mr5" onclick="javascript:goCommunityList();">목록으로</button>
                <button type="button" class="btn black" onclick="javascript:updateCommunity();">수정하기</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>