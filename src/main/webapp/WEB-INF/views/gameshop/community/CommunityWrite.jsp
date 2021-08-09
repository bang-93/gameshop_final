<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>게시글 작성</title>
    <!-- css 가져오기 -->
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
            max-width: 450px;
        }

    </style>
    <script type="text/javascript">
      
    /** 게시판 - 목록 페이지 이동 */
    function goCommunityList(){                
        location.href = "/client/communityList";
    }
    
    /** 게시판 - 작성  */
    function insertCommunity(){
 
        var communitySubject = $("input[name='community_subject']").val();
        var communityWriter = $("#community_writer").val();
        var communityContent = $("#community_content").val();
            
        if (communitySubject==""){            
            alert("제목을 입력해주세요.");
            $("#community_subject").focus();
            return;
        }else if(communityWriter==""){
            alert("작성자를 입력해주세요.");
            $("#community_writer").focus();
            return;
        }else if(communityContent==""){
            alert("내용을 입력해주세요.");
            $("#community_content").focus();
            return;
        }
        
        var yn = confirm("게시글을 등록하시겠습니까?");        
        if(yn){
                
            $.ajax({    
                
               url      : "/client/insertCommunity",
               data     :
            	   {
            		   "board_title" : communitySubject,
            		   "board_writer" : communityWriter,
            		   "board_content" : communityContent       	   
               },
               dataType : "JSON",
               type     : "POST",    
               success  : function(result) {
            	   console.log(result);
            	   if(result==false){
            		   alert("게시글 등록 실패");
            	   }else if(result==true){
            		   alert("게시글 등록 성공");
					   location.href = "/client/communityList";
            		   
            	   }
            	   //alert("등록성공");
            	   //console.log(result);
            	   //location.href = "/client/communityList";
                    //insertCommunityCallback(obj);                
                }         
                
            });
        }
    }
    
    /** 게시판 - 작성 콜백 함수 */
    function insertCommunityCallback(obj){
    
        if(obj != null){        
            
            var result = obj.result;
            
            if(result == "SUCCESS"){                
                alert("게시글 등록을 성공하였습니다.");                
                goCommunityList();                 
            } else {                
                alert("게시글 등록을 실패하였습니다.");    
                return;
            }
        }
    }
    
</script>
</head>

<body>
<%@ include file="../client/inc/header.jsp" %>
    <div class="ui middle aligned center aligned grid">
        <div class="column">
            <h2 class="ui teal image header">
                게시글 작성
            </h2>
            <form class="ui large form">
                <div class="ui stacked segment">
                    <div class="field">
                        <input type="text" id="community_subject" name="community_subject" placeholder="게시글 제목" autocomplete="off" autofocus="autofocus" >
                    </div>
                    <div class="field">
                        <input type="text" id="community_writer" name="community_writer" placeholder="작성자" autocomplete="off" autofocus="autofocus">
                    </div>
                    <div class="field">
                        <div class="ui left icon input">
                            <textarea style="resize: vertical;" id="community_content" name="community_content" placeholder="게시글 내용" rows="8"></textarea>
                        </div>
                    </div>
                    <div class="ui fluid large teal submit button" id="write_bbs" onclick="javascript:insertCommunity();">게시글 작성하기</div>
                </div>

                <div class="ui error message"></div>

            </form>

            <button class="ui fluid large teal submit button" onclick="javascript:goCommunityList();">뒤로가기</button>
        </div>
    </div>
    <!-- js 가져오기 -->
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
  

    </script>
</body>

</html>