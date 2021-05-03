<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션 삭제..
	session.invalidate();
	/*
		jsp 내장 객체 3가지...
		request
			setCharacterEncoding("utf-8") utf8 인코딩 지정
			getParameter() 주소의 파라메타 가져오기
		response
			sendRedirect() 주소로 이동하기
		session 
			setAttribute("이름","값") 세션 이름 값 지정
			getAttribute("이름") 세션 이름 가져오기
			invalidate() 세션 내용 삭제
	*/
	// index.jsp 이동해라
	response.sendRedirect("index.jsp");
%>