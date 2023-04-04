<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="dto.*" %>
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
	<link href="css/sellerboard3.css" rel="stylesheet" type="text/css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	<script src="js/sellerboard3.js"></script>

	<title>판매자게시판 상세페이지</title>
</head>
<body style="margin : 0; overflow-x: hidden;">
	<form name="member" action="sellerboardinsert.jsp" method="post">
	
	<jsp:include page = "header.jsp"/>
	
	<div class="section_sec">
		<section>
			<div class="category">판매자 Q&A</div>
			<jsp:useBean id="sellerboard" class="dao.Sellerboardcontroller">
				<%	
					String boardnum = request.getParameter("boardnum");
					Sellerboardob sell = sellerboard.selectone(boardnum);					
										
					out.println("<table class='boardtable'>");
						out.println("<tr class='firstline'>");
							out.println("<td class='boardnum'>글번호</td>");
							out.println("<td style='width:100px; color:#8041D9; font-size:12pt; font-weight:bold;'>"+sell.getBoardnum()+"</td>");
							out.println("<td class='empty'></td>");
							out.println("<td class='email'>작성자</td>");
							out.println("<td style='width:165px; color:#8041D9; font-size:12pt; font-weight:bold;'>"+sell.getEmail()+"</td>");
							out.println("<td class='date'>작성일</td>");
							out.println("<td style='text-align:right; color:#8041D9; font-size:12pt; font-weight:bold;'>"+sell.getDate()+"</td>");
						out.println("</tr>");
						out.println("<tr style='width:100%; height:50px; border-bottom:solid 1px #D5D5D5;'>");
							out.println("<td class='title'>제목</td>");
							out.println("<td colspan='6' class='titlesec'>"+sell.getTitle()+"</td>");
						out.println("</tr>");
						out.println("<tr>");
							out.println("<td colspan='7' class='notesec'>"+sell.getNote().replace("\r\n","<br>")+"<br><br></td>");
						out.println("</tr>");
					out.println("</table>");	
				%>
						<div class="btnsec">
							<input type='button' value='목록으로' onclick="location.href='sellerboard2.jsp'" class="listbtn">
							<input type='button' value='삭제하기' onclick="location.href='sellerboarddelete.jsp?boardnum=<%= sell.getBoardnum() %>'" class="deletebtn">
							<input type='button' value='수정하기' onclick="location.href='sellerboard4.jsp?boardnum=<%= sell.getBoardnum() %>'" class="updatebtn">
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