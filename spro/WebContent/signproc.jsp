<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% 	
 	out.println("<br>");
	String p_id = (String)request.getParameter("id");
 	out.println("ID = "+ p_id);
 	out.println("<br>");
 	String p_pw = (String)request.getParameter("pw");
 	out.println("PASSWORD = "+ p_pw);
 	out.println("<br>");
 	String p_name = (String)request.getParameter("name");
 	out.println("NAME = "+ p_name);
 	out.println("<br>");
 	String p_phone = (String)request.getParameter("phone");
 	out.println("PHONE = "+ p_phone);
 	
 	Connection conn = null;
 	PreparedStatement pstmt = null;
 	try{
 		Class.forName("oracle.jdbc.driver.OracleDriver");
 		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","AI","1234");
 		
 		pstmt = conn.prepareStatement("INSERT INTO SPRO_MEMBER VALUES (SPROMEMBER.NEXTVAL,?,?,?,?)");
 		pstmt.setString(1,p_id);
 		pstmt.setString(2,p_pw);
 		pstmt.setString(3,p_name);
 		pstmt.setString(4,p_phone);
 		//ret는 영향 받은 행의 갯수
 		int ret = pstmt.executeUpdate();
 		if(ret>0)
 		{
 			System.out.println("정상으로 insert됨");
 			out.println("<a href='index.jsp'>로그인페이지이동</a>");
 		}
 	}
 	catch(Exception e){
 		e.printStackTrace();
 	}
 	finally{
 		try{
 			if(pstmt != null) pstmt.close();
 			if(conn != null) conn.close();
 		}catch(Exception ex){
 			
 		} 		
 	}
 %>
