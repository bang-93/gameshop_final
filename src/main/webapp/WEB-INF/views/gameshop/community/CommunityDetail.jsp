<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>게시글 상세</title>
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
    
    /** 게시판 - 수정 페이지 이동 */
    function goCommunityUpdate(){
        
        var communitySeq = $("#community_seq").val();
        
        location.href = "/community/communityUpdate?communitySeq="+ communitySeq;
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
            var communityReLev     = obj.community_re_lev; 
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
                    
            str += "<tr>";
            str += "<th>제목</th>";
            str += "<td>"+ communitySubject +"</td>";
            str += "<th>조회수</th>";
            str += "<td>"+ communityHits +"</td>";
            str += "</tr>";        
            str += "<tr>";
            str += "<th>작성자</th>";
            str += "<td>"+ communityWriter +"</td>";
            str += "<th>작성일시</th>";
            str += "<td>"+ insDate +"</td>";
            str += "</tr>";        
            str += "<tr>";
            str += "<th>내용</th>";
            str += "<td colspan='3'>"+ communityContent +"</td>";
            str += "</tr>";
            
        } else {
            
            alert("등록된 글이 존재하지 않습니다.");
            return;
        }        
        
        $("#tbody").html(str);
    }
    
    /** 게시판 - 삭제  */
    function deleteCommunity(){
 
        var communitySeq = $("#community_seq").val();
        
        var yn = confirm("게시글을 삭제하시겠습니까?");        
        if(yn){
            
            $.ajax({    
                
               url      : "/community/deleteCommunity",
               data     : $("#communityForm").serialize(),
               dataType : "JSON",
               cache    : false,
               async    : true,
               type     : "POST",    
               success  : function(obj) {
                    deleteCommunityCallback(obj);                
                },           
               error    : function(xhr, status, error) {}
                
             });
        }        
    }
    
    /** 게시판 - 삭제 콜백 함수 */
    function deleteCommunityCallback(obj){
    
        if(obj != null){        
            
            var result = obj.result;
            
            if(result == "SUCCESS"){                
                alert("게시글 삭제를 성공하였습니다.");                
                goCommunityList();                
            } else {                
                alert("게시글 삭제를 실패하였습니다.");    
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
                <table width="100%" class="table01">
                    <colgroup>
                        <col width="15%">
                        <col width="35%">
                        <col width="15%">
                        <col width="*">
                    </colgroup>
                    <tbody id="tbody">
                       
                    </tbody>
                </table>        
                <input type="hidden" id="community_seq"        name="community_seq"    value="${communitySeq}"/> <!-- 게시글 번호 -->
                <input type="hidden" id="search_type"    name="search_type"     value="S"/> <!-- 조회 타입 - 상세(S)/수정(U) -->
            </form>
            <div class="btn_right mt15">
                <button type="button" class="btn black mr5" onclick="javascript:goCommunityList();">목록으로</button>
                <button type="button" class="btn black mr5" onclick="javascript:goCommunityUpdate();">수정하기</button>
                <button type="button" class="btn black" onclick="javascript:deleteCommunity();">삭제하기</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>