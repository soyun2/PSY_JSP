<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.sy.Ex01" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
안녕하세요 jsp
<%
	Ex01 ex01 = new Ex01();
	ex01.doA();
	String re = ex01.reString();
	out.println(re);
%>
</body>
</html>