<%@ page import="dao.*"%>
<%@ page import="vo.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>


<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>LearnUP 메인페이지</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
</head>
<script type="text/javascript">
	$(function() {
		$(".banner_sec2").slick({
			slide : 'div',
			infinite : true,
			slidesToShow : 1,
			slidesToScroll : 1,
			speed : 100,
			arrows : true,
			dots : true,
			autoplay : true,
			autoplaySpeed : 3000,
			pauseOnHover : true,
			vertical : false,
		})
	});
</script>

<body>
	<%@include file="./header.jsp"%>

	<section class="lows">

		<!-- 최상단 롤링배너 영역 -->
		<div
			style="width: 100%; height: 100%; margin-right: auto; margin-left: auto;">
			<div
				style="width: 100%; height: 100%; background-color: rgb(7, 30, 54); float: left;">
				<div
					style="width: 100%; height: 100%; margin: auto; margin: 25px auto;">
					<div
						style="width: 1280px; height: 380px; list-style: none; margin-left: auto; margin-right: auto;">
						<div class="banner_sec1">
							<h1>
								재능판매, 오프라인강의, 강의실대여<br>지금 바로 시작해보세요.
							</h1>
							<div method="get" action="/search" id="search2">
								<input type="text" size="20" placeholder="검색해주세요">
							</div>
							<ul>
								<a href="#self"><li>#피트니스</li></a>
								<a href="#self"><li>#보컬</li></a>
								<a href="#self"><li>#필라테스</li></a>
								<a href="#self"><li>#스포츠</li></a>
								<a href="#self"><li>#공예</li></a>
								<a href="#self"><li>#메이크업</li></a>
								<a href="#self"><li>#베이킹</li></a>
							</ul>
						</div>
						<div class="banner_sec2">
							<a href="#self">
								<div>
									<img src="image/mainbaner.png">
								</div>
							</a>
						</div>

					</div>
				</div>
			</div>

		</div>
	</section>

	<!--    재능    -->
	<div style="height: 50px;"></div>
	<section class="jaeneung">

		<div class="boxxxxd">
			<div style="float: left">
				<span
					style="color: #8A2BE2; font-size: 20pt; position: relative; top: 10px; left: 50px; font-weight: bold;">위클리
					재능 추천</span>
			</div>
			<div style="text-align: right;">
				<button class="custom-btn btn-15"
					onclick="location.href='talentindexpage.jsp' "
					style="background-color: #D1B2FF; border-radius: 5px; position: relative; top: 30px; right: 60px; font-size: 15px; font-weight: bold; padding: 5px 10px;">전체보기</button>
			</div>
		</div>
		<div class="link-boxd">

			<div class="box-controll">
				<div class="box-0d">
					<div class="box-0-1d">
						<a href="" class="imgbox"> <span style="position: absolute;">
								<img src="image/talentimage/13.jpg" id="talent-1" alt=""
								class="imgs">
						</span> <span style="position: absolute; margin-left: 200px;"> <a
								href="javascript:;" class="icon heart"
								style="text-decoration: none; color: inherit; cursor: pointer;">
									<img src="image/heart1.png" alt="찜하기">
							</a>
						</span>
						</a>
					</div>

					<div class="box-0-2d">
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review">
							<span class="star">★</span>4.9<span class="bordleft"></span><span>154개의
								평가</span>
						</div>
					</div>

				</div>



				<div class="box-0d">
					<div class="box-0-1d">
						<a href="" class="imgbox"> <span style="position: absolute;">
								<img src="image/talentimage/14.jpg" id="talent-2" alt=""
								class="imgs">
						</span> <span style="position: absolute; margin-left: 200px;"> <a
								href="javascript:;" class="icon heart"
								style="text-decoration: none; color: inherit; cursor: pointer;">
									<img src="image/heart1.png" alt="찜하기">
							</a>
						</span>
						</a>
					</div>

					<div class="box-0-2d">
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review">
							<span class="star">★</span>4.9<span class="bordleft"></span><span>154개의
								평가</span>
						</div>
					</div>

				</div>

				<div class="box-0d">
					<div class="box-0-1d">
						<a href="" class="imgbox"> <span style="position: absolute;">
								<img src="image/talentimage/17.jpg" id="talent-3" alt=""
								class="imgs">
						</span> <span style="position: absolute; margin-left: 200px;"> <a
								href="javascript:;" class="icon heart"
								style="text-decoration: none; color: inherit; cursor: pointer;">
									<img src="image/heart1.png" alt="찜하기">
							</a>
						</span>
						</a>
					</div>

					<div class="box-0-2d">
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review">
							<span class="star">★</span>4.9<span class="bordleft"></span><span>154개의
								평가</span>
						</div>
					</div>

				</div>


				<div class="box-0d">
					<div class="box-0-1d">
						<a href="" class="imgbox"> <span style="position: absolute;">
								<img src="image/talentimage/18.jpg" id="talent-4" alt=""
								class="imgs">
						</span> <span style="position: absolute; margin-left: 200px;"> <a
								href="javascript:;" class="icon heart"
								style="text-decoration: none; color: inherit; cursor: pointer;">
									<img src="image/heart1.png" alt="찜하기">
							</a>
						</span>
						</a>
					</div>

					<div class="box-0-2d">
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review">
							<span class="star">★</span>4.9<span class="bordleft"></span><span>154개의
								평가</span>
						</div>
					</div>

				</div>


			</div>
		</div>
		</div>
	</section>

	<!--오프라인-->
	<div style="height: 50px;"></div>
	<section class="off">

		<div class="off_box">
			<div style="float: left">
				<span
					style="color: #8A2BE2; font-size: 20pt; position: relative; top: 10px; left: 50px; font-weight: bold;">위클리
					오프라인 강의 추천</span>
			</div>
			<div style="text-align: right;">
				<button class="custom-btn btn-15"
					onclick="location.href='off_mainpage.jsp' "
					style="background-color: #D1B2FF; border-radius: 5px; position: relative; top: 30px; right: 60px; font-size: 15px; font-weight: bold; padding: 5px 10px;">전체보기</button>
			</div>
		</div>

		<div class="link-boxd3">

			<div class="box-controll3">
				<div class="box-0d3">
					<div class="box-0-1d3">
						<a href="#self" class="imgbox"> <span
							style="position: absolute;"> <img src="image/lesson3.jpg"
								alt="" class="off_imgs">
						</span> <span style="position: absolute; margin-left: 200px;"> <a
								href="javascript:;" class="icon heart"
								style="text-decoration: none; color: inherit; cursor: pointer;">
									<img src="image/heart1.png" alt="찜하기">
							</a>
						</span>
						</a>
					</div>

					<div class="box-0-2d3">
						<p class="off_area">강남구</p>
						<p class="off_title">그린컴퓨터아카데미 풀스텍(java, database, css,
							javascript)</p>
						<p class="off_nickname">유깹</p>
						<p class="off_price">10,000원</p>
						<p class="off_jjimreview_wrap">
							<img src="image/heart2.png" class="off_jjim">
						<div class="off_jjimcount">5.0</div>
						<div class="off_review">리뷰</div>
						<div class="off_reviewcount">1,000+</div>
						</p>
					</div>

				</div>

				<div class="box-0d3">
					<div class="box-0-1d3">
						<a href="" class="imgbox"> <span style="position: absolute;">
								<img src="image/lesson4.jpg" alt="" class="off_imgs">
						</span> <span style="position: absolute; margin-left: 200px;"> <a
								href="javascript:;" class="icon heart"
								style="text-decoration: none; color: inherit; cursor: pointer;">
									<img src="image/heart1.png" alt="찜하기">
							</a>
						</span>
						</a>
					</div>

					<div class="box-0-2d3">
						<p class="off_area">강남구</p>
						<p class="off_title">그린컴퓨터아카데미 풀스텍(java, database, css,
							javascript)</p>
						<p class="off_nickname">유깹</p>
						<p class="off_price">10,000원</p>
						<p class="off_jjimreview_wrap">
							<img src="image/heart2.png" class="off_jjim">
						<div class="off_jjimcount">5.0</div>
						<div class="off_review">리뷰</div>
						<div class="off_reviewcount">1,000+</div>
						</p>
					</div>

				</div>

				<div class="box-0d3">
					<div class="box-0-1d3">
						<a href="" class="imgbox"> <span style="position: absolute;">
								<img src="image/lesson5.jpg" alt="" class="off_imgs">
						</span> <span style="position: absolute; margin-left: 200px;"> <a
								href="javascript:;" class="icon heart"
								style="text-decoration: none; color: inherit; cursor: pointer;">
									<img src="image/heart1.png" alt="찜하기">
							</a>
						</span>
						</a>
					</div>

					<div class="box-0-2d3">
						<p class="off_area">강남구</p>
						<p class="off_title">그린컴퓨터아카데미 풀스텍(java, database, css,
							javascript)</p>
						<p class="off_nickname">유깹</p>
						<p class="off_price">10,000원</p>
						<p class="off_jjimreview_wrap">
							<img src="image/heart2.png" class="off_jjim">
						<div class="off_jjimcount">5.0</div>
						<div class="off_review">리뷰</div>
						<div class="off_reviewcount">1,000+</div>
						</p>
					</div>

				</div>

				<div class="box-0d3">
					<div class="box-0-1d3">
						<a href="" class="imgbox"> <span style="position: absolute;">
								<img src="image/lesson6.jpg" alt="" class="off_imgs">
						</span> <span style="position: absolute; margin-left: 200px;"> <a
								href="javascript:;" class="icon heart"
								style="text-decoration: none; color: inherit; cursor: pointer;">
									<img src="image/heart1.png" alt="찜하기">
							</a>
						</span>
						</a>
					</div>

					<div class="box-0-2d3">
						<p class="off_area">강남구</p>
						<p class="off_title">그린컴퓨터아카데미 풀스텍(java, database, css,
							javascript)</p>
						<p class="off_nickname">유깹</p>
						<p class="off_price">10,000원</p>
						<p class="off_jjimreview_wrap">
							<img src="image/heart2.png" class="off_jjim">
						<div class="off_jjimcount">5.0</div>
						<div class="off_review">리뷰</div>
						<div class="off_reviewcount">1,000+</div>
						</p>
					</div>

				</div>


			</div>
		</div>
		</div>
	</section>


	<!--장소추천-->
	<div style="height: 50px;"></div>
	<section class="janso">

		<div class="janso_box">
			<div style="float: left">
				<span
					style="color: #8A2BE2; font-size: 20pt; position: relative; top: 10px; left: 50px; font-weight: bold;">위클리
					오늘의 장소 추천</span>
			</div>
			<div style="text-align: right;">
				<button class="custom-btn btn-15"
					onclick="location.href='janso_main.jsp' "
					style="background-color: #D1B2FF; border-radius: 5px; position: relative; top: 30px; right: 60px; font-size: 15px; font-weight: bold; padding: 5px 10px;">전체보기</button>
			</div>
		</div>

		<div class="link-boxd2">

			<div class="box-controll2">

				<div class="box-0d2" style="margin-left: 15px;">

					<div class="box-0-1d2">
						<a href="../html/heder.html"
							style="text-decoration: none; box-sizing: border-box;"> <span
							style="position: absolute;"> <img
								src="data:image/jpeg;base64,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"
								id="tab-1" alt="" class="janso_img">
						</span> <span style="position: absolute; margin-left: 200px;"> <a
								href="javascript:;" class="icon heart"
								style="text-decoration: none; color: inherit; cursor: pointer;">
									<img src="image/heart1.png" alt="찜하기">
							</a>
						</span>
						</a>
					</div>

					<a href="../html/heder.html"
						style="text-decoration: none; box-sizing: border-box;">
						<div class="box-0-2d2">
							<div style="padding-left: 5px; padding-top: 6px;">
								<strong style="font-size: 18px; padding-top: 10px;">00스터디룸</strong>
								<span style="font-size: 12px; padding-top: 10px;">(최소인원
									1명/ </span> <span style="font-size: 12px; padding-top: 10px;">최대인원
									8명) </span> <span style="position: absolute; z-index: 9"> <a
									href="javascript:;" class="icon heart"
									style="text-decoration: none; color: inherit; cursor: pointer;">
										<img src="image/heart1.png" alt="찜하기" style="">
								</a>
								</span>

							</div>

							<div class="" style="padding-left: 5px; padding-top: 10px;">
								<span style="float: left;">지역:</span>
								<div>00시 00동</div>
							</div>

							<div class="box-0-2_box">
								<div style="float: left;">
									<strong>8,000</strong> <span>원/시간</span>
								</div>
								<div style="float: right;">
									<strong>평점:</strong> <span>★★★★☆ 4/5</span>
								</div>
							</div>
						</div>
					</a>

				</div>

				<div class="box-0d2">

					<div class="box-0-1d2">
						<a href="../html/heder.html"
							style="text-decoration: none; box-sizing: border-box;"> <span
							style="position: absolute;"> <img
								src="data:image/jpeg;base64,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"
								id="tab-2" alt="" class="janso_img">
						</span> <span style="position: absolute; margin-left: 200px;"> <a
								href="javascript:;" class="icon heart"
								style="text-decoration: none; color: inherit; cursor: pointer;">
									<img src="image/heart1.png" alt="찜하기">
							</a>
						</span>
						</a>
					</div>

					<a href="../html/heder.html"
						style="text-decoration: none; box-sizing: border-box;">
						<div class="box-0-2d2">
							<div style="padding-left: 5px; padding-top: 6px;">
								<strong style="font-size: 18px; padding-top: 10px;">00스터디룸</strong>
								<span style="font-size: 12px; padding-top: 10px;">(최소인원
									1명/ </span> <span style="font-size: 12px; padding-top: 10px;">최대인원
									8명) </span> <span style="position: absolute; z-index: 9"> <a
									href="javascript:;" class="icon heart"
									style="text-decoration: none; color: inherit; cursor: pointer;">
										<img src="image/heart1.png" alt="찜하기" style="">
								</a>
								</span>

							</div>

							<div class="" style="padding-left: 5px; padding-top: 10px;">
								<span style="float: left;">지역:</span>
								<div>00시 00동</div>
							</div>

							<div class="box-0-2_box">
								<div style="float: left;">
									<strong>8,000</strong> <span>원/시간</span>
								</div>
								<div style="float: right;">
									<strong>평점:</strong> <span>★★★★☆ 4/5</span>
								</div>
							</div>
						</div>
					</a>

				</div>

				<div class="box-0d2">

					<div class="box-0-1d2">
						<a href="../html/heder.html"
							style="text-decoration: none; box-sizing: border-box;"> <span
							style="position: absolute;"> <img
								src="data:image/jpeg;base64,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"
								id="tab-3" alt="" class="janso_img">
						</span> <span style="position: absolute; margin-left: 200px;"> <a
								href="javascript:;" class="icon heart"
								style="text-decoration: none; color: inherit; cursor: pointer;">
									<img src="image/heart1.png" alt="찜하기">
							</a>
						</span>
						</a>
					</div>

					<a href="../html/heder.html"
						style="text-decoration: none; box-sizing: border-box;">
						<div class="box-0-2d2">
							<div style="padding-left: 5px; padding-top: 6px;">
								<strong style="font-size: 18px; padding-top: 10px;">00스터디룸</strong>
								<span style="font-size: 12px; padding-top: 10px;">(최소인원
									1명/ </span> <span style="font-size: 12px; padding-top: 10px;">최대인원
									8명) </span> <span style="position: absolute; z-index: 9"> <a
									href="javascript:;" class="icon heart"
									style="text-decoration: none; color: inherit; cursor: pointer;">
										<img src="image/heart1.png" alt="찜하기" style="">
								</a>
								</span>

							</div>

							<div class="" style="padding-left: 5px; padding-top: 10px;">
								<span style="float: left;">지역:</span>
								<div>00시 00동</div>
							</div>

							<div class="box-0-2_box">
								<div style="float: left;">
									<strong>8,000</strong> <span>원/시간</span>
								</div>
								<div style="float: right;">
									<strong>평점:</strong> <span>★★★★☆ 4/5</span>
								</div>
							</div>
						</div>
					</a>

				</div>





				<div class="box-0d2">
					<div class="box-0-1d2">
						<a href="../html/heder.html"
							style="text-decoration: none; box-sizing: border-box;"> <span
							style="position: absolute;"> <img
								src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh8GOP5muHYDSNl1Labrcriqk0QEBqAi_6LQ&usqp=CAU"
								id="tab-4" alt="" class="janso_img">
						</span> <span style="position: absolute; margin-left: 200px;"> <a
								href="javascript:;" class="icon heart"
								style="text-decoration: none; color: inherit; cursor: pointer;">
									<img src="image/heart1.png" alt="찜하기">
							</a>
						</span>
						</a>
					</div>

					<a href="../html/heder.html"
						style="text-decoration: none; box-sizing: border-box;">
						<div class="box-0-2d2">
							<div style="padding-left: 5px; padding-top: 6px;">
								<strong style="font-size: 18px; padding-top: 10px;">00스터디룸</strong>
								<span style="font-size: 12px; padding-top: 10px;">(최소인원
									1명/ </span> <span style="font-size: 12px; padding-top: 10px;">최대인원
									8명) </span> <span style="position: absolute; z-index: 9"> <a
									href="javascript:;" class="icon heart"
									style="text-decoration: none; color: inherit; cursor: pointer;">
										<img src="image/heart1.png" alt="찜하기" style="">
								</a>
								</span>

							</div>

							<div class="" style="padding-left: 5px; padding-top: 10px;">
								<span style="float: left;">지역:</span>
								<div>00시 00동</div>
							</div>

							<div class="box-0-2_box">
								<div style="float: left;">
									<strong>8,000</strong> <span>원/시간</span>
								</div>
								<div style="float: right;">
									<strong>평점:</strong> <span>★★★★☆ 4/5</span>
								</div>
							</div>
						</div>
					</a>

				</div>



			</div>
		</div>
		</div>

	</section>


	<%@include file="./footer.jsp"%>



