<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%	request.setCharacterEncoding("utf-8"); %>
<%	response.setCharacterEncoding("utf-8"); %>
<%
if(session.getAttribute("Email") == null){
	%><script>history.back(); </script><%
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전문가 등록</title>
<link rel="stylesheet" type="text/css" href="css/janso_Register.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
</head>
<script>
function phone(){
	alert("인증번호가 발송되었습니다.");
}
function check(){
	alert("인증번호가 확인되었습니다.");
}
</script>
 <%  String email_section = (String)session.getAttribute("Email");%>
<body style="margin: 0px; overflow-x: hidden;">
	<div id="dd"><a href="index.jsp"><img src="image/widthlearn.png" id="whs"></a></div>
	<section>
		<!-- 재능판매, 장소대여, 강의판매(vod), 강의판매에 대한 a태그 걸어야함.-->
		<h2>장소대여자 등록</h2>
		<div>사업장의 상호명과 사업장 주소,</div>
		<div>사업장 전화 번호, 사업자등록증 확인 후에</div> 
		<div>장소대여자 등록이 가능합니다.</div>
		<br>
		<div>상호명</div><br>
		<form action="jangso_Registerinsert.learnup.com" method="post" enctype="multipart/form-data">
		<input type="hidden" name="email" id="email" value="<%=email_section%>">
			<div class="bu"><input type="text" name="liname" placeholder="상호명을 입력하세요." required></div><br>
			<div>사업장 전화 번호</div><br>
			<div class="bu"><input type="text" name="pnum" placeholder="사업장 전화번호를 입력하세요." required></div><br>
			<div>사업자 등록증</div><br>
			<div class="bu"><input type="text" name="lincense" placeholder="등록 번호를 입력하세요." required></div><br>
			<div class="bu"><input type="file" name="file1" id = "file1" multiple></div><br>
			<input type="button" value="뒤로가기" onclick="location.href='registerExpert.jsp'"><input type="submit" value="확인" style="margin-left: 30px;">
		</form>
	</section>
</body>
</html>