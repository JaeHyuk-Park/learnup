<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%	request.setCharacterEncoding("utf-8"); %>
<%	response.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전문가 등록</title>
<link rel="stylesheet" type="text/css" href="css/registerExpert.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
</head>
<body style="margin: 0px; overflow-x: hidden;">
	<div id="dd"><a href="index.jsp"><img src="image/widthlearn.png" id="whs"></a></div>
	<section>
		<!-- 재능판매, 장소대여, 강의판매(vod), 강의판매에 대한 a태그 걸어야함.-->
		<h2>어떤 서비스로 등록해드릴까요?</h2>
		<div>원하는 회원전환 유형을 선택하세요</div>
		<div>의뢰인으로 가입 후에도 전문가/장소대여자</div>
		<div>등록이 가능합니다.</div>
		<br>
		<div>재능 및 강의를 판매하고 싶다면</div><br>
		<form>
			<div class="bu"><a href="expertRegister.jsp"><input type="button" value="전문가로 등록"></a></div><br>
			<div>장소를 판매하고 싶다면</div><br>
			<div class="bu"><a href="janso_Register.jsp"><input type="button" value="장소대여자로 등록"></a></div>
		</form>
	</section>
</body>
</html>