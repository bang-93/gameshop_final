<%@page import="kr.co.gameshop.vo.Game"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
   List<Game> gameList=(List)request.getAttribute("gameList");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Game Shop 관리자 페이지 - 게임 상품</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
	color: #566787;
	background: #f5f5f5;
	font-family: 'Varela Round', sans-serif;
	font-size: 12px;
}
.table-responsive {
    margin: 10px 0;
    overflow: visible;
}
.table-wrapper {
	background: #fff;
	padding: 20px 25px;
	border-radius: 3px;
	box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {        
	padding-bottom: 15px;
	background: #435d7d;
	color: #fff;
	padding: 16px 30px;
	min-width: 100%;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}
.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}
.table-title .btn-group {
	float: right;
}
.table-title .btn {
	color: #fff;
	float: right;
	font-size: 13px;
	border: none;
	min-width: 50px;
	border-radius: 2px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}
.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}
.table-title .btn span {
	float: left;
	margin-top: 2px;
}
table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}
table.table tr th:first-child {
	width: 60px;
}
table.table tr th:last-child {
	width: 100px;
}
table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}
table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}	
table.table td:last-child i {
	opacity: 0.9;
	font-size: 22px;
	margin: 0 5px;
}
table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
	outline: none !important;
}
table.table td a:hover {
	color: #2196F3;
}
table.table td a.edit {
	color: #FFC107;
}
table.table td a.delete {
	color: #F44336;
}
table.table td i {
	font-size: 19px;
}
table.table .avatar {
	vertical-align: middle;
	margin-right: 10px;
	width: 200px;
}
.pagination {
	float: right;
	margin: 0 0 5px;
}
.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}
.pagination li a:hover {
	color: #666;
}	
.pagination li.active a, .pagination li.active a.page-link {
	background: #03A9F4;
}
.pagination li.active a:hover {        
	background: #0397d6;
}
.pagination li.disabled i {
	color: #ccc;
}
.pagination li i {
	font-size: 16px;
	padding-top: 6px
}
.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}    
/* Custom checkbox */
.custom-checkbox {
	position: relative;
}
.custom-checkbox input[type="checkbox"] {    
	opacity: 0;
	position: absolute;
	margin: 5px 0 0 3px;
	z-index: 9;
}
.custom-checkbox label:before{
	width: 18px;
	height: 18px;
}
.custom-checkbox label:before {
	content: '';
	margin-right: 10px;
	display: inline-block;
	vertical-align: text-top;
	background: white;
	border: 1px solid #bbb;
	border-radius: 2px;
	box-sizing: border-box;
	z-index: 2;
}
.custom-checkbox input[type="checkbox"]:checked + label:after {
	content: '';
	position: absolute;
	left: 6px;
	top: 3px;
	width: 6px;
	height: 11px;
	border: solid #000;
	border-width: 0 3px 3px 0;
	transform: inherit;
	z-index: 3;
	transform: rotateZ(45deg);
}
.custom-checkbox input[type="checkbox"]:checked + label:before {
	border-color: #03A9F4;
	background: #03A9F4;
}
.custom-checkbox input[type="checkbox"]:checked + label:after {
	border-color: #fff;
}
.custom-checkbox input[type="checkbox"]:disabled + label:before {
	color: #b8b8b8;
	cursor: auto;
	box-shadow: none;
	background: #ddd;
}
/* Modal styles */
.modal .modal-dialog {
	max-width: 400px;
}
.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 20px 30px;
}
.modal .modal-content {
	border-radius: 3px;
/* 	font-size: 14px; */
}
.modal .modal-footer {
	background: #ecf0f1;
	border-radius: 0 0 3px 3px;
}
.modal .modal-title {
	display: inline-block;
}
.modal .form-control {
	border-radius: 2px;
	box-shadow: none;
	border-color: #dddddd;
}
.modal textarea.form-control {
	resize: vertical;
}
.modal .btn {
	border-radius: 2px;
	min-width: 100px;
}	
.modal form label {
	font-weight: normal;
}	

</style>
<script>
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});

