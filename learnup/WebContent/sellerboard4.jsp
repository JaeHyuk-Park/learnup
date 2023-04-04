<%@page import="vo.Sellerboardob"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="dao.*" %>
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
	<link href="css/sellerboard4.css" rel="stylesheet" type="text/css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	<script src="js/sellerboard4.js"></script>

	<title>판매자게시판 상세페이지</title>
</head>
<body style="margin : 0; overflow-x: hidden;">
	<form name="member" action="sellerboardupdate.jsp" method="post">
	
	<jsp:include page = "header.jsp"/>
	
	<div class="section_sec">
		<section>
			<div class="category">판매자 Q&A</div>
			<jsp:useBean id="sellerboard" class="dao.Sellerboardcontroller">
				<%	
					String boardnum = request.getParameter("boardnum");
					Sellerboardob sell = sellerboard.selectone(boardnum);
										
					out.print("<div class='boardtable'>");
						out.print("<div class='firstline'>");
							out.print("<div class='boardnum'>글번호  :  "+sell.getBoardnum()+"</div>");
							out.print("<div class='empty'></div>");
							out.print("<div class='email'>작성자  :  "+sell.getEmail()+"</div>");
							out.print("<div class='date'>작성일  :  "+sell.getDate()+"</div>");
						out.print("</div>");
						out.print("<div style='width:100%; height:50px; border-bottom:solid 1px #dbdbdb;'>");
							out.print("<div class='title'>제목</div>");
							out.print("<div class='titlesec'><input type='text' name='title' value='"+sell.getTitle()+"'>"+"</div>");
						out.print("</div>");
						out.print("<div style='width:100%; height:100%;'>");
							out.print("<div class='note'>내용</div>");
							out.print("<div class='notesec'><textarea onkeyup='Check()' name='note' id='textarea'>"+sell.getNote().replace("<br>","\r\n")+"</textarea></div>");
						out.print("</div>");
					out.print("</div>");
				%>
						<input type="hidden" value="<%= sell.getBoardnum()%>" name="num">
						<div style='width:100%; height:100px; margin-bottom: 300px;'>
							<input type='button' value='목록으로' onclick="location.href='sellerboard2.jsp'" class="listbtn">
							<input type='submit' value='수정완료' class="updatebtn">
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