<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import = "dto.NoticedataType" %>
<%@ page import = "dao.Noticedata" %>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setCharacterEncoding("utf-8"); %>
<% 
	NoticedataType data = new NoticedataType();
	Noticedata notice = new Noticedata();
	
	String uploadPath=request.getRealPath("/noticefile");	// 저장되는 폴더 위치, multipart보다 위에 있어야함.
	
	int size = 10*1024*1024;	// 10MB, 1024*1024크기란 것임.
	String filename1 = "";
	String origfilename1 = "";
	String text = "";

	try{
		MultipartRequest multi = new MultipartRequest(request,
							uploadPath,
							size, 
							"UTF-8",
				new DefaultFileRenamePolicy());
		
		text = multi.getParameter("text").replace("\r\n", "<br>");
		data.setTitle(multi.getParameter("title"));
		
		Enumeration files=multi.getFileNames();
		String file1 =(String)files.nextElement();
		filename1=multi.getFilesystemName(file1);
		origfilename1= multi.getOriginalFileName(file1);
	}catch(Exception e){
		e.printStackTrace();
		System.out.println(e+"오류입니다.");
	}
	
	
	if((String)session.getAttribute("Nickname") == null){
		data.setNickname("guest");
	}else{
		data.setNickname((String)session.getAttribute("Nickname"));
	}
	
	data.setText(text);
	data.setFile(filename1);
	notice.datainsert(data);

	response.sendRedirect("noticemain.jsp");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>insert</title>
</head>
<body>
</body>
</html>