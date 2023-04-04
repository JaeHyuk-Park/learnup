<%@page import="vo.NoticedataType"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>공지사항</title>
	<link rel="stylesheet" type="text/css" href="css/notices.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="js/notice.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="d01">
	<jsp:useBean id="data" class="dao.Noticedata">
	<jsp:include page ="./board_baraction.jsp"/>
	<br><br>
	<h2 style="font-size:30px;">공지사항</h2>
	<jsp:include page="noticesearch.jsp"/>
	<table>
	  <colgroup>
	    <col class="no">
	    <col class="title">
	    <col class="writer">
	    <col class="date">
	  </colgroup>
	  <thead>
	    <tr>
	      	<th>게시글 번호</th>
			<th>제목</th>
			<th>닉네임</th>
			<th>작성일시</th>
	    </tr>
	  </thead>
	  <tbody>
	    <%
	    	ArrayList<NoticedataType> type = null;
	    	if(request.getParameter("search") == null){
	    		type = data.mainselect();
	    		ArrayList<Integer> number = new ArrayList<Integer>();
	    		for(int j=1; j<=type.size(); j++){
	    			number.add(j);
	    		}
	    		for(int i=0; i<type.size(); i++){
					String title = type.get(i).getTitle();
					int num = number.get(i);
					int noticenum = type.get(i).getNoticenum();
					out.println("<tr>");
					out.println("<td>"+num+"</td>");
					out.println("<td><a href='noticetitleselect.jsp?title="+title+"&num="+num+"&noticenum="+noticenum+"&file="+type.get(i).getFile()+"'>"+title+"</a></td>");
					out.println("<td>"+type.get(i).getNickname()+"</td>");
					out.println("<td>"+type.get(i).getCreatedate()+"</td>");
					out.println("</tr>");
				}
	    	}else{
	    		type = data.titleselect(request.getParameter("search"));
	    		ArrayList<Integer> number = new ArrayList<Integer>();
	    		for(int j=1; j<=type.size(); j++){
	    			number.add(j);
	    		}
	    		for(int i=0; i<type.size(); i++){
					String title = type.get(i).getTitle();
					int num = number.get(i);
					int noticenum = type.get(i).getNoticenum();
					out.println("<tr>");
					out.println("<td>"+num+"</td>");
					out.println("<td><a href='noticetitleselect.jsp?title="+title+"&num="+num+"&noticenum="+noticenum+"&file="+type.get(i).getFile()+"'>"+title+"</a></td>");
					out.println("<td>"+type.get(i).getNickname()+"</td>");
					out.println("<td>"+type.get(i).getCreatedate()+"</td>");
					out.println("</tr>");
				}
	    	}
		%>
	  </tbody>
	</table>
	<form name="form2" action="noticecreate.jsp">
		<input type="submit" value="게시글 작성">
	</form>
	<div class="page-box">
	  <a class="btn" href="#">&lt;&lt;</a>
	  <a class="btn" href="#">&lt;</a>
	  
	  <!--  숫자 버튼  -->
	  <a class="btn number" href="#">1</a>
	  <a class="btn number" href="#">2</a>
	  <a class="btn number on" href="#">3</a>
	  <a class="btn number" href="#">4</a>
	  <a class="btn number" href="#">5</a>
	  
	  <a class="btn" href="#">&gt;</a>
	  <a class="btn" href="#">&gt;&gt;</a>
	</div>		

		</jsp:useBean>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>