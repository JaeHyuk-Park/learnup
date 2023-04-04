<%@page import="java.util.ArrayList"%>
<%@page import="dao.Noticedata"%>
<%@page import="dto.NoticedataType"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<% 
	String search = request.getParameter("search");
	Noticedata data = new Noticedata();
	ArrayList<NoticedataType> type = data.titleselect(search);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>런업 : <%= search%> 검색 결과</title>
	<link rel="stylesheet" type="text/css" href="css/notices.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="js/notice.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
</head>
<body>
	<form name='form1' method='post' action="noticemain.jsp">
	<div>
		<input type="text" name="search">
		<input type="submit" value="검색">
	</div>
	</form>
</body>
</html>