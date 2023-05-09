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
		String no = request.getParameter("no");
		String nickname = request.getParameter("nickname");
		
		if(session.getAttribute("Nickname") == null){
			%><script>alert("게시글을 작성한 본인만 삭제가 가능합니다."); history.back();</script>
			<%
		}else if(session.getAttribute("Nickname").equals(nickname)){
			data.delete(no);
			response.sendRedirect("noticemain.jsp");	
		}else{
			%><script>alert("게시글을 작성한 본인만 삭제가 가능합니다."); history.back();</script>
			<%
		}
		
	%>
</body>
</html>