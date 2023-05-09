<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="action.OffSellerRegiAction" %>
<%@ page import="dao.*"%>
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
		
		<link href="css/off_seller_mypage.css" rel="stylesheet" type="text/css">
				
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script src="js/off_seller_mypage.js"></script> 
		
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
  		<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		
		<script>

		</script>
		
		<title></title>
	</head>
	<style type="text/css">
	</style>
	<body style="margin : 0; overflow-x: hidden;">
		<form name="main" action="" method="post" enctype="multipart/form-data">
		
			<jsp:include page = "header.jsp"/>
			
		<div class="section_sec">
		<section>
			<div class="secwrap">
				<div class="toptitle">
					<span>판매자 페이지</span><br>
					<span style="font-size:14pt; margin:10px auto 80px auto; color:#3F0099;">강의를 진행하실 장소, 일정을 등록하시고 리뷰를 관리해보세요.</span>
				</div>
				<div class="secondtitle">
					<span>등록 진행중</span>
				</div>
				<div class="productWrap">
				
					<div class="productSection">
						<div class="imgSection imgList">
							<div id="slider1" class="slider1" >
								<a  class="control_next">></a>
			                    <a  class="control_prev"><</a>
			                 
			                    <ul>
			                      <li class="imgC"><img src="image/lesson2.jpg" alt="cover1"></li>
			                      <li class="imgC"><img src="image/lesson3.jpg" alt="cover2"></li>
			                      <li class="imgC"><img src="image/lesson4.jpg" alt="cover3"></li>
			                      <li class="imgC"><img src="image/lesson5.jpg" alt="cover4"></li>
			                      <li class="imgC"><img src="image/lesson6.jpg" alt="cover5"></li>
			                    </ul>
			                </div>
						</div>
						<div class="detailSection">
							<ul>
								<li class="classTitle">기타배우기</li>
								<li class="classPrice">10,000원</li>
								<li class="classArea">위치 미등록</li>
								<li class="classAddress">주소 미등록</li>
								<li class="classSchedule">일정 미등록</li>
							</ul>
						</div>
						<button type="button" class="regibtn" id="contents">장소/일정 설정</button>
						<button type="button" class="regibtn">등록 완료하기</button>
					</div>
					
					<div class="productSection" style="margin-left:200px;">
						<div class="imgSection imgList">
							<div id="slider2" class="slider1" >
								<a  class="control_next">></a>
			                    <a  class="control_prev"><</a>
			                 
			                    <ul>
			                      <li class="imgC"><img src="image/lesson3.jpg" alt="cover1"></li>
			                      <li class="imgC"><img src="image/lesson4.jpg" alt="cover2"></li>
			                      <li class="imgC"><img src="image/lesson5.jpg" alt="cover3"></li>
			                      <li class="imgC"><img src="image/lesson6.jpg" alt="cover4"></li>
			                      <li class="imgC"><img src="image/lesson7.jpg" alt="cover5"></li>
			                    </ul>
			                </div>
						</div>
						<div class="detailSection">
							<ul>
								<li class="classTitle">인테리어</li>
								<li class="classPrice">23,000원</li>
								<li class="classArea">위치 미등록</li>
								<li class="classAddress">주소 미등록</li>
								<li class="classSchedule">일정 미등록</li>
							</ul>
						</div>
						<button type="button" class="regibtn" id="contents1">장소/일정 설정</button>
						<button type="button" class="regibtn">등록 완료하기</button>
					</div>
									
				</div>
				
				
				<div class="secondtitle" style="margin-top:100px;">
					<span>등록완료</span>
				</div>
				<div class="productWrap">
				
					<div class="productSection">
						<div class="imgSection imgList">
							<div id="slider3" class="slider1" >
								<a  class="control_next">></a>
			                    <a  class="control_prev"><</a>
			                 
			                    <ul>
			                      <li class="imgC"><img src="image/lesson4.jpg" alt="cover1"></li>
			                      <li class="imgC"><img src="image/lesson5.jpg" alt="cover2"></li>
			                      <li class="imgC"><img src="image/lesson6.jpg" alt="cover3"></li>
			                      <li class="imgC"><img src="image/lesson7.jpg" alt="cover4"></li>
			                      <li class="imgC"><img src="image/lesson8.jpg" alt="cover5"></li>
			                    </ul>
			                </div>
						</div>
						<a href="#self">
						<div class="detailSection">
							<ul>
								<li class="classTitle">보컬 트레이닝</li>
								<li class="classPrice">10,000원</li>
								<li class="classArea">수지구</li>
								<li class="classAddress">경기도 용인시 수지구 수지대로2011 2층</li>
								<li class="classSchedule">2023.02.23~2023.03.23</li>
							</ul>
						</div>
						</a>
						<button type="button" class="reviewbtn">리뷰 관리</button>
					</div>
					
					<div class="productSection" style="margin-left:200px;">
						<div class="imgSection imgList">
							<div id="slider4" class="slider1" >
								<a  class="control_next">></a>
			                    <a  class="control_prev"><</a>
			                 
			                    <ul>
			                      <li class="imgC"><img src="image/lesson5.jpg" alt="cover1"></li>
			                      <li class="imgC"><img src="image/lesson6.jpg" alt="cover2"></li>
			                      <li class="imgC"><img src="image/lesson7.jpg" alt="cover3"></li>
			                      <li class="imgC"><img src="image/lesson8.jpg" alt="cover4"></li>
			                      <li class="imgC"><img src="image/lesson9.jpg" alt="cover5"></li>
			                    </ul>
			                </div>
						</div>
						<a href="#self">
						<div class="detailSection">
							<ul>
								<li class="classTitle">필라테스</li>
								<li class="classPrice">22,000원</li>
								<li class="classArea">강남구</li>
								<li class="classAddress">서울특별시 강남구 강남대로 2011 20 그린빌딩 501호</li>
								<li class="classSchedule">2023.03.11~2023.04.11</li>
							</ul>
						</div>
						</a>
						<button type="button" class="reviewbtn">리뷰 관리</button>
					</div>
									
				</div>
				<div class="productWrap">
				
				
					<div class="productSection" style="margin-top:50px;">
						<div class="imgSection imgList">
							<div id="slider5" class="slider1" >
								<a  class="control_next">></a>
			                    <a  class="control_prev"><</a>
			                 
			                    <ul>
			                      <li class="imgC"><img src="image/lesson6.jpg" alt="cover1"></li>
			                      <li class="imgC"><img src="image/lesson7.jpg" alt="cover2"></li>
			                      <li class="imgC"><img src="image/lesson8.jpg" alt="cover3"></li>
			                      <li class="imgC"><img src="image/lesson9.jpg" alt="cover4"></li>
			                      <li class="imgC"><img src="image/lesson10.jpg" alt="cover5"></li>
			                    </ul>
			                </div>
						</div>
						<a href="#self">
						<div class="detailSection">
							<ul>
								<li class="classTitle">그림 그리기</li>
								<li class="classPrice">10,000원</li>
								<li class="classArea">강남구</li>
								<li class="classAddress">경기도 용인시 수지구 수지대로2011 2층</li>
								<li class="classSchedule">2023.02.23~2023.03.23</li>
							</ul>
						</div>
						</a>
						<button type="button" class="reviewbtn">리뷰 관리</button>
					</div>
					
					
					<div class="productSection" style="margin-top:50px; margin-left:200px;">
						<div class="imgSection imgList">
							<div id="slider6" class="slider1" >
								<a  class="control_next">></a>
			                    <a  class="control_prev"><</a>
			                 
			                    <ul>
			                      <li class="imgC"><img src="image/lesson7.jpg" alt="cover1"></li>
			                      <li class="imgC"><img src="image/lesson8.jpg" alt="cover2"></li>
			                      <li class="imgC"><img src="image/lesson9.jpg" alt="cover3"></li>
			                      <li class="imgC"><img src="image/lesson10.jpg" alt="cover4"></li>
			                      <li class="imgC"><img src="image/lesson11.jpg" alt="cover5"></li>
			                    </ul>
			                </div>
						</div>
						<a href="#self">
						<div class="detailSection">
							<ul>
								<li class="classTitle">개발자 과정 풀스텍</li>
								<li class="classPrice">22,000원</li>
								<li class="classArea">강남구</li>
								<li class="classAddress">서울특별시 강남구 강남대로 2011 20 그린빌딩 501호</li>
								<li class="classSchedule">2023.03.11~2023.04.11</li>
							</ul>
						</div>
						</a>
						<button type="button" class="reviewbtn">리뷰 관리</button>
					</div>
									
				</div>
				
				
				
				
				<div class="popup" id="popup">
					<div class="popmenu" id="popmenu">
						<div class="poptitle">클래스 일정</div>
						<div class="popwrap">
						
							<div class="popsectitle">일정을 등록하세요</div>
							<input type="text" id="datepicker" class="datepick" placeholder=" 강의시작 날짜를 선택해주세요">
							<input type="text" id="timepicker1" class="timepick" placeholder=" 강의시작 시간을 선택해주세요">
							<div class="timesec" id="time1">
								<div style="width:500px; height:25px; padding-top:30px;"><span style="padding-left:20px;">오전</span></div>
								<ul>
									<li>01:00</li><li>02:00</li><li>03:00</li><li>04:00</li><li>05:00</li><li>06:00</li>
									<li>07:00</li><li>08:00</li><li>09:00</li><li>10:00</li><li>11:00</li><li>12:00</li>
								</ul>
								<br>
								<div style="width:500px; height:25px; float:left; padding-top:30px;"><span style="padding-left:20px;">오후</span></div>
								<ul>
									<li>01:00</li><li>02:00</li><li>03:00</li><li>04:00</li><li>05:00</li><li>06:00</li>
									<li>07:00</li><li>08:00</li><li>09:00</li><li>10:00</li><li>11:00</li><li>12:00</li>
								</ul>
							</div>
							
							<div class="pop_mid_tit" style="margin-top:30px;"><span style="color:red">00회차</span><span> 클래스로 등록해주셨네요</span></div>
							<div class="pop_mid_tit"><span>이후</span><span style="color:red"> 00회차</span><span>까지의 일정을 알려주세요</span></div>
							
							<div class="popsectitle"><span>2</span><span>회차</span></div>
							<input type="text" id="datepicker" class="datepick" placeholder=" 강의시작 날짜를 선택해주세요">
							<input type="text" id="timepicker2" class="timepick" placeholder=" 강의시작 시간을 선택해주세요">
							<div class="timesec" id="time2">
								<div style="width:500px; height:25px; padding-top:30px;"><span style="padding-left:20px;">오전</span></div>
								<ul>
									<li>01:00</li><li>02:00</li><li>03:00</li><li>04:00</li><li>05:00</li><li>06:00</li>
									<li>07:00</li><li>08:00</li><li>09:00</li><li>10:00</li><li>11:00</li><li>12:00</li>
								</ul>
								<br>
								<div style="width:500px; height:25px; float:left; padding-top:30px;"><span style="padding-left:20px;">오후</span></div>
								<ul>
									<li>01:00</li><li>02:00</li><li>03:00</li><li>04:00</li><li>05:00</li><li>06:00</li>
									<li>07:00</li><li>08:00</li><li>09:00</li><li>10:00</li><li>11:00</li><li>12:00</li>
								</ul>
							</div>
							
							<div class="popsectitle"><span>3</span><span>회차</span></div>
							<input type="text" id="datepicker" class="datepick" placeholder=" 강의시작 날짜를 선택해주세요">
							<input type="text" id="timepicker3" class="timepick" placeholder=" 강의시작 시간을 선택해주세요">
							<div class="timesec" id="time3">
								<div style="width:500px; height:25px; padding-top:30px;"><span style="padding-left:20px;">오전</span></div>
								<ul>
									<li>01:00</li><li>02:00</li><li>03:00</li><li>04:00</li><li>05:00</li><li>06:00</li>
									<li>07:00</li><li>08:00</li><li>09:00</li><li>10:00</li><li>11:00</li><li>12:00</li>
								</ul>
								<br>
								<div style="width:500px; height:25px; float:left; padding-top:30px;"><span style="padding-left:20px;">오후</span></div>
								<ul>
									<li>01:00</li><li>02:00</li><li>03:00</li><li>04:00</li><li>05:00</li><li>06:00</li>
									<li>07:00</li><li>08:00</li><li>09:00</li><li>10:00</li><li>11:00</li><li>12:00</li>
								</ul>
							</div>
							
							<div class="popsectitle"><span>4</span><span>회차</span></div>
							<input type="text" id="datepicker" class="datepick" placeholder=" 강의시작 날짜를 선택해주세요">
							<input type="text" id="timepicker4" class="timepick" placeholder=" 강의시작 시간을 선택해주세요">
							<div class="timesec" id="time4">
								<div style="width:500px; height:25px; padding-top:30px;"><span style="padding-left:20px;">오전</span></div>
								<ul>
									<li>01:00</li><li>02:00</li><li>03:00</li><li>04:00</li><li>05:00</li><li>06:00</li>
									<li>07:00</li><li>08:00</li><li>09:00</li><li>10:00</li><li>11:00</li><li>12:00</li>
								</ul>
								<br>
								<div style="width:500px; height:25px; float:left; padding-top:30px;"><span style="padding-left:20px;">오후</span></div>
								<ul>
									<li>01:00</li><li>02:00</li><li>03:00</li><li>04:00</li><li>05:00</li><li>06:00</li>
									<li>07:00</li><li>08:00</li><li>09:00</li><li>10:00</li><li>11:00</li><li>12:00</li>
								</ul>
							</div>
							
							
							<div class="popsectitle" style="margin-top:70px;">장소를 등록하세요</div>
								<select id="areaselect" class="areaselect" name="area1">
									<option value="none" class="colGray">지역을 선택해주세요</option>
									<option value="서울특별시" class="colGray">서울특별시</option>
								</select>
								
								<select id="placeselect" class="placeselect" name="area2">
									<option value="none" class="colGray">장소를 선택해주세요</option>
									<option value="">관악구</option>
									<option value="">관악구</option>
									<option value="">관악구</option>
									<option value="">관악구</option>
									<option value="">관악구</option>
								</select>
							
								<input type="text" class="address" name="address" placeholder=" 상세주소를 입력해주세요">
							
							<input type="submit" class="regibtn" id="regibtn" value="등록">
							<button type="button" class="closebtn" id="closebtn">닫기</button>
							
						</div>	
					</div>
				</div>
				
				
				
				
				
				
				
				
			</div>	
		</section>
		</div>
		
	<div style="width:100%; height:100%; margin-right: auto; margin-left: auto; ">
	
		<jsp:include page = "footer.jsp"/>
		
	</div>
	</form>	
	</body>

</html>