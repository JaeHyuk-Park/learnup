<%@page import="dao.Sellerboardcontroller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="sellerboard" class="dao.Sellerboardcontroller"> 
		<%
			String email = (String) session.getAttribute("Email");
			String title = request.getParameter("title");
			String note = request.getParameter("note").replace("\r\n","<br>");
			
			sellerboard.sellerinsert(email, title, note);
			
			response.sendRedirect("sellerboard2.jsp"); 
		%>
	</jsp:useBean>
</body>
</html>