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
		
		<script>
	
		</script>
		
		<title></title>
	</head>
	<style type="text/css">
	</style>
	<body style="margin : 0; overflow-x: hidden;">
		<form name="main" action="off_seller_regipage.off" method="post" enctype="multipart/form-data">
		
			<jsp:include page = "header.jsp"/>
			
		<div class="section_sec">
		<section>
			<div class="secwrap">
				<div class="toptitle">
					<span>판매자 마이페이지</span>
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
								<li class="classTitle">강의명</li>
								<li class="classPrice">10,000원</li>
								<li class="classArea">위치 미등록</li>
								<li class="classAddress">주소 미등록</li>
								<li class="classSchedule">일정 미등록</li>
							</ul>
							<button type="button" class="regibtn">장소/일정설정</button>
							<button type="button" class="regibtn">등록하기</button>
						</div>
					</div>
					
					<div class="productSection">
						<div class="imgSection imgList">
							<div id="slider2" class="slider1" >
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
								<li class="classTitle">강의명</li>
								<li class="classPrice">강의료</li>
								<li class="classArea">위치 미등록</li>
								<li class="classAddress">주소 미등록</li>
								<li class="classSchedule">일정 미등록</li>
							</ul>
							<button type="button" class="regibtn">장소/일정설정</button>
							<button type="button" class="regibtn">등록하기</button>
						</div>
					</div>
									
				</div>
				
				
				<div class="secondtitle">
					<span>등록완료</span>
				</div>
				<div class="productWrap">
				
					<div class="productSection">
						<div class="imgSection imgList">
							<div id="slider3" class="slider1" >
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
								<li class="classTitle">베이킹 모임</li>
								<li class="classPrice">10,000원</li>
								<li class="classArea">수지구</li>
								<li class="classAddress">경기도 용인시 수지구 수지대로2011 2층</li>
								<li class="classSchedule">2023.02.23~2023.03.23</li>
							</ul>
							<button type="button" class="regibtn">장소/일정설정</button>
							<button type="button" class="regibtn">등록하기</button>
						</div>
					</div>
					
					<div class="productSection">
						<div class="imgSection imgList">
							<div id="slider4" class="slider1" >
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
								<li class="classTitle">필라테스</li>
								<li class="classPrice">22,000원</li>
								<li class="classArea">강남구</li>
								<li class="classAddress">서울특별시 강남구 강남대로 2011 20 그린빌딩 501호</li>
								<li class="classSchedule">2023.03.11~2023.04.11</li>
							</ul>
							<button type="button" class="regibtn">장소/일정설정</button>
							<button type="button" class="regibtn">등록하기</button>
						</div>
					</div>
									
				</div>
				<div class="productWrap">
				
					<div class="productSection">
						<div class="imgSection imgList">
							<div id="slider5" class="slider1" >
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
								<li class="classTitle">그림 그리기</li>
								<li class="classPrice">10,000원</li>
								<li class="classArea">강남구</li>
								<li class="classAddress">경기도 용인시 수지구 수지대로2011 2층</li>
								<li class="classSchedule">2023.02.23~2023.03.23</li>
							</ul>
							<button type="button" class="regibtn">장소/일정설정</button>
							<button type="button" class="regibtn">등록하기</button>
						</div>
					</div>
					
					<div class="productSection">
						<div class="imgSection imgList">
							<div id="slider6" class="slider1" >
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
								<li class="classTitle">개발자 과정 풀스텍</li>
								<li class="classPrice">22,000원</li>
								<li class="classArea">강남구</li>
								<li class="classAddress">서울특별시 강남구 강남대로 2011 20 그린빌딩 501호</li>
								<li class="classSchedule">2023.03.11~2023.04.11</li>
							</ul>
							<button type="button" class="regibtn">장소/일정설정</button>
							<button type="button" class="regibtn">등록하기</button>
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