<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/spro/css/mycss.css"/>
</head>
<body>
	<div class="jumbotron">
		<h1>MY STUDY</h1>
		<p>공부할려면 회원가입</p> 
		<form action="signproc.jsp" method="get">
			<div class="form-group">
				<label for="id">아이디</label>
				<input type="text" name="id" id="id" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="pw">비밀번호</label>
				<input type="text" name="pw" id="pw" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="name">이름</label>
				<input type="text" name="name" id="name" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="phone">전화번호</label>
				<input type="text" name="phone" id="phone" class="form-control"/>
			</div>
			<input type="submit" value="회원가입" class="btn btn-primary"/>
		</form>
	</div>
</body>
</html>











