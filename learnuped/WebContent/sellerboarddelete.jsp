<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<jsp:useBean id="sellerboard" class="dao.Sellerboardcontroller">
		<%
			String num = request.getParameter("boardnum");
			sellerboard.sellerdelete(num);
			
			response.sendRedirect("sellerboard2.jsp");
		%>
	</jsp:useBean>
</body>
</html>