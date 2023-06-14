<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- 폰트 -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

		<!-- CSS -->
		<link href="css/header.css" rel="stylesheet" type="text/css">
		<link href="css/slick.css" rel="stylesheet" type="text/css">
		<link href="css/slick-theme.css" rel="stylesheet" type="text/css">

		<!-- JQuery -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script src="js/datepicker.min.js"></script>
    	<script src="js/datepicker.ko.js"></script>
    	
    	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
		<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

		<!-- JS -->
		<script type="text/javascript"></script>
		<script src="js/header.js"></script>
		<script src="js/slick.js"></script>
<title></title>
</head>
		<%
    	 String email = null;
    	 email = (String)session.getAttribute("Email");
    	 String nickname = (String)session.getAttribute("Nickname");
    	 
       %>
<body>
<div style="width:100%;  margin-right: auto; margin-left: auto ; border-bottom: solid 1px black; position: sticky; top: 0px;left: 0; right: 0;  z-index: 999; background-color: white;">
	<header>
		<div style="width: 1280px; height:45px; float:left; margin-top: 20px;">
			<nav style="width:150px; height:45px; float:left;">
				<a href="/learnuped"><img src="image/widthlearn.png" style="width:155px; height:50px;"></a>
			</nav>
			<%if(email == null){ %>
			<a href="learnjoin.html"><nav style="width:110px; height:40px; float: right; margin-top:10px; text-align:center; background-color: #D1B2FF; border-radius:5px; line-height:40px;"><div id="tm5">회원가입</div></nav></a>
			<a href="learnup_login.jsp"><nav style="width:110px; height:40px; float: right; margin-top:10px; margin-right: 10px; text-align: center; line-height: 40px;"><div id="tm6">로그인</div></nav></a>
			<a href="#self"><nav style="width:110px; height:40px; float: right; margin-top:10px; margin-right: 10px; text-align: center; line-height: 40px;"><div id="tm7">전문가등록</div></nav></a>
			<script>
			$(function(){
				$('#tm7').click(function(){
					alert("로그인 후 등록가능합니다.");
				});
			});</script>
			
			<nav method="get" action="/search" id="search" style="margin-top:10px; float:right; margin-right:40px;" >
				<input type="text" size="40" placeholder="검색어를 입력해주세요." / style="font-size:10pt;">
			</nav>
		</div>
		<div style="width: 590px; height:40px; float:left; margin-top: 20px;">
			<a href="TalentList.learn?category=1"><nav class="top_menu" style="margin-left:0px;"><div id="tm1">재능 판매</div></nav></a>
			<a href="off_total_main.off"><nav class="top_menu"><div id="tm3">오프라인 강의</div></nav></a>
			<a href="jangso.learnup.com"><nav class="top_menu" ><div id="tm4">장소 대여</div></nav></a>
		</div>
			
			<%}else{ %>
			<a href="before_create.html"><nav style="width:110px; height:40px; float: right; margin-top:10px; text-align:center; background-color: #D1B2FF; border-radius:5px; line-height:40px;"><div id="tm5">마이런업</div></nav></a>
			<a href="logout.jsp"><nav style="width:110px; height:40px; float: right; margin-top:10px; margin-right: 10px; text-align: center; line-height: 40px;"><div id="tm6">로그아웃</div></nav></a>
			<a href="registerExpert.jsp"><nav style="width:110px; height:40px; float: right; margin-top:10px; margin-right: 10px; text-align: center; line-height: 40px;"><div id="tm7">전문가등록</div></nav></a>
						
			<nav method="get" action="/search" id="search" style="margin-top:10px; float:right; margin-right:40px;" >
				<input type="text" size="40" placeholder="검색어를 입력해주세요." / style="font-size:10pt;">
			</nav>
		</div>
		<div style="width: 590px; height:40px; float:left; margin-top: 20px;">
			<a href="TalentList.learn?category=1"><nav class="top_menu" style="margin-left:0px;" ><div id="tm1">재능 판매</div></nav></a>
			<a href="off_total_main.off"><nav class="top_menu"><div id="tm3">오프라인 강의</div></nav></a>
			<a href="jangso.learnup.com"><nav class="top_menu" ><div id="tm4">장소 대여</div></nav></a>
		</div>
		<div style="height:25px; margin-top:20px; float:right; text-align:right; line-height:25px; font-size:12px; font-weight:bold;">
			<div style="height:25px; color:#8041D9; font-size:13pt; float:left;"><%= nickname%></div><div style="width:80px; height:25px; float:left;">님 환영합니다.</div>
		</div>
			<%} %>
			
	</header>
</div>		
</body>
</html>