<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="vo.NoticedataType"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="data" class="dao.Noticedata"/>
	<%
		NoticedataType type = new NoticedataType();
		
		String uploadPath=request.getRealPath("/noticefile");	// 저장되는 폴더 위치, multipart보다 위에 있어야함.
		
		int size = 10*1024*1024;	// 10MB, 1024*1024크기란 것임.
		String filename1 = "";
		String origfilename1 = "";
		
		try{
			MultipartRequest multi = new MultipartRequest(request,
								uploadPath,
								size, 
								"UTF-8",
					new DefaultFileRenamePolicy());
			
			String text = multi.getParameter("text");
			text = text.replace("\r\n", "<br>");
			
			if(multi.getFilesystemName("file") != null){
				type.setFile(multi.getFilesystemName("file"));	
			}
			
			type.setNoticenum(Integer.parseInt(multi.getParameter("noticenum")));
			type.setNickname(multi.getParameter("nickname"));
			type.setTitle(multi.getParameter("title"));
			type.setText(text);
			
			data.update(type);
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(e+"오류입니다.");
		}
		response.sendRedirect("noticemain.jsp");
	%>
</body>
</html>