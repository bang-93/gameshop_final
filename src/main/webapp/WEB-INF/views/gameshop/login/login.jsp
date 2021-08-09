<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>GameShop : Login</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style_login.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

	<!-- The video -->
	<iframe id="myVideo" width="100%" height="100%" 
				src="https://www.youtube.com/embed/6vdE4lchqrs?rel=0&amp;autoplay=1&mute=1&amp;loop=1;playlist=6vdE4lchqrs" 
				frameborder="0"> 
	</iframe>

	<div class="wrap">
		<div class="form-wrap">

			<!--/// 로그인 & 회원가입 전환 버튼 ///-->
			<div class="button-wrap">
				<div id="btn"></div>
				<button type="button" class="togglebtn" onclick="login()">LOG IN</button>
				<button type="button" class="togglebtn" onclick="register()">REGISTER</button>
			</div>

			<!--/// SNS를 통한 가입 아이콘 (구현 X) ///-->
			<div class="social-icons">
				<img src="${pageContext.request.contextPath}/resources/img/login_icon/kakao.png" alt="kakao">
				<img src="${pageContext.request.contextPath}/resources/img/login_icon/naver.png" alt="naver">
				<img src="${pageContext.request.contextPath}/resources/img/login_icon/google.png" alt="google">
			</div>

			<!--/// 로그인 ///-->
			<form id="login" method="post" class="input-group">
				<input type="text" class="input-field" name="mem_userid" placeholder=" ID..." required>
				<input type="password" class="input-field" name="mem_password" placeholder=" Password..." required>
				<input type="checkbox" class="checkbox">
				<span>Remember Password</span>
				<input type="button" id="login_btn" class="submit" value="Login"/>
			</form>

			<!--/// 회원가입 ///-->
			<form id="register" action="/user/join/regist" method="post" class="input-group">
				<input type="text" id="userid" class="input-field-id" name="mem_userid" placeholder=" ID..." required>
				<input type="button"  id="userid_check" class="input-field-id-check" value="중복체크"/>
				<input type="email" class="input-field" name="mem_email" placeholder=" Email or Phone..." required>
				<input type="nickname" class="input-field" name="mem_nickname" placeholder=" NickName..." required>
				<input type="password" class="input-field" name="mem_password" placeholder=" Password..." required>
				<input type="checkbox" class="checkbox">
				<span>Terms and conditions</span>
				<!-- 이용약관 -->
				<input type="button" id="member_regist" class="submit" value="REGISTER"/>
				<input type="hidden" id="user_id_check_flag"  value="N"/>
			</form>
		</div>
	</div>

	<script type="text/javascript">
		// 로그인 & 회원가입 전환 버튼 좌표
		var x = document.getElementById("login");
		var y = document.getElementById("register");
		var z = document.getElementById("btn");

		function login() {
			x.style.left = "50px";
			y.style.left = "450px";
			z.style.left = "0";
		}

		function register() {
			x.style.left = "-400px";
			y.style.left = "50px";
			z.style.left = "120px";
		}
		
		// 로그인 처리	
		$("#login_btn").click(function() {	
			$.ajax({
				url:"/client/login",
				type:"post",
				dataType:"json",
				data:	$("#login").serialize(),
				success : function(result){		
					if (result.member==null){ // 로그인 실패
						alert("아이디와 비밀번호의 정보가 올바르지 않습니다. 확인해주십시오.");
						location.href="/client/regist";
					}else{
						if(result.member.mem_userid=="master" && result.member.mem_password=="1234"){
							console.log("---------------123123123"+result.member.mem_userid);
							alert("관리자 입니다.");
							location.href="/admin/game/list";
						}else {
							alert(result.member.mem_userid+"님 환영합니다");
							console.log("---------------123123123"+result.member.mem_userid);
							location.href="/client/main";						
						}
					}
				}
			});
		})
		
		
		// 아이디 중복조회
		$("#userid_check").click(function(){
			console.log($("#userid").val() ," ---");
			if($("#userid").val()==""){
					alert("아이디를 입력하세요");
			}else{				
				$.ajax({
					url : "/client/user/useridCheck",
					type : "post",
					dataType : "json",
					data : {"mem_userid" : $("#userid").val()},
					success : function(data){
						console.log("data:",data);
						if(data == 1){
							$("#user_id_check_flag").val("N");
							alert("중복된 아이디입니다. 다시 작성해주십시오");
							$("#userid").val("")
						}else if(data == 0){
							
							alert("가입가능한 아이디입니다.");
							$("#user_id_check_flag").val("Y");
						}
					}
				})
			}
		})
		
		// 회원가입
		$("#member_regist").click(function(){
			
			if($("#user_id_check_flag").val()=="N")
			{
				
				alert("중복체크를 해주세요");
				
			}
			else if($("#user_id_check_flag").val()=="Y")
			{
				$.ajax({
					url : "/client/user/join/regist",
					type : "post",
					dataType : "json",
					data : $("#register").serialize(),
					success : function(data){
						
						if(data == true){
							
							alert("회원가입이 완료되었습니다");
							location.href="/client/regist";
						}else if(data == false){
							alert("회원가입에 실패하였습니다. 다시 입력해주십시오.");
							
						}
					}
				})
			}
		})		
		
		// 로그인 화면 배경영상
		var video = document.getElementById("myVideo");
	</script>
</body>
</html>