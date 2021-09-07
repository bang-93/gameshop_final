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
    <title>My Page</title>

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/resources/client/css/core-style.css">
    <link rel="stylesheet" href="/resources/client/style.css">

    <!-- Responsive CSS -->
    <link href="/resources/client/css/responsive.css" rel="stylesheet">

</head>

<body>
	<%@ include file="./inc/header.jsp" %>     
    <div id="wrapper">

        <!-- ****** Checkout Area Start ****** -->
        <div class="checkout_area section_padding_10">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-4" style="position: absolute; margin-left: 13%">
                        <div class="checkout_details_area mt-50 clearfix">

                            <div class="cart-page-heading">
                                <h5>나의 정보</h5>
                                <p>나의 정보를 확인해주십시오</p>
                            </div>

                            <form action="#" method="post">
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label for="mem_userid">나의 아이디<span>*</span></label>
                                        <input type="text" class="form-control" id="first_name" value="${member.mem_userid}" readonly/>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="mem_email">이메일 주소<span>*</span></label>
                                        <input type="text" class="form-control" id="last_name" value="${member.mem_email}" readonly/>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="mem_nickname">닉네임<span>*</span></label>
                                        <input type="text" class="form-control" id="first_name" value="${member.mem_nickname}" readonly/>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="mem_point">보유 포인트<span>*</span></label>
                                        <input type="text" class="form-control" id="last_name" value="${member.mem_point}" readonly/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>


                </div>
            </div>
        </div>
        <!-- ****** Checkout Area End ****** -->

        <!-- ****** Footer Area Start ****** -->
        <!-- ****** Footer Area End ****** -->
    </div>
    <!-- /.wrapper end -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>

</body>

</html>