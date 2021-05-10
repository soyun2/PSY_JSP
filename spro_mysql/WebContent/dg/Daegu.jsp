<%@page import="daegu.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="daegu.Daegu_DBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Daegu_DBManager ddb = new Daegu_DBManager();
	ArrayList<List> dg_list = ddb.select();
%>
<!DOCTYPE html>
<html>
<head>
  <title>대구 상가정보</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
  #title{color : darkblue; font-size :50px; text-align:center; text-shadow: 2px 2px 2px gray; font-weight:bold;}
  </style>
</head>
<body>
<div class="container my-5 text-center">
  <h2 id="title"><대구 상가정보></h2>       
  <table class="table table-bordered my-3">
    <thead>
      <tr>
        <th>상호명</th><th>업종</th><th>주소(지번)</th><th>주소(도로명)</th>        
      </tr>
    </thead>
    <tbody>
      <%for(int i=0; i<dg_list.size(); i++){
    	  List list_f = dg_list.get(i); %>
      <tr>
      	<td><% out.print(list_f.getName()); %></td>
      	<td><% out.print(list_f.getType()); %></td>
      	<td><% out.print(list_f.getAddr_jibon()); %></td>
      	<td><% out.print(list_f.getAddr_doro()); %></td>
      </tr>
      <% } %>
    </tbody>
  </table>
</div>
</body>
</html>