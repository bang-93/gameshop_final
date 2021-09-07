<%@ page contentType="text/html;charset=UTF-8"%>
<!-- ****** Header Area Start ****** -->
<header class="header_area">
    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/resources/client/css/core-style.css">
    <link rel="stylesheet" href="/resources/client/style.css">

    <!-- Responsive CSS -->
    <link href="/resources/client/css/responsive.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- ****** Header Area Start ****** -->
<header class="header_area">
    <!-- Top Header Area Start -->
    <div class="top_header_area">
        <div class="container h-100">
            <div class="row h-100 align-items-center justify-content-end" style="margin-left: -13%">
                <div class="col-12 col-lg-7">
                    <div class="top_single_area d-flex align-items-center">
                        <!-- 베너 -->
                        <div class="top_logo">
                            <a href="/client/main"><img src="/resources/client/img/core-img/banner.png" alt="" width="300" height="100" ></a>
                        </div>
                        <!-- Cart & Menu Area -->
                        <div class="header-cart-menu d-flex align-items-center ml-auto">
                            <!-- 장바구니 -->
                            <p>
	                            <div class="cart">
	                                <a href="#" id="header-cart-btn" onclick="goCartList()"><i class="ti-bag" id="cart"></i>장바구니&nbsp;&nbsp;</a>
	                            </div>
                            </p>
                            
                            <p>
                            <!-- 간단 유저 정보 -->
                            <div class="user">
                            <input type="hidden" id="session_mem_id" value="${member.mem_id}"/>
                                <a href="#" id="header-user-btn" target="_blank"><i class="ti-user"></i>&nbsp;${member.mem_userid}, 보유 포인트<span id="mem_point"></span></a>
                            </div>
                            </p>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Top Header Area End -->
        <div class="main_header_area">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-12 d-md-flex justify-content-between">
                            <!-- Header Social Area -->
                            <div class="header-social-area">
                            </div>
                            <!-- 메인메뉴 -->
                            <div class="main-menu-area">
                                <nav class="navbar navbar-expand-lg align-items-start">
                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#karl-navbar" aria-controls="karl-navbar" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"><i class="ti-menu"></i></span></button>
                                    <div class="collapse navbar-collapse align-items-start collapse" id="karl-navbar">
                                        <ul class="navbar-nav animated" id="nav">
                                            <li class="nav-item dropdown">
                                                <li class="nav-item"><a class="nav-link" href="/client/shop/list">GAME</a>
                                                <div class="dropdown-menu" aria-labelledby="karlDropdown">
                                                </div>
                                            </li>
                                            <li class="nav-item"><a class="nav-link" href="/client/communityList">커뮤니티</a></li>
                                            <li class="nav-item"><a class="nav-link" href="/client/reboardlist">고객센터</a></li>
                                            <li class="nav-item"><a class="nav-link" href="/client/getmypage"> 마이페이지</a></li>
                                            <li class="nav-item"><a class="nav-link" href="/client/regist">로그아웃</a></li>
                                        </ul>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                            <!-- Help Line -->
                            <div class="help-line">
                            </div>
                        </div>
                </div>
            </div>
</header>

<script type="text/javascript">

$(document).ready(function() {
	if($("#session_mem_id").val()!=null){
		
		$.ajax({
			url:"/client/checkPoint",
            data     : 
     	   {
     		   "mem_id" : $("#session_mem_id").val(), 	   
	        },
	        dataType : "JSON",
			type:"post",
			success : function(result){
				$("#mem_point").text(" : "+result);
			}
		});		
		
	}
	
})

function goCartList() {
	location.href = "/client/cart/list";
}

/* $("#cart").click(function(){
	var mem_id=$("#session_mem_id").val();
	$.ajax({
		url:"/client/cart/list",
		type:"post",
		data:{
			"mem_id":mem_id
		}
	})	
}) */


</script>