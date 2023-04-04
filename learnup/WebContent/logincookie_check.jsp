<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="dao.*" %>
<%@ page import="dto.*" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insert title here</title>
</head>
 <body>
 
 
 
 <%   
 
 
 	String check = request.getParameter("check1");
 	response.addCookie(new Cookie("checkbox",check));  //쿠키데이터가 저장되었습니다.
 	
 	int nums = Integer.parseInt(check);
 	if(nums == 0)
 	{
 	Cookie cookie = new Cookie("email","");
    cookie.setMaxAge(0);
    response.addCookie(cookie);
 	}
 %>




	

 </body>

</html>

