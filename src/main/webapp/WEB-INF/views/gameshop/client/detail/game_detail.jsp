<%@page import="kr.co.gameshop.vo.Game" %>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
	Game gameInfo=(Game)request.getAttribute("game_info");
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
    <title>Game Details</title>

    <!-- Favicon  -->
    <link rel="icon" href="/resources/client/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/resources/client/css/core-style.css">
    <link rel="stylesheet" href="/resources/client/style.css">

    <!-- Responsive CSS -->
    <link href="/resources/client/css/responsive.css" rel="stylesheet">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">    
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&display=swap" rel="stylesheet">

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">

<style type="text/css">
#game_title{
	font-family: 'East Sea Dokdo', cursive;
	font-size: 130px;
	margin-top: -7%;
	margin-bottom: -5%;
}
#game_content{
	font-family: 'Gowun Batang', serif;
	font-size: 19px;
	font-weight: bold;
}
#game_genre{
	font-family: 'Gowun Batang', serif;
	font-size: 25px;
	margin-top: 20px;
	text-transform: uppercase;
}
#game_price{
	font-family: 'Gowun Batang', serif;
	font-size: 25px;
}
#game_capacity{
	font-family: 'Gowun Batang', serif;
	font-size: 25px;
	margin-bottom: 20px;
}
</style>

</head>

<body>
<%@ include file="../../client/inc/header.jsp" %> 

    <div id="wrapper">

        <!-- <<<<<<<<<<<<<<<<<<<< Single Product Details Area Start >>>>>>>>>>>>>>>>>>>>>>>>> -->
        <section class="single_product_details_area section_padding_0_100">
            <div class="container" style="min-width: 85%">
                <div class="row">

                    <div class="col-12 col-md-6">
                        <div class="single_product_thumb">

								<!-- 상품 이미지 -->
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="/<%=gameInfo.getGame_img() %>">
                                    </a>
                                    </div>
                                </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-6">
                        <div class="single_product_desc">

                            <input type="hidden" id="game_id" value=<%=gameInfo.getGame_id() %>>

							<div id="game_title">
                            	<td class="title"><%=gameInfo.getGame_title() %></td>
							</div>							

							<div id="game_content" style="width: 90%">
                            	<hr>							
                            	<td class="content"><%=gameInfo.getGame_content() %></td>
							</div>

							<div id="game_genre">
                            	<li>장르 : <td class="genre"> <%=gameInfo.getGame_genre() %></td></li>
							</div>

							<div id="game_price">
                            	<li>가격 : <td class="price"> <%=gameInfo.getGame_price() %></td></li>
							</div>

							<div id="game_capacity">
                            	<li>용량 : <td class="capacity"> <%=gameInfo.getGame_capacity() %></td></li>
							</div>

                            <!-- Add to Cart Form -->
                            <form class="cart clearfix mb-50 d-flex" method="post">
<!--                             
                                <div class="quantity">
                                    <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                    <input type="number" class="qty-text" id="qty" step="1" min="1" max="12" name="quantity" value="1">
                                    <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                </div>
-->
                                <button type="submit" name="addtocart" value="5" class="btn cart-submit d-block">장바구니에 추가</button>
                                <!-- Wishlist -->
                                
	                              <div class="modal_pro_wishlist">
	                              		<!-- 찜 숫자가 올라가는 자리 -->
	                                  <a href=""><i class="ti-heart" onclick="addHeart()"><%=gameInfo.getGame_heart()%></i></a>
	                              </div>
                            </form>
<!-- 
                            <div id="accordion" role="tablist">
                                <div class="card">
                                    <div class="card-header" role="tab" id="headingOne">
                                        <h6 class="mb-0">
                                            <a aria-expanded="true" aria-controls="collapseOne">Information</a>
                                        </h6>
                                    </div>

                                    <div aria-labelledby="headingOne" data-parent="#accordion">
                                        <div class="card-body">
                                            <p>컨텐츠 내용</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
 -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- <<<<<<<<<<<<<<<<<<<< Single Product Details Area End >>>>>>>>>>>>>>>>>>>>>>>>> -->
 
                                        <!-- Add to Cart Form -->
                                            
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ****** Quick View Modal Area End ****** -->

    </div>
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
<script>
function addHeart(){
	var game_id=$("#game_id").val();
	
	$.ajax({
		url:"/client/shop/heart",
		type:"get",
		data:{
			"game_id":game_id
		},
		success:function(result){
			console.log("좋아요 숫자 증가");
		}
	});
}
</script>

</html>