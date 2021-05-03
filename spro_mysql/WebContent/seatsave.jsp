<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="spro.com.org.SPRO_DBManager"%>
<%
	String seat = request.getParameter("seat");
	String name = (String)session.getAttribute("name");
	String phone = (String)session.getAttribute("phone");
	String m_time = "3";
	
	SPRO_DBManager sdbm = new SPRO_DBManager();
	int ret = sdbm.seat_useInsert(seat,name,phone,m_time);
	if(ret >0)
		out.println("좌석선택이 완료 되었습니다.");
	else
		out.println("좌석선택이 실패 했습니다.");

%>