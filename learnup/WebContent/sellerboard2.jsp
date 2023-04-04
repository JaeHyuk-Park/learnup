<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="vo.*" %>
<%@ page import ="java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
	<link href="css/sellerboard2.css" rel="stylesheet" type="text/css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	<script src="js/sellerboard2.js"></script>

	<title>판매자게시판 목록</title>
</head>
<body style="margin : 0; overflow-x: hidden;">
	<form name="member" action="sellerboard2.jsp" method="post">
	
	<jsp:include page = "header.jsp"/>
	
	<div class="section_sec">
		<section>
		<jsp:useBean id="sellerboard" class="dao.Sellerboardcontroller">
		<%
			
			ArrayList<Sellerboardob> sellerlist = new ArrayList<Sellerboardob>();
		
			String titlesearch = request.getParameter("titlesearch");
			
			if(titlesearch == null){
				sellerlist = sellerboard.sellerselect();
			}else{
				sellerlist = sellerboard.searchselect(titlesearch);
			}
			%>
			<br><jsp:include page ="./board_baraction.jsp"/><br>
			<%
			out.println("<br><h2 style='font-size:29px;'>판매자 Q&A</h2>");
			%>
			
			<div class='boardsearch'><input type='submit' value='검색'></div><%
			out.println("<div class='boardsearch'><input type='text' placeholder='검색어를 입력해주세요' name='titlesearch'></div>");
			
			out.println("<table>");
			out.println("<colgroup>");
				out.println("<col class='boardnum'>");
				out.println("<col class='title'>");
				out.println("<col class='email'>");
				out.println("<col class='date'>");
			out.println("</colgroup>");
			out.println("<tr>");
			out.println("<th>글번호</th>"); 		
			out.println("<th>제목</th>");
			out.println("<th>작성자</th>");
			out.println("<th>작성일</th>");
			out.println("</tr>");
			
			for(int i=0; i<sellerlist.size(); i++){
				
				out.println("<tr>");
				out.println("<td>"+sellerlist.get(i).getBoardnum()+"</td>"); 		
				out.println("<td><a href='sellerboard3.jsp?boardnum="+sellerlist.get(i).getBoardnum()+"' class='boardlist'>"+sellerlist.get(i).getTitle()+"</a></td>");
				out.println("<td>"+sellerlist.get(i).getEmail()+"</td>");
				out.println("<td>"+sellerlist.get(i).getDate()+"</td>");
				out.println("</tr>");
			}
			out.println("</table>");
		 %>
		 <input type="button" value="글쓰기" class="writebtn" onclick="location.href='sellerboard1.jsp'">
			<div class="page-box">
			  <a class="btn" href="#">&lt;&lt;</a>
			  <a class="btn" href="#">&lt;</a>
			  
			  <!--  숫자 버튼  -->
			  <a class="btn number on" href="#">1</a>
			  <a class="btn number" href="#">2</a>
			  <a class="btn number" href="#">3</a>
			  <a class="btn number" href="#">4</a>
			  <a class="btn number" href="#">5</a>
			  
			  <a class="btn" href="#">&gt;</a>
			  <a class="btn" href="#">&gt;&gt;</a>
			</div>
		 </jsp:useBean>
		</section>
	</div>
	<div style="width:100%; height:100%; margin-right: auto; margin-left: auto; ">
		
		<jsp:include page = "footer.jsp"/>
		
	</div>
	</form>
</body>
</html>