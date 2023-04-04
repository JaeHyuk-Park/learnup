<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="dao.*" %>
<%@ page import="dto.*" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insert title here</title>
</head>
 <body>
 <%  String email_section = (String)session.getAttribute("Email");%>

 <jsp:useBean id ="in" class ="dao.Co_Controller">

	<%
	String write = request.getParameter("write");
	String title = request.getParameter("title");
	String check = request.getParameter("check_yn");
	in.board_insert(email_section,title,write,check);
	response.sendRedirect("board_select.jsp?id=1");
	%>	 

	</jsp:useBean>
	

 </body>

</html>

