<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/jspindexpage.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/indexpage.js"></script>
	<title>런업 : 재능</title>
</head>
<body>
	<form>
	<div id="full">
		<jsp:include page="header.jsp"/>
		<div id="lo2">
			<div class="slider-1">
			    <div class="slides">
			        <div class="active"><a href="#s3" onclick="scrollToTarget('#s3')"><img src="image/talentimage/hothae.jpg"></a></div>
			        <div><a href="#new" onclick="scrollToTarget('#new')"><img src="image/talentimage/banner.jpg"></a></div>
			    </div>
			    <div class="page-btns">
			        <div class="active"></div>
			        <div></div>
			    </div>
			    <div class="side-btns">
			        <div>
			            <span><i class="fas fa-angle-left"></i></span>
			        </div>
			        <div>
			            <span><i class="fas fa-angle-right"></i></span>
			        </div>
			    </div>
			</div>
			<section id="s1">
				<div class="high">비즈니스</div>
				<nav>
					<ul>
						
						<li style="font-weight: bold;">디자인</li>
						<li>IT·프로그래밍</li>
						<li>영상·사진·음향</li>
						<li>마케팅</li>
						<li>번역·통역</li>
						<li>문서·글쓰기</li>
						<li>경영자문·운영지원</li>
						<li>주문제작</li>
						<li>세무·법무·노무</li>
					</ul>
				</nav>
			</section>
			<section id="s2">
				<div id="space">홈 > 비즈니스 > 디자인</div>
				<div id="space1">x개의 서비스</div>
				<div id="space2">
					<article>
						<div><img src="image/talentimage/1.jpg" id="talent-1" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/2.jpg" id="talent-2" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/3.jpg" id="talent-3" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/4.jpg" id="talent-4" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>

					<article>
						<div><img src="image/talentimage/5.jpg" id="talent-5" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/6.jpg" id="talent-6" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/7.jpg" id="talent-7" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/8.jpg" id="talent-8" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>

					<article>
						<div><img src="image/talentimage/9.jpg" id="talent-9" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/10.jpg" id="talent-10" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/11.jpg" id="talent-11" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/12.jpg" id="talent-12" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>

					<article>
						<div><img src="image/talentimage/13.jpg" id="talent-13" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/14.jpg" id="talent-14" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/15.jpg" id="talent-15" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/16.jpg" id="talent-16" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>

					<article>
						<div><img src="image/talentimage/17.jpg" id="talent-17" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/18.jpg" id="talent-18" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/19.jpg" id="talent-19" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/20.jpg" id="talent-20" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>

					<article>
						<div><img src="image/talentimage/21.jpg" id="talent-21" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/22.jpg" id="talent-22" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article>
						<div><img src="image/talentimage/23.jpg" id="talent-23" class="cl">
							<div class="right_area"> 
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
					<article id="hot">
						<div><img src="image/talentimage/24.jpg" id="talent-24" class="cl">
							<div class="right_area">
	  						<a href="javascript:;" class="icon heart">
	     					<img src="image/heart1.png" alt="찜하기">
							</a></div>
						</div>
						<div class="nick">강아지전문가</div>
						<div class="title">우리 강아지의 행복지수 높이는 방법을 알려 알려 알려 알려 알려 알려드립니다.</div>
						<div class="money">500,000원~</div>
						<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
					</article>
				</div>
			</section>
			<section id="s3">
				<a><</a>
				<a><b>1</b></a>
				<a>2</a>
				<a style="padding-right: 20px;">3</a>
				···
				<a style="padding-left: 20px;">51</a>
				<a>></a>
			</section>
		</div>
	<div id="foottt">
		<div id="lo3">
		<div class="ftd" style="width: 220px; margin-left: 0px;">
			<h3>인기 서비스</h3>
			<h4><div><span>디자인</span>의</div>인기 서비스들을 만나보세요!</h4>
		</div>
		<div class="ftd com">
			<div><img src="image/talentimage/1.jpg" id="talent-25" class="cl">
				<div class="right_area">
  				<a href="javascript:;" class="icon heart">
     			<img src="image/heart1.png" alt="찜하기">
				</a></div>
			</div>
			<div class="nick">강아지전문가</div>
			<div class="title">우리 강아지의 행복지수 높이는 방법을 알려 알려 알려 알려 알려 알려드립니다.</div>
			<div class="money">500,000원~</div>
			<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
		</div>
		<div class="ftd com">
			<div><img src="image/talentimage/2.jpg" id="talent-26" class="cl">
				<div class="right_area">
  				<a href="javascript:;" class="icon heart">
     			<img src="image/heart1.png" alt="찜하기">
				</a></div>
			</div>
			<div class="nick">강아지전문가</div>
			<div class="title">우리 강아지의 행복지수 높이는 방법을 알려 알려 알려 알려 알려 알려드립니다.</div>
			<div class="money">500,000원~</div>
			<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
		</div>
		<div class="ftd com">
			<div><img src="image/talentimage/3.jpg" id="talent-27" class="cl">
				<div class="right_area">
  				<a href="javascript:;" class="icon heart">
     			<img src="image/heart1.png" alt="찜하기">
				</a></div>
			</div>
			<div class="nick">강아지전문가</div>
			<div class="title">우리 강아지의 행복지수 높이는 방법을 알려 알려 알려 알려 알려 알려드립니다.</div>
			<div class="money">500,000원~</div>
			<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
		</div>
		<div class="ftd com">
			<div><img src="image/talentimage/4.jpg" id="talent-28" class="cl">
				<div class="right_area">
  				<a href="javascript:;" class="icon heart">
     			<img src="image/heart1.png" alt="찜하기">
				</a></div>
			</div>
			<div class="nick">강아지전문가</div>
			<div class="title">우리 강아지의 행복지수 높이는 방법을 알려 알려 알려 알려 알려 알려드립니다.</div>
			<div class="money">500,000원~</div>
			<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
		</div>
		</div>
		<div id="lo4">
		<div class="ftd" id="new" style="width: 220px; margin-left: 0px;">
			<h3>새로 등록된 서비스</h3>
			<h4><div><span>디자인</span>의</div>신규 서비스들을 만나보세요!</h4>
		</div>
		<div class="ftd com">
			<div><img src="image/talentimage/20.jpg" id="talent-29" class="cl">
				<div class="right_area">
  				<a href="javascript:;" class="icon heart">
     			<img src="image/heart1.png" alt="찜하기">
				</a></div>
			</div>
			<div class="nick">강아지전문가</div>
			<div class="title">우리 강아지의 행복지수 높이는 방법을 알려 알려 알려 알려 알려 알려드립니다.</div>
			<div class="money">500,000원~</div>
			<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
		</div>
		<div class="ftd com">
			<div><img src="image/talentimage/12.jpg" id="talent-30" class="cl">
				<div class="right_area">
  				<a href="javascript:;" class="icon heart">
     			<img src="image/heart1.png" alt="찜하기">
				</a></div>
			</div>
			<div class="nick">강아지전문가</div>
			<div class="title">우리 강아지의 행복지수 높이는 방법을 알려 알려 알려 알려 알려 알려드립니다.</div>
			<div class="money">500,000원~</div>
			<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
		</div>
		<div class="ftd com">
			<div><img src="image/talentimage/15.jpg" id="talent-31" class="cl">
				<div class="right_area">
  				<a href="javascript:;" class="icon heart">
     			<img src="image/heart1.png" alt="찜하기">
				</a></div>
			</div>
			<div class="nick">강아지전문가</div>
			<div class="title">우리 강아지의 행복지수 높이는 방법을 알려 알려 알려 알려 알려 알려드립니다.</div>
			<div class="money">500,000원~</div>
			<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
		</div>
		<div class="ftd com">
			<div><img src="image/talentimage/24.jpg" id="talent-32" class="cl">
				<div class="right_area">
  				<a href="javascript:;" class="icon heart">
     			<img src="image/heart1.png" alt="찜하기">
				</a></div>
			</div>
			<div class="nick">강아지전문가</div>
			<div class="title">우리 강아지의 행복지수 높이는 방법을 알려 알려 알려 알려 알려 알려드립니다.</div>
			<div class="money">500,000원~</div>
			<div class="review"><span class="star">★</span>4.9<span class="bordleft"></span><span>154개의 평가</span></div>
		</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
	</form>
</body>
</html>