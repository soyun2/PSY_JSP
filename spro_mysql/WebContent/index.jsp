<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		document.getElementById('idsearch').onclick=function(){
			location.href = 'idsearch.jsp';
		}	
		document.getElementById('login').onclick=function(){
			var id = document.getElementById('id');
			var pw = document.getElementById('pw');
			location.href = 'login.jsp?id='+id.value+'&pw='+pw.value;
		}
		document.getElementById('signin').onclick=function(){
			location.href = 'signin.jsp';
		}
		document.getElementById('outroom').onclick=function(){
			location.href = 'outroom.jsp';
		}
	}
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/spro/css/mycss.css"/>
<script type="text/javascript">
	$('document').ready(function(){ 
		$('#seatsel').on('click', function(){ 
			location.href='seatsel.jsp';
		})
		$('#loginout').on('click',function(){
			location.href='logout.jsp';
		})
	})
</script>
</head>
<body>
	<div class="jumbotron">
		<h1>MY STUDY</h1>
		<p>공부하자</p> 
		<% 
			Object name = session.getAttribute("name");
			if ( name != null ){ 
		%>
			안녕하세요....<% out.print((String)name); %>님
		<% }else{ %>
			<div class="form-group">
				<label for="id">Name:</label>
				<input type="text" class="form-control" id="id">
			</div>
			<div class="form-group">
				<label for="pw">Password:</label>
				<input type="password" class="form-control" id="pw">
			</div>
		<% } %>
		<div class="row">
			<input type="button" value="ID찾기" id="idsearch" class="btn btn-primary ml-2 mr-2">
			<% 
			if ( name != null ){ 
			%>
			<input type="button" value="로그아웃" id="loginout" class="btn btn-primary mr-2">
			<%}else{ %>
			<input type="button" value="로그인" id="login" class="btn btn-primary mr-2">
			<%} %>
			<input type="button" value="회원가입" id="signin" class="btn btn-primary mr-2">
			<input type="button" value="좌석선택" id="seatsel" class="btn btn-primary mr-2">
			<input type="button" value="시간충전" id="timecharge" class="btn btn-primary mr-2">
			<input type="button" value="퇴실" id="outroom" class="btn btn-primary mr-2">
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<h3>Column 1</h3>
				<p>첫번째 컬럼 문단</p>
				<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
			</div>
			<div class="col-sm-4">
				<h3>Column 2</h3>
				<p>두 번째 컬럼 문단</p>
				<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
			</div>
			<div class="col-sm-4">
				<h3>Column 3</h3>        
				<p>세 번째 컬럼 문단</p>
				<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
			</div>
		</div>
	</div>
</body>
</html>








