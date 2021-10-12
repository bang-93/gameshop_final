<%@page import="kr.co.gameshop.vo.Game" %>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   List<Game> gameList=(List)request.getAttribute("gameList");
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Game Shop List}</title>

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/resources/client/css/core-style.css">
    <link rel="stylesheet" href="/resources/client/style.css">

    <!-- Responsive CSS -->
    <link href="/resources/client/css/responsive.css" rel="stylesheet">

</head>

<script type="text/javascript">
function addCart(game_id,mem_id){ // (game_id,mem_id) 받는값
	
	var game_id=game_id; //? 장바구니 추가 누른 게임의 아이디 보내기
	var mem_id=mem_id;
	
	$.ajax({
		url:"/client/cart/insert",
		type:"post",
		data:{
			"game_id":game_id,
			"mem_id":mem_id // "mem_id"(보내는 키값):mem_id(받은값)
		},
		success:function(result){
			alert("장바구니에 추가하였습니다.");
			console.log("게임아이디=="+game_id+"  멤버아이디=="+mem_id);
		}		
	})
}
</script>

<body>

    <div id="wrapper">
    
        <!-- Top Header Area Start -->
        <%@ include file="../inc/header.jsp" %>
        <!-- 밖으로 두 번 나가야한다 -->
        <!-- ****** Header Area End ****** -->

        <!-- ****** list area Start ****** -->
        <!-- ****** Quick View Modal Area End ****** -->

        <section class="shop_grid_area section_padding_100">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-4 col-lg-3">
                        <div class="shop_sidebar_area">
                           
                            <div class="widget catagory mb-50">
                                <!--  Side Nav  -->
                                <div class="nav-side-menu">
                                    <h6 class="mb-0">카테고리</h6>
                                    <div class="menu-list">
                                        <ul id="menu-content2" class="menu-content">
                                             <!-- Single Item -->
                                            <li>
                                                <a href="/client/shop/list">전체보기</a>
                                            </li>  
           									<!-- Single Item -->
                                            <li>
                                                <a href="/client/shop/list?game_genre=horror">호러</a>
                                            </li>
                                             <!-- Single Item -->
                                            <li>
                                                <a href="/client/shop/list?game_genre=action">액션</a>
                                            </li>
                                             <!-- Single Item -->
                                            <li>
                                                <a href="/client/shop/list?game_genre=fps">FPS</a>
                                            </li>
                                             <!-- Single Item -->
                                            <li>
                                                <a href="/client/shop/list?game_genre=rpg">RPG</a>
                                            </li>
                                             <!-- Single Item -->
                                            <li>
                                                <a href="/client/shop/list?game_genre=simulation">시뮬레이션</a>
                                            </li>
                                         
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="widget price mb-50">
                                
                            </div>

                            <div class="widget color mb-70">
                                
                            </div>

                            <div class="widget size mb-50">
                          
                            </div>

                            <div class="widget recommended">
                                <div class="widget-desc">
                                
                                    <!-- Single Recommended Product -->
                                    <div class="single-recommended-product d-flex mb-30">
                                        <div class="single-recommended-thumb mr-3">
                                            
                                        </div>
                                        <div class="single-recommended-desc">
                                            
                                        </div>
                                    </div>
                                    <!-- Single Recommended Product -->
                                    <div class="single-recommended-product d-flex mb-30">
                                        <div class="single-recommended-thumb mr-3">
                                            
                                        </div>
                                        <div class="single-recommended-desc">
                                            
                                        </div>
                                    </div>
                                    <!-- Single Recommended Product -->
                                    <div class="single-recommended-product d-flex">
                                        <div class="single-recommended-thumb mr-3">
                                            
                                        </div>
                                        <div class="single-recommended-desc">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-8 col-lg-9">
                        <div class="shop_grid_product_area">
                            <div class="row">
								
								<!-- 상품 리스트 시작 -->
                                <!-- Single gallery Item -->
                                    <%for(Game game:gameList){ %>
                                <div class="col-12 col-sm-6 col-lg-4 single_gallery_item wow fadeInUpBig" data-wow-delay="0.2s">
                                    <!-- Product Image -->
                                    <div class="product-img">
                                        <img src="/<%=game.getGame_img() %>" class="" alt="">
                                        <div class="product-quicview">
                                            <a href="/admin/detailView?game_id=<%=game.getGame_id() %>">+</a>
                                        </div>
                                    </div>
                                    <!-- Product Description -->
                                    <div class="product-description">
                                        <h4 class="product-price"><%=game.getGame_price() %></h4>
                                        <p><%=game.getGame_title() %></p>
                                        <!-- Add to Cart -->
                                        <p><a href="#" class="add-to-cart-btn" onclick="addCart(<%=game.getGame_id() %>,${member.mem_id})">장바구니 추가</p>
                                    </div>  
                                </div>
                                <%} %>
                    </div>
                </div>
            </div>
        </section>

        <!-- ****** New Arrivals Area End ****** -->

    <!-- /.wrapper end -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="/resources/client/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/resources/client/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="/resources/client/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="/resources/client/js/plugins.js"></script>
    <!-- Active js -->
    <script src="/resources/client/js/active.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	
</body>



</html>