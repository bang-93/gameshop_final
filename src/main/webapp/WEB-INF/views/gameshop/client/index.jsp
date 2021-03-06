<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Game Shop</title>

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/resources/client/css/core-style.css">
    <link rel="stylesheet" href="/resources/client/style.css">

    <!-- Responsive CSS -->
    <link href="/resources/client/css/responsive.css" rel="stylesheet">

</head>
<body>
    <div id="wrapper">
    
        <!-- Top Header Area Start -->
        <%@ include file="./inc/header.jsp" %>
        <!-- ****** Header Area End ****** -->

        <!-- ****** list area Start ****** -->
        <section class="welcome_area">
            <div class="welcome_slides owl-carousel">
                <!-- banner -->
                <div class="single_slide height-800 bg-img background-overlay" style="background-image: url(/resources/client/img/bg-img/back1.png);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="welcome_slide_text">
                                    <h6 data-animation="bounceInDown" data-delay="0" data-duration="500ms">* 2021.08.25 까지 진행 중!</h6>
                                    <h2 data-animation="fadeInUp" data-delay="500ms" data-duration="500ms">여름 특별 할인</h2>
                                    <a href="#" class="btn karl-btn" data-animation="fadeInUp" data-delay="1s" data-duration="50ms">바로가기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- sale -->
                <div class="single_slide height-800 bg-img background-overlay" style="background-image: url(/resources/client/img/bg-img/back2.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="welcome_slide_text">
                                    <h6 data-animation="fadeInDown" data-delay="0" data-duration="500ms">* 2021년 하반기 기대작 총집합!</h6>
                                    <h2 data-animation="fadeInUp" data-delay="500ms" data-duration="500ms">신규 출시 게임</h2>
                                    <a href="#" class="btn karl-btn" data-animation="fadeInLeftBig" data-delay="1s" data-duration="50ms">바로가기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- ì¸ê¸° -->
                <div class="single_slide height-800 bg-img background-overlay" style="background-image: url(/resources/client/img/bg-img/back3.jpeg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="welcome_slide_text">
                                    <h6>* 최고의 인기 게임을 한눈에!</h6>
                                    <h2>인기 게임</h2>
                                    <a href="#" class="btn karl-btn">바로가기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ****** 세일, 신작, 인기 End ****** -->

        <!-- ****** 커뮤니티, 추천게임 ****** -->
        <section class="top_catagory_area d-md-flex clearfix">
            <!-- 커뮤니티 -->
            <div class="single_catagory_area d-flex align-items-center bg-img" style="background-image: url(/resources/client/img/bg-img/back4.png);">
                <div class="catagory-content">
                    <h6>게시물 작성시 무조건 포인트 지급!</h6>
                    <h2>커뮤니티<br>포인트<br>지급</h2>
                    <a href="#" class="btn karl-btn">바로가기</a>
                </div>
            </div>
            <!-- 오늘의 추천게임 -->
            <div class="single_catagory_area d-flex align-items-center bg-img" style="background-image: url(/resources/client/img/bg-img/back5.jpg);">
                <div class="catagory-content">
                    <h6></h6>
                    <h2>오늘의<br>추천 게임</h2>
                    <a href="#" class="btn karl-btn">바로가기</a>
                </div>
            </div>
        </section>
        <!-- ****** 오늘의 추천게임 End ****** -->

        <!-- ****** 추천게임 Start ****** -->
        <section class="new_arrivals_area section_padding_100_0 clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_heading text-center">
                            <h2>추천 게임</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row karl-new-arrivals">
                    <!-- 추천게임 목록 Strat -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.2s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="/resources/client/img/product-img/game1.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">두근두근 문예부</h4>
                            <p>10,000원</p>
                            <!-- Add to Cart -->
                            <a href="#" class="add-to-cart-btn">장바구니에 추가</a>
                        </div>
                    </div>

                    <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.3s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="/resources/client/img/product-img/game2.jpg" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">문명 5</h4>
                            <p>50,000원</p>
                            <!-- Add to Cart -->
                            <a href="#" class="add-to-cart-btn">장바구니에 추가</a>
                        </div>
                    </div>

                    <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item access wow fadeInUpBig" data-wow-delay="0.4s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="/resources/client/img/product-img/game3.jpg" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">바이오하자드 빌리지</h4>
                            <p>50,000원</p>
                            <!-- Add to Cart -->
                            <a href="#" class="add-to-cart-btn">장바구니에 추가</a>
                        </div>
                    </div>

                    <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item shoes wow fadeInUpBig" data-wow-delay="0.5s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="/resources/client/img/product-img/game4.jpg" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">배틀그라운드</h4>
                            <p>30,000원</p>
                            <!-- Add to Cart -->
                            <a href="#" class="add-to-cart-btn">장바구니에 추가</a>
                        </div>
                    </div>

                    <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="/resources/client/img/product-img/game5.jpg" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">히트맨 2</h4>
                            <p>15,000원</p>
                            <!-- Add to Cart -->
                            <a href="#" class="add-to-cart-btn">장바구니에 추가</a>
                        </div>
                    </div>

                    <!-- Single gallery Item -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item kids man wow fadeInUpBig" data-wow-delay="0.7s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="/resources/client/img/product-img/game6.jpg" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">스타듀밸리</h4>
                            <p>10,000원</p>
                            <!-- Add to Cart -->
                            <a href="#" class="add-to-cart-btn">장바구니에 추가</a>
                        </div>
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

</body>

</html>