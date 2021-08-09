<%@page import="kr.co.gameshop.vo.Board"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
	List<Board> boardList=(List)request.getAttribute("boardList");
%>

<!DOCTYPE html>
<html>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<head>
    <meta charset="UTF-8">
    <title>커뮤니티 게시판</title>
    <!-- css 가져오기 -->
    <link rel="stylesheet" type="text/css" href="/css/common/common.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/semantic.min.css">


    <style type="text/css">
        body {
            background-color: #DADADA;
        }

        body>.grid {
            height: 100%;
        }

        .image {
            margin-top: -100px;
        }

        .column {
            max-width: 1000px;
        }

        .view_btn {
            cursor: pointer;
        }

    </style>
    <!-- 공통 JavaScript -->
<script type="text/javascript" src="/js/common/jquery.js"></script>
<script type="text/javascript">
 
    $(document).ready(function(){    
        getCommunityList();
    });        
    
    /** 게시판 - 상세 페이지 이동 */
    function goCommunityDetail(boardSeq){                
        location.href = "/community/communityDetail?communitySeq="+ communitySeq;
    }
    
    /** 게시판 - 작성 페이지 이동 */
    function goCommunityWrite(){
    	if($("#member_session").val()==null){
    		alert("로그인이 필요한 페이지입니다. 로그인 해주십시오.");
        	location.href = "/client/regist";
    	}else{
        	location.href = "/client/communityWrite";    		
    	}
    }
 
    /** 게시판 - 목록 조회  */
    function getCommunityList(){
 
        $.ajax({    
        
           url      : "/client/getCommunityList",
           data     : $("#communityForm").serialize(),
           dataType : "JSON",
           cache    : false,
           async    : true,
           type     : "POST",    
           success  : function(obj) {
                getCommunityListCallback(obj);                
            },           
           error    : function(xhr, status, error) {}
            
         });
    }
    
    /** 게시판 - 목록 조회  콜백 함수 */
    function getCommunityListCallback(obj){
        
        var list = obj;
        var listLen = obj.length;
                
        var str = "";
        
        if(listLen >  0){
            
            for(var a=0; a<listLen; a++){
                
                var communitySeq        = list[a].community_seq; 
                var communityReRef      = list[a].community_re_ref; 
                var communityReLev      = list[a].community_re_lev; 
                var communityReSeq      = list[a].community_re_seq; 
                var communityWriter     = list[a].community_writer; 
                var communitySubject    = list[a].community_subject; 
                var communityContent    = list[a].community_content; 
                var communityHits       = list[a].community_hits;
                var delYn           = list[a].del_yn; 
                var insUserId       = list[a].ins_user_id;
                var insDate         = list[a].ins_date; 
                var updUserId       = list[a].upd_user_id;
                var updDate         = list[a].upd_date;
                
                str += "<tr>";
                str += "<td>"+ communitySeq +"</td>";
                str += "<td onclick='javascript:goCommunityDetail("+ communitySeq +");' style='cursor:Pointer'>"+ communitySubject +"</td>";
                str += "<td>"+ communityHits +"</td>";
                str += "<td>"+ communityWriter +"</td>";    
                str += "<td>"+ insDate +"</td>";    
                str += "</tr>";
                
            } 
            
        } else {
            
            str += "<tr>";
            str += "<td colspan='5'>등록된 글이 존재하지 않습니다.</td>";
            str += "<tr>";
        }
        
        $("#tbody").html(str);
    }
    
</script>
</head>

<body>
<%@ include file="../client/inc/header.jsp" %>
<input type="hidden" value=${member.mem_id} id="member_session" />
    <div class="ui middle aligned center aligned grid">
        <div class="column">
            <h2 class="ui teal image header">
                게시판 페이지
            </h2>
            <div class="ui large form">
                <div class="ui stacked segment">
                    <button class="ui fluid large teal submit button" onclick="javascript:goCommunityWrite();">게시글 작성하기</button>
                    <table class="ui celled table">
                        <thead>
                            <tr>
	                            <th>게시글번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>내용</th>
								<th>작성일</th>
                            </tr>
                        </thead>
	                        <tbody>
								<%for(Board board:boardList){ %>
								<td><%=board.getBoard_id()%></td>
								<td><%=board.getBoard_title() %></td>
								<td><%=board.getBoard_writer() %></td>
								<td><%=board.getBoard_content() %></td>
								<td><%=board.getBoard_date() %></td>
								</tr>
								<%} %>
                    		</tbody>    
                    </table>
                </div>

                <div class="ui error message"></div>

            </div>
        </div>
    </div>

    <div class="ui modal" id='view_modal'>
        <i class="close">x</i>
        <div class="header" id="b_title">
            
        </div>
        <div class="content">
            <div class="description">
            	<p style = "text-align: right" id = "b_review"></p>
            	<div id = 'b_content'></div>
            </div>
        </div>
        <div class="actions">
            <div class="ui black deny button">
                닫기
            </div>
        </div>
    </div>

    <!-- js 가져오기 -->
    <script src="/coco/resources/jquery3.3.1.min.js"></script>
    <script src="/coco/resources/semantic.min.js"></script>

    <script>
   /*      $(document).ready(function() {
            $.ajax({
                type: "get",
                url: "bbs_all",
                success: function(data) {
                    console.log(data);
                    for (var str in data) {
                        var tr = $("<tr></tr>").attr("data-id", data[str]['b_no']).appendTo("#list");
                        $("<td></td>").text(data[str]['b_no']).addClass("view_btn").appendTo(tr);
                        $("<td></td>").text(data[str]['b_title']).addClass("view_btn").appendTo(tr);
                        $("<td></td>").text(data[str]['b_ownernick']).addClass("view_btn").appendTo(tr);
                        $("<td></td>").text(FormatToUnixtime(data[str]['b_regdate'])).addClass("view_btn").appendTo(tr);
                    }
                },
                error: function(error) {
                    alert("오류 발생" + error);
                }
            });

            $(document).on("click", ".view_btn", function() {
                var b_no = $(this).parent().attr("data-id");

                $.ajax({
                    type: "get",
                    url: "get_bbs",
                    data: {
                        b_no: b_no
                    },
                    success: function(data) {
                    	console.log(data);
                    	$("#b_title").text(data['b_title']);
                    	$("#b_review").text(data['b_ownernick'] + " - " +  FormatToUnixtime(data['b_regdate']));
                    	$("#b_content").text(data['b_content']);
                    	$('#view_modal').modal('show');
                    },
                    error: function(error) {
                        alert("오류 발생" + error);
                    }
                });
            });

            function FormatToUnixtime(unixtime) {
                var u = new Date(unixtime);
                return u.getUTCFullYear() +
                    '-' + ('0' + u.getUTCMonth()).slice(-2) +
                    '-' + ('0' + u.getUTCDate()).slice(-2) +
                    ' ' + ('0' + u.getUTCHours()).slice(-2) +
                    ':' + ('0' + u.getUTCMinutes()).slice(-2) +
                    ':' + ('0' + u.getUTCSeconds()).slice(-2)
            };
        });
 */
    </script>
</body>

</html>