</script>
</head>
<body>
<%@ include file="../../client/inc/admin_header.jsp" %> 
<div class="container" style="min-width: 80%">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-3">
						<h2><b>게임 조회</b></h2>
					</div>
 					<div class="col-sm-8" style="margin-left: 80px;">
						<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>게임 등록</span></a>
						<!-- <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a> -->						
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th>
						<th>No.</th>
						<th>게임명</th>
						<th>상품 이미지</th>
						<th style="width: 100px">가격</th>
						<th style="width: 320px">설명</th>
						<th>장르</th>
						<th style="width: 120px">출시일</th>
						<th>용량</th>
						<th style="width: 150px">수정/삭제</th>
					</tr>
				</thead>
<%-- 				<tbody>
				<%for(Game game:gameList){ %>
					<tr class="game_row">
						<td>
							<span class="custom-checkbox">
								<input type="checkbox" id="checkbox1" name="options[]" value="1">
								<label for="checkbox1"></label>
							</span>
						</td>
						<td class="game_id"><%=game.getGame_id() %></td>
						<td class="game_title"><%=game.getGame_title() %></td>
						<td class=""><img src="/<%=game.getGame_img() %>" class="avatar" alt="Avatar"></td>
						<input type="hidden" class="game_img" value=<%=game.getGame_img() %>>
						<td class="game_price"><%=game.getGame_price() %></td>
						<td class="game_content"><%=game.getGame_content() %></td>
						<td class="game_genre"><%=game.getGame_genre() %></td>
						<td class="game_date"><%=game.getGame_date() %></td>
						<td class="game_capacity"><%=game.getGame_capacity() %></td>
						<td>
							<a href="#editEmployeeModal" class="edit edit_click" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
							<a href="#deleteEmployeeModal" onclick="deleteGame(<%= game.getGame_id()%>)" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>
					</tr>
				<%} %>
				</tbody> --%>
			</table>
			<div class="clearfix">
				<ul class="pagination">
					<li class="page-item disabled"><a href="#">Previous</a></li>
					<li class="page-item"><a href="#" class="page-link">1</a></li>
					<li class="page-item"><a href="#" class="page-link">2</a></li>
					<li class="page-item active"><a href="#" class="page-link">3</a></li>
					<li class="page-item"><a href="#" class="page-link">4</a></li>
					<li class="page-item"><a href="#" class="page-link">5</a></li>
					<li class="page-item"><a href="#" class="page-link">Next</a></li>
				</ul>
			</div>
			
			<div class="card-footer"> 
				<nav aria-label="Contacts Page Navigation"> 
					<ul class="pagination justify-content-center m-0"> 
					
						<c:if test="${pageMaker.prev}"> 
							<li class="page-item">
								<a class="page-link" href="${path}/gameshop/admin/product/listPaging?page=${pageMaker.startPage - 1}">이전</a>
							</li> 
						</c:if> 
						
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx"> 
							<li class="page-item" <c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>> 
								<a class="page-link" href="${path}/gameshop/admin/product/listPaging?page=${idx}">${idx}</a> 
							</li> 
						</c:forEach> 
						
						<c:if test="${pageMaker.next && pageMaker.endPage > 0}"> 
							<li class="page-item">
								<a class="page-link" href="${path}/gameshop/admin/product/listPaging?page=${pageMaker.endPage + 1}">다음</a>
							</li> 
						</c:if> 
						
					</ul> 
				</nav> 
			</div>

			
		</div>
	</div>        
</div>

<!-- Edit Modal HTML  게임 등록 -->
<div id="addEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form id="game_regist" action="/game/insert" method="post">
				<div class="modal-header">						
					<h4 class="modal-title">게임 등록</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>게임명</label>
						<input type="text" id="game_title_regist" name="game_title" class="form-control" required>
					</div>
					<div class="form-group">
						<label>상품 이미지</label>
						<input type="text" id="game_img_regist" name="game_img" class="form-control" required>
					</div>
					<div class="form-group">
						<label>가격</label>
						<input type="text" id="game_price_regist" name="game_price" class="form-control" required>
					</div>
					<div class="form-group">
						<label>설명</label>
						<textarea type="text" id="game_content_regist" name="game_content" class="form-control" required></textarea>
					</div>			
					<div class="form-group">
						<label>장르</label>
						<input type="text" id="game_genre_regist" name="game_genre" class="form-control" required>
					</div>		
					<div class="form-group">
						<label>출시일</label>
						<input type="text" id="game_date_regist" name="game_date" class="form-control" required>
					</div>		
					<div class="form-group">
						<label>용량</label>
						<input type="text" id="game_capacity_regist" name="game_capacity" class="form-control" required>
					</div>		
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="취소">
					<input type="button" class="btn btn-success" value="등록" id="insert_regist_btn">
				</div>
			</form>
		</div>
	</div>