</body>
<script type="text/javascript">
	$(function() {
		var $likeBtn = $('.icon.heart');

		$likeBtn.click(function() {
			$likeBtn.toggleClass('active');

			if ($likeBtn.hasClass('active')) {
				$(this).find('img').attr({
					'src' : 'image/heart2.png',
					alt : '찜하기 완료'
				});
			} else {
				$(this).find('i').removeClass('fas').addClass('far')
				$(this).find('img').attr({
					'src' : 'image/heart1.png',
					alt : "찜하기"
				});
			}
		})
	});

	$(function() {
		//  이미지 클릭시 해당 이미지 모달
		$(".imgC").click(function() {
			$(".modal").show();
			// 해당 이미지 가겨오기
			var imgSrc = $(this).children("img").attr("src");
			var imgAlt = $(this).children("img").attr("alt");
			$(".modalBox img").attr("src", imgSrc);
			$(".modalBox img").attr("alt", imgAlt);

			// 해당 이미지 텍스트 가져오기
			// var imgTit =  $(this).children("p").text();
			// $(".modalBox p").text(imgTit);

			// 해당 이미지에 alt값을 가져와 제목으로
			//$(".modalBox p").text(imgAlt);
		});

		//.modal안에 button을 클릭하면 .modal닫기
		$(".modal button").click(function() {
			$(".modal").hide();
		});

		//.modal밖에 클릭시 닫힘
		$(".modal").click(function(e) {
			if (e.target.className != "modal") {
				return false;
			} else {
				$(".modal").hide();
			}
		});
	});

	$(function() {
		for (let i = 1; i <= 4; i++) {

			$("#tab-" + i).mouseover(function() {

				var a = $(this).closest('span').attr('id');
				console.log(a);

				$(this).css("scale", "calc(1.1)")
				$(this).css("transition", "all ease 1s")
				$(this).css("transform", "translate(0px, -3px)")

			});
			$("#tab-" + i).mouseleave(function() {

				$(this).css("scale", "calc(1)", "z-index", "1")
				$(this).css("transform", "translate(0px, 0px)")

			});

		}
		for (let i = 1; i <= 4; i++) {

			$("#talent-" + i).mouseover(function() {

				var a = $(this).closest('span').attr('id');
				console.log(a);

				$(this).css("scale", "calc(1.1)")
				$(this).css("transition", "all ease 1s")
				$(this).css("transform", "translate(0px, -3px)")

			});
			$("#talent-" + i).mouseleave(function() {

				$(this).css("scale", "calc(1)", "z-index", "1")
				$(this).css("transform", "translate(0px, 0px)")

			});

		}

	});
</script>


</html>