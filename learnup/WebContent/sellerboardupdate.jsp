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
			String boardnum = request.getParameter("num");
			String title = request.getParameter("title");
			String note = request.getParameter("note");
			
			sellerboard.sellerupdate(boardnum, title, note);
						
			response.sendRedirect("sellerboard2.jsp");
		%>
	</jsp:useBean>
</body>
</html>