</div>

<!-- Edit Modal HTML 게임 정보 수정 -->
<div id="editEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form id="game_data">
				<div class="modal-header">						
					<h4 class="modal-title">게임 정보 수정</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<input type="hidden" id="game_id" name="game_id" />
				<div class="modal-body">					
					<div class="form-group">
						<label class ="" for="game_title">게임명</label>
						<input type="text" id="game_title" name="game_title" class="form-control"/>
					</div>
					<div class="form-group">
						<label>상품 이미지</label>
						<input type="text" id="game_img" name="game_img" class="form-control" />
					</div>
					<div class="form-group">
						<label>가격</label>
						<input type="text" id="game_price" name="game_price" class="form-control" />
					</div>
					<div class="form-group">
						<label>설명</label>
						<textarea type="text" id="game_content" name="game_content" class="form-control"></textarea>
					</div>					
					<div class="form-group">
						<label>장르</label>
						<input type="text"  id="game_genre" name="game_genre" class="form-control" required>
					</div>					
					<div class="form-group">
						<label>출시일</label>
						<input type="text"  id="game_date" name="game_date" class="form-control" required>
					</div>					
					<div class="form-group">
						<label>용량</label>
						<input type="text"  id="game_capacity" name="game_capacity" class="form-control" required>
					</div>					
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="취소">
					<input type="button" class="btn btn-info" value="저장" id="edit_save_btn">
				</div>
			</form>
		</div>
	</div>
</div>

<!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form>
				<div class="modal-header">						
					<h4 class="modal-title">Delete Employee</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<p>회원을 삭제하시겠습니까?</p>
					<p class="text-warning"><small></small></p>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-danger" value="Delete">
					<input type="hidden" id="delGame_id">
				</div>
			</form>
		</div>
	</div>
</div>

</body>
<script type="text/javascript">

console.log("pageMaker.startPage"+pageMaker.startPage);
console.log("pageMaker.endPage"+pageMaker.endPage);
console.log("pageMaker.criteria.page"+pageMaker.criteria.page);

//게임 삭제
$("input[value='Delete']").click(function(){
	var game_id=$("#delGame_id").val();
	
	$.ajax({
		url:"/admin/game/delete",
		type:"POST",
		data:{
			"game_id" : game_id
		},
		success : function(result){
			location.href="/admin/game/list";
		}
	});
});

function deleteGame(game_id){
	$("#delGame_id").val(game_id);
}

//게임 등록
$("#insert_regist_btn").click(function(){	
	$.ajax({
		url:"/admin/game/insert",
		type:"post",
		dataType:"json",
		data:	$("#game_regist").serialize(),
		success : function(result){	
			
			if (result==0){
				location.href="/admin/game/list"
			}else{
				console.log("0이아닐떄")
			}
		}
	});
});

//게임 수정
$("#edit_save_btn").click(function(){	
	$.ajax({
		url:"/admin/game/update",
		type:"post",
		dataType:"json",
		data:	$("#game_data").serialize(),		
		success : function(result){
			
			if (result==0){
				location.href="/admin/game/list"
			}else{
				console.log("0이아닐떄")
			}
		}
	});
});

//게임 정보 조회
$(document).on("click", ".edit_click", function(){
	
	$("#game_id").val(($(this).parent().parent().find(".game_id").text()))
	$("#game_title").val(($(this).parent().parent().find(".game_title").text()))
	$("#game_img").val(($(this).parent().parent().find(".game_img").val()))
	$("#game_price").val(($(this).parent().parent().find(".game_price").text()))
	$("#game_content").val(($(this).parent().parent().find(".game_content").text()))
	$("#game_genre").val(($(this).parent().parent().find(".game_genre").text()))
	$("#game_date").val(($(this).parent().parent().find(".game_date").text()))
	$("#game_capacity").val(($(this).parent().parent().find(".game_capacity").text()))
  
});


</script>
</html>






















