<%@page import="vo.Login_chk"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	System.out.print(request.getParameter("urldirect"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="chck" class="dao.Login_cont">
	<%
	String Email = request.getParameter("Email");
	String check = request.getParameter("checkbox1");
	
	String Password = request.getParameter("Password");
	Login_chk chk = chck.Login(Email);
	
	response.addCookie(new Cookie("email",Email));//쿠키데이터가 저장되었습니다.
	%>
	
	<%
	if((chk.getEmail()== null) || (chk.getPassword()== null))
	{
		response.sendRedirect("learnup_login.jsp?id=false");
	}
	else if((chk.getEmail().equals(Email)) == (chk.getPassword().equals(Password)) )
	{
		session.setAttribute("Email",chk.getEmail());
		session.setAttribute("Nickname",chk.getNickname());
		response.sendRedirect(request.getParameter("urldirect"));
	}
	else
	{
		response.sendRedirect("learnup_login.jsp?id=false2");
	}
	%>
	
	
	</jsp:useBean>

</body>
</html>