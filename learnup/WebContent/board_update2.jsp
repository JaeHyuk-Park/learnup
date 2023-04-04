<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="dao.*" %>
<%@ page import="vo.*" %>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insert title here</title>
</head>
 <body>
  <%
       String email = (String)session.getAttribute("email");
   	   String board_id = request.getParameter("num");  
    %>
 

<jsp:useBean id ="up" class ="dao.Co_Controller">
	<%  
	String write = request.getParameter("write");
	String title = request.getParameter("title");
	up.board_update(board_id,title,write);
	response.sendRedirect("board_select.jsp");
	%>	 
	</jsp:useBean>
	
 </body>

</html>