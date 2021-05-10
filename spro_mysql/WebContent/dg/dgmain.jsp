<%@page import="daegu.SPRO_DaeGu"%>
<%@page import="java.util.List"%>
<%@page import="daegu.SPRO_DaeGuManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	SPRO_DaeGuManager sdbm = new SPRO_DaeGuManager();
	List<SPRO_DaeGu> list = sdbm.select(0);
	// 	for(int i=0;i<list.size();i++){
	// 		SPRO_DaeGu sd = list.get(i);
	// 		System.out.println(sd);
	// 	}
	for (SPRO_DaeGu sd : list) {
		System.out.println(sd.getIdx());
		System.out.println(sd.getName());
		System.out.println(sd.getCode1());
		System.out.println(sd.getCode1_name());
		System.out.println(sd.getCode2());
		System.out.println(sd.getCode2_name());
		System.out.println(sd.getCode4());
		System.out.println(sd.getCode4_name());
		System.out.println(sd.getDoro_addr());
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/spro_mysql/WebContent/css/mycss.css" />
</head>
<body>
	<div class="jumbotron">
		<h1>DAEGU</h1>
	</div>
	<div>
		<table class="table table-dark table-hover text-center">
			<thead>
				<tr>
					<th>순번</th>	<th>이름</th>	<th>코드</th>	<th>코드</th>	<th>코드</th>	<th>주소</th>
				</tr>
			</thead>
			<tbody>
				<%for (SPRO_DaeGu sd : list) {%>
				<tr>
					<td><%=sd.getIdx()%></td>
					<td><%=sd.getName()%></td>
					<td><%=sd.getCode1_name()%></td>
					<td><%=sd.getCode2_name()%></td>
					<td><%=sd.getCode4_name()%></td>
					<td><%=sd.getDoro_addr()%></td>
				</tr>
				<%}%>
			</tbody>
		</table>
	</div>
</body>
</html>