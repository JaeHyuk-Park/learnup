<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="vo.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
		
		<link href="css/sellerboard1.css" rel="stylesheet" type="text/css">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	
		<script src="js/sellerboard1.js"></script>


		<title></title>
</head>
<body style="margin : 0; overflow-x: hidden;">
	<form name="member" action="sellerboardinsert.jsp" method="post">
	
	<jsp:include page = "header.jsp"/>
	
	<div class="section_sec">
		<section>
			<div class="category">판매자 Q&A</div>
		    <div class="typo">
		        <div class="wraper">
			        <form  action="sellerboardinsert.jsp" method="post">
			            <input type="text" name="title" placeholder="제목을 입력하세요" id="boardtitle">
			            <textarea name="note" onkeyup="Check()" placeholder="내용을 입력하세요" id="boardnote"></textarea>
			  
			            <div class="typo_submit">
			                <input type="submit" value="등록하기" name="content_regist" id="registbtn">
			                <input type="button" value="목록으로" name="listbtn" onclick="location.href='sellerboard2.jsp'">
			            </div>
			        </form>
			    </div>
		    </div>	
		</section>
	</div>
	<div style="width:100%; height:100%; margin-right:auto; margin-left:auto;">
	
		<jsp:include page = "footer.jsp"/>
		
	</div>
	</form>
</body>
</html>