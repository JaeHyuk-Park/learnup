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

		<link href="css/off_seller_regipage.css" rel="stylesheet" type="text/css">
				
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script src="js/off_seller_regipage.js"></script> 
		
		<script>
	
		</script>
		
		<title></title>
	</head>
<<<<<<< HEAD
	<style type="text/css">
	</style>
	<body style="margin : 0; overflow-x: hidden;">
		<form name="main" action="off_seller_regipage.off" method="post" enctype="multipart/form-data">
		
			<jsp:include page = "header.jsp"/>
			
		<div class="section_sec">
		<section>
			<div class="secwrap">
				<div class="leftsec">
					<ul>
						<a href="off_seller_regipage.jsp"><li>판매자소개</li></a>
						<a href="off_class_regipage.jsp"><li>클래스소개</li></a>
=======
	 <%  String email_section = (String)session.getAttribute("Email");%>
	<style type="text/css">
	</style>
	<body style="margin : 0; overflow-x: hidden;">
		<form name="main" action="off_seller_regipage.off" method="post" enctype="multipart/form-data">
		<input type="hidden" name="email" value="<%=email_section%>">
		
			<jsp:include page = "header.jsp"/>
			
		<div class="section_sec">
		<section>
			<div class="secwrap">
				<div class="leftsec">
					<ul>
						<a href="offsellerregi.off"><li>판매자소개</li></a>
						<a href="offclassregi.off"><li>클래스소개</li></a>
>>>>>>> branch 'woo' of https://github.com/JaeHyuk-Park/learnup.git
					</ul>
				</div>
				<div class="rightsec">
					<div class="toptext">클래스를 등록하기 전에<br>판매자님에 대해 알려주세요.</div>
					<div style="margin-top: 10px; margin-bottom: 40px;">판매자로 등록하셔서 다양한 클래스를 열어보세요.</div>
					
					<div class="profile">
						<div style="font-weight:bold;">프로필 사진</div>
						<div class="profile_wrap">
							<div class="profile_img">
								<img src="image/profile1.jpg" id="picture_cover" alt="프로필이미지" name="offprofileimage">
								<input type="hidden" id="ProfileThumbnailUrl" value="//img.taling.me/Content/Images/placeholders/profile-default.thumb.jpg">
								<input type="file" id="profileimg" name="profileimg" accept=".jpg, .png">
							</div>
							<ul class="profile_example">
								<li>
									<img src="image/profile2.png">
								</li>
								<li>
									<img src="image/profile3.png">
								</li>
								<li>
									<img src="image/profile4.png">
								</li>
							</ul>		
						</div>
						<p class="profile_notice">얼굴이 나오지 않는 동물 / 캐릭터 / 단순 배경 사진은 승인이 어렵습니다. 판매자님의 사진으로 등록해 주세요.</p>
					</div>

					<div class="sellerintro">
						<div style="font-weight:bold;">판매자 소개</div>
						<div class="sellerintro_text">
							<textarea maxlength="500" onkeyup="countChars1(this)" placeholder="*판매자님의 이야기로 신뢰도를 높혀주세요.&#13;&#10;*재능과 관련된 경력은 간단하게, 경험담은 자세히 소개해주세요." name="offsellerintro" ></textarea>
							<div id="charCount1">(0/500)</div>
						</div>
					</div>			

					<div class="career">
						<div style="font-weight:bold;">이력(권장사항)</div>
						<div id="cert0" class="career_wrap">
							<div class="careerinput_area">
								<input type="text" placeholder="강의 관련된 이력을 입력해주세요." maxlength="40" onkeyup="countChars(this)" name="offhistory">
							</div>
							<div class="careerimg_area">
								<div class="careerimg">
									<img id="img_Cert0" class="preview" src="image/careerimg.png" alt="이미지 미리보기" name="offhistoryimage">
									<button type="button" class="btn_del dn" onclick="delete_img(this)"><span class="blind">삭제</span></button>
								</div>
								<input type="file" name="cert0" input-file="img_Cert0" accept=".jpg,.png,.gif,.bmp">
							</div>
						</div>

						<button type="button" class="career_btn" onclick="add_certificate()">+ 이력 추가</button>
					</div>

					<div class="mediarink">
						<div style="font-weight:bold;">소셜 미디어(권장사항, 링크는 https:// 로 시작해야 합니다)</div>
						<div class="mediarinktext_wrap sns_instagram">
							<input type="text" name="offinsta" placeholder="인스타그램">
						</div>
						<div class="mediarinktext_wrap sns_blog">
							<input type="text" name="offblog" placeholder="블로그(네이버, 브런치, 티스토리 등)">
						</div>
						<div class="mediarinktext_wrap sns_youtube">
							<input type="text" name="offyoutube" placeholder="유튜브">
						</div>
					</div>

					<div class="regibtn_sec">
						<div style="margin-right: 120px;">
							<button type="submit" value="" class="regibtn">등록</button>
							<button type="button" value="" class="regibtn">임시저장</button>
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