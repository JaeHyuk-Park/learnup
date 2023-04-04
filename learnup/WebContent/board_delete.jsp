<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="dao.*" %>
<%@ page import="dto.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>delete title here</title>
</head>
 <body>

	<jsp:useBean id ="de" class ="dao.Co_Controller">
	
	<%
	String email = request.getParameter("id");
	
		de.board_deleate(email);
		response.sendRedirect("board_select.jsp"); //폼버튼이없더라도 페이지를 넘겨주는 작업
	%>	 
	
	</jsp:useBean>
	
  </body>

</html>