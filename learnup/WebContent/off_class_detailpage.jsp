<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="dao.*" %>
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
		<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

		<link href="css/off_class_detailpage.css" rel="stylesheet" type="text/css">
				
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script src="js/off_class_detailpage.js"></script> 
		
		<script>

		</script>
		
		<title></title>
	</head>
     <%  String email_section = (String)session.getAttribute("Email");%>
	<style type="text/css">
	</style>
	<body style="margin : 0; overflow-x: hidden;">
<form name="main" action="" method="post" enctype="multipart/form-data">
<input type="hidden" name="email" value="<%= email_section %>">
		
			<jsp:include page = "header.jsp"/>
			
		<div class="section_sec">
		<section>
			<div class="secwrap">
				<div class="topsec">
					<ul>
						<li>클래스방식</li>
						<li>·장소 </li>
						<li>·모집인원수</li>
					</ul>
					
					<div class="classname">미슐랭 요리사, 서우혁과 함께하는 이탈리아 가정식 클래스</div>
					
					<div class="sellername">강사명 : 서우혁</div>
					
					<div class="imgwrap">
						<div class="bigimg">
							<img src="image/lesson7.jpg">
						</div>
						<div class="midimg">
							<img src="image/lesson16.jpg">
						</div>
						<div class="midimg" style="margin-top:10px;">
							<div class="smallimg">
								<img src="image/lesson8.jpg">
							</div>
							<div class="smallimg" style="margin-left:10px;">
								<img src="image/lesson9.jpg">
							</div>
						</div>
					</div>
				
				</div>
			
				<div class="midsec">
			
				<div class="leftsec">
					<div class="detailWrap">
						<div class="detail_title">클래스 전<br>숙지해주세요</div>
						<div class="detail_note">공지사항</div>
					</div>
					
					<div class="detailWrap">
						<div class="detail_title">클래스 요약</div>
						<div class="detail_note">클래스 요약</div>
					</div>
					
					<div class="detailWrap">
						<div class="detail_title">이런 분들이<br>들으면 좋아요</div>
						<div class="detail_note">이런분들이 들으면 좋아요</div>
					</div>
					
					<div class="detailWrap">
						<div class="detail_title">강사님을<br>소개합니다</div>
						<div class="detail_note">
							<div class="teach_sec">
								<div class="teach_img">
									<img src="image/profile1.jpg">
								</div>
								<div class="teach_info">
									<div class="name">서우혁</div>
									<a href="" class="sns sns_insta">인스타그램</a>
									<a href="" class="sns sns_youtube">유튜브</a>
								</div>
							</div>
							<div class="notetop">
								강사님을 소개합니다.<br>
								강사님을 소개합니다.<br>
								강사님을 소개합니다.<br>
								강사님을 소개합니다.<br>
							</div>
							
						</div>
					</div>
					
					<div class="detailWrap">
						<div class="detail_title">
							<div class="movetit">
								어떤 클래스<br>인가요?
							</div>
						</div>
						<div class="detail_note">
							<div class="whichClass_img">
								<img src="image/lesson15.jpg">
							</div>
							<div class="notetop">
								어떤 클래스인가요?<br>
								어떤 클래스인가요?<br>
								어떤 클래스인가요?<br>
								어떤 클래스인가요?<br>
							</div>
						</div>
					</div>
					
					<div class="detailWrap">
						<div class="detail_title">클래스<br>유의사항</div>
						<div class="detail_note">
							클래스 유의사항<br>
							클래스 유의사항<br>
							클래스 유의사항<br>
							클래스 유의사항<br>
							클래스 유의사항<br>
							클래스 유의사항<br>
							클래스 유의사항<br>
							클래스 유의사항<br>
							클래스 유의사항<br>
							클래스 유의사항<br>
							클래스 유의사항<br>
						</div>
					</div>
					
					<div class="detailWrap">
						<div class="detail_title">클래스는<br>이렇게<br>진행됩니다</div>
						<div class="detail_note">
							<div>
								클래스는 이렇게 진행됩니다<br>
								클래스는 이렇게 진행됩니다<br>
								클래스는 이렇게 진행됩니다<br>
								클래스는 이렇게 진행됩니다<br>
								클래스는 이렇게 진행됩니다<br>
								클래스는 이렇게 진행됩니다<br>
								클래스는 이렇게 진행됩니다<br>
								클래스는 이렇게 진행됩니다<br>
							</div>
							<div class="whichClass_img notetop">
								<img src="image/lesson16.jpg">
							</div>
						</div>
					</div>
					
					<div class="detailWrap">
						<div class="detail_title">관련 영상<br>보고가세요</div>
						<div class="detail_video"></div>
					</div>
					
					<div class="detailWrap">
						<div class="detail_title">수강생의<br>리뷰입니다</div>
						<div class="detail_note">수강생 리뷰</div>
					</div>
					
				</div>
				
				
				<div class="rightsec">
					<div class="menuWrap">
						<div class="menuTitle">미슐랭 요리사, 서우혁과 함께하는<br>이탈리아 가정식 클래스</div>
						<div class="scheduleWrap_Wrap">
							<div class="scheduleWrap">
								<div class="menuSchedule"><span class="sche_date">02월 24일(화)</span><span class="sche_time">19:30~21:30</span></div>
								<div class="menu_area">강남구</div>
								<div class="menu_address">강남대로 20, 6층 그린양식요리학원 501호</div>
							</div>
							
							<div class="scheduleWrap">
								<div class="menuSchedule"><span class="sche_date">02월 25일(수)</span><span class="sche_time">19:30~21:30</span></div>
								<div class="menu_area">강남구</div>
								<div class="menu_address">강남대로 20, 6층 그린양식요리학원 501호</div>
							</div>
							
							<div class="scheduleWrap">
								<div class="menuSchedule"><span class="sche_date">02월 26일(목)</span><span class="sche_time">19:30~21:30</span></div>
								<div class="menu_area">강남구</div>
								<div class="menu_address">강남대로 20, 6층 그린양식요리학원 501호</div>
							</div>
						</div>
						<div class="menuPrice"><span class="pri">10,000</span><span> 원 / 시간</span></div>
						<div class="menuTotalprice"><span class="total_pri">60,000</span> 원 /  총 <span class="classcount">3</span>회  <span class="classtime"> 2</span>시간</div>
						
						<input type="button" class="proBtn" value="클래스 신청하기">
					</div>
				</div>
				
				</div>
				
				<div class="bottomsec"></div>
		
			</div>	
		</section>
	</div>
		
	<div style="width:100%; height:100%; margin-right: auto; margin-left: auto; ">
	
		<jsp:include page = "footer.jsp"/>
		
	</div>
	</form>	
	</body>

</html>