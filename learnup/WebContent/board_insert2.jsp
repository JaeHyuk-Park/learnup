<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="dao.*" %>
<%@ page import="vo.*" %>
<%@ page import= "java.io.File"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%> <!--똑같은 파일이있을시 파일이름을 바꿔줌  -->
<%@ page import="com.oreilly.servlet.MultipartRequest"%> <!--파일 업로드 수행  -->


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>insert title here</title>
</head>
 <body>
 <%  String email_section = (String)session.getAttribute("Email");%>

 <jsp:useBean id ="in" class ="dao.Co_Controller">

	<%
	request.setCharacterEncoding("UTF-8");
	
	String write = "";
	String title  = "";
	String email_yn1  = "";
	

	
	
	
	try
	{
		
		String directory = application.getRealPath("/upload");

		int maxsize = 1024*1024*100; //총100메가파일까지마
		String encoding ="UTF-8";
		
		MultipartRequest multi = new MultipartRequest(request, directory, maxsize, encoding, new DefaultFileRenamePolicy());
		
		title = multi.getParameter("title");
		write = multi.getParameter("write");
		email_yn1 = multi.getParameter("email_yn1");
		
		String fileName = multi.getOriginalFileName("file1");
		String fileRealName = multi.getFilesystemName("file1");
		
		
		in.board_insert(email_section,title,write,email_yn1);
		
		
		
	}catch(Exception e)
	{
		
	}

	response.sendRedirect("board_select.jsp?id=1");
	%>


</jsp:useBean>
	

 </body>

</html>

