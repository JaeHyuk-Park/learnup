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
<body style="margin: 0px; overflow-x: hidden;">
	<div id="dd"><a href="index.jsp"><img src="image/widthlearn.png" id="whs"></a></div>
	<section>
		<!-- 재능판매, 장소대여, 강의판매(vod), 강의판매에 대한 a태그 걸어야함.-->
		<h2>전문가 등록</h2>
		<div>본인 명의의 핸드폰 번호 인증 후에</div>
		<div>판매자 등록이 가능합니다.</div>
		<br>
		<div>핸드폰 번호 입력</div><br>
		<form action="" method="post">
			<div class="bu"><input type="text" placeholder="핸드폰번호를 입력하세요.">&nbsp;<input type="button" value="인증번호 발송" onclick="phone();"></div><br>
			<div>인증번호 확인</div><br>
			<div class="bu"><input type="text" placeholder="인증번호를 입력하세요.">&nbsp;<input type="button" value="인증 확인" onclick="check();"></div><br>
			<input type="button" value="뒤로가기" onclick="location.href='registerExpert.jsp'"><input type="submit" value="확인" style="margin-left: 30px;">
		</form>
	</section>
</body>
</html>