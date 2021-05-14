<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="daegu.SPRO_DaeGuManager" %>
<%@ page import="daegu.SPRO_DaeGu" %>
<%
	SPRO_DaeGuManager sdgm = new SPRO_DaeGuManager();
 	String str = sdgm.selectcode4();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/spro_mysql/WebContent/css/mycss.css"/>
<script src="http://d3js.org/d3.v3.min.js" charset="UTF-8"></script>
<style type="text/css">
	rect{
		stroke : rgb(0,0,200);
		stroke-width : 1px;
		fill : rgb(0,235,0);	
	}
</style>
</head>
<body>
<div class="jumbotron">
	<h1>MY STUDY</h1>
	<p>code4</p>
</div>
</body>
</html>
<script src="../js/sample2.js"></script>
<script type="text/javascript">

</script>