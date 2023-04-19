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

		<link href="css/off_class_regipage.css" rel="stylesheet" type="text/css">
				
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script src="js/off_class_regipage.js"></script> 
		
		<script>

		</script>
		
		<title></title>
	</head>
	<style type="text/css">
	</style>
	<body style="margin : 0; overflow-x: hidden;">
		<form name="main" >
		
			<jsp:include page = "header.jsp"/>
			
		<div class="section_sec">
		<section>
			<div class="secwrap">
				<div class="leftsec">
					<ul>
						<a href="off_seller_regipage.jsp"><li>판매자소개</li></a>
						<a href="off_class_regipage.jsp"><li>클래스소개</li></a>
					</ul>
				</div>
				<div class="rightsec">
					<div class="toptext">안녕하세요, 판매자님<br>어떤 유형의 클래스를 열고싶으신가요?</div>
					<div class="category">
						<div style="font-weight:bold;">카테고리 선택</div>
						<div style="margin-top:15px;">
							<select name="category1" id="category1">
								<option value="none">카테고리를 선택해주세요</option>
								<option value="디자인">디자인</option>
								<option value="IT·프로그래밍">IT·프로그래밍</option>
								<option value="영상·사진·음향">영상·사진·음향</option>
								<option value="마케팅">마케팅</option>
								<option value="번역·통역">번역·통역</option>
								<option value="문서·글쓰기">문서·글쓰기</option>
								<option value="경영자문·운영지원">경영자문·운영지원</option>
								<option value="주문제작">주문제작</option>
								<option value="세무·법인·노무">세무·법인·노무</option>
							</select>	
							<select name="category2" id="category2" disabled>
								<option value="none">첫번째 카테고리를 선택해주세요</option>
							</select>	
						</div>
					</div>

					<div class="joinmember">
						<div style="font-weight:bold;">참여인원</div>
						<div class="radio_wrap">
							<input type="radio" name="class_type" value="one" checked="checked"><label style="padding-left:10px;">1:1 클래스</label>
							<input type="radio" name="class_type" value="group" style="margin-left:50px;" ><label style="padding-left:10px;">그룹 클래스</label>
						</div>
					</div>

					<div class="classcount">
						<div style="font-weight:bold;">클래스 횟수</div>
						<div class="radio_wrap">
							<input type="radio" id="oneday" name="count_type" value="1" checked><label style="padding-left:10px;">원데이</label>
							<input type="radio" id="multiday" name="count_type" value="0" style="margin-left:85px;"><label style="padding-left:10px;">다회차</label>
							<select name="count_num" id="countselect" style="margin-left:30px;" disabled>
								<option value="none">횟수를 선택해주세요</option><option value="2">2회</option><option value="3">3회</option>
								<option value="4">4회</option><option value="5">5회</option><option value="6">6회</option><option value="7">7회</option>
								<option value="8">8회</option><option value="9">9회</option><option value="10">10회</option><option value="11">11회</option>
								<option value="12">12회</option><option value="13">13회</option><option value="14">14회</option><option value="15">15회</option><option value="16">16회</option><option value="17">17회</option><option value="18">18회</option><option value="19">19회</option><option value="20">20회</option><option value="21">21회</option><option value="22">22회</option><option value="23">23회</option><option value="24">24회</option><option value="25">25회</option><option value="26">26회</option><option value="27">27회</option><option value="28">28회</option><option value="29">29회</option><option value="30">30회</option><option value="31">31회</option>
							</select>
						</div>
						<div class="notice_box">
							다회차 클래스일 때 런업 수강생들은 보통 4~6회차 클래스를 선호합니다.<br>
							한 달 내에 끝낼 수 있도록 커리큘럼을 만들어주세요.
						</div>
					</div>

					<div class="classtitle">
						<div style="font-weight:bold;">클래스 제목</div>
						<div class="classtitletext_wrap">
							<input type="text" name="classTitle" placeholder="어떤 강의를 가르쳐 주시나요?" maxlength="30" onkeyup="countChars(this)">
							<span id="charCount">(0/30)</span>
						</div>
					</div>

					<div class="coverimage">
						<div style="font-weight:bold;">커버 이미지</div>
						<div class="bigsec">
							<p></p>
							<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage0" >
							<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
						</div>
						<div class="smallsec">
							<div class="cover_list">
								<div class="small_list">
									<p></p>
									<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage1" >
									<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
								</div>
								<div class="small_list">
									<p></p>
									<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage2" >
									<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
								</div>
								<div class="small_list">
									<p></p>
									<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage3" >
									<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
								</div>
								<div class="small_list">
									<p></p>
									<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage4" >
									<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
								</div>
							</div>
						</div>
						
						<div class="imageview">
							<div class="imageview_title">커버 이미지가 <br>적용된 모습은 다음과 같아요.</div>
							<div class="imageview_image"></div>
							<div class="imageview_info">
								<p class="class_title">클래스 제목</p>
								<span class="class_category">카테고리 · </span><span class="class_nickname">닉네임</span>
							</div>
						</div>

						<div>
							<div class="coverimage_notice">이미지는 커버포함 최대 5장까지 등록됩니다.</div>
						</div>
					</div>

					<div class="sellernotice">
						<div style="font-weight:bold;">판매자 공지</div>
						<div class="sellernotice_text">
							<textarea maxlength="200" onkeyup="sellernotice(this)" placeholder="클래스 전 숙지해야 할 사항을 적어주세요.&#13;&#10;스터디룸, 준비물 등 추가 비용이 있는 경우 반드시 적어주세요.&#13;&#10;(ex. 시간당 1,000원 ~ 1,500원 정도의 스터디룸 비용은 별도입니다.)"></textarea>
							<div id="sellernotice_count">(0/200)</div>
						</div>
					</div>

					<div class="summary">
						<div style="font-weight:bold;">클래스 요약</div>
						<div class="summary_text">
							<textarea maxlength="200" onkeyup="summary(this)" placeholder="수업 목표(key lessons 결과물 중심 1~3가지 -최대3줄)&#13;&#10;*무엇을 배울 수 있나요, 무엇을 얻을 수 있나요&#13;&#10;&#13;&#10;해당 클래스의 차별점(1~3가지 -최대3줄)&#13;&#10;:해당 카테고리의 다른 클래스들과 어떻게 다른가요"></textarea>
							<div id="summary_count">(0/200)</div>
						</div>
					</div>

					<div class="target">
						<div style="font-weight:bold;">이런 분들이 들으면 좋아요.</div>
						<div class="target_text">
							<textarea maxlength="500" onkeyup="targetting(this)" placeholder="추천 대상 / 비추천 대상&#13;&#10;*이런 문제나 고민이 있는 사람이 들으면 좋아요&#13;&#10;*이런 능력을 갖춰 이런 사람이 되고 싶은 사람이 들으면 좋아요."></textarea>
							<div id="targetting_count">(0/500)</div>
						</div>
					</div>

					<div class="classintro">
						<div style="font-weight:bold;">어떤 클래스 인가요?</div>
						<div class="classintro_text">
							<textarea maxlength="500" onkeyup="classintro(this)" placeholder="*전반적인 클래스를 소개해주세요"></textarea>
							<div id="classintro_count">(0/500)</div>
						</div>
						<div class="classintro_image">
							<p></p>
							<input type="file" id="classintro" class="input_hide" accept=".gif, .jpg, .png">
							<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
						</div>
					</div>

					<div class="guide">
						<div style="font-weight:bold;">유의사항</div>
						<div class="guide_text">
							<textarea maxlength="500" onkeyup="guide(this)" placeholder="준비물&#13;&#10;*클래스 진행에 필요한 준비사항들을 적어주세요&#13;&#10;&#13;&#10;유의사항&#13;&#10;*그외 기타 안내사항을 적어주세요"></textarea>
							<div id="guide_count">(0/500)</div>
						</div>
					</div>

					<div class="classprocess">
						<div style="font-weight:bold;">클래스는 이렇게 진행됩니다</div>
						<div class="classprocess_text">
							<textarea maxlength="2500" onkeyup="classprocess(this)" placeholder="#진행방식&#13;&#10;*클래스 형태와 내용은 어떤 식으로 진행되나요&#13;&#10;*자세한 클래스내용은 커리큘럽에 적어주세요 (중복 기재X)&#13;&#10;&#13;&#10;#프로젝트&#13;&#10;*클래스에서 함께 만들어보는 게 있나요&#13;&#10;(예: 영상편집 클래스 들으면서 바로 실습→3시간 클래스동안 약2~3분 가량의 Vlog를 만들 수 있어요)&#13;&#10;&#13;&#10;#프로젝트 성과(결과물)&#13;&#10;*과거 클래스에서 만든 결과물이 있다면 올려주세요(이미지)&#13;&#10;&#13;&#10;#지난 클래스들 성과&#13;&#10;*월별/기수별 수강생 수 등"></textarea>
							<div id="classprocess_count">(0/2500)</div>
						</div>
						<div class="classprocess_image">
							<p></p>
							<input type="file" id="classprocess" class="input_hide" accept=".gif, .jpg, .png">
							<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
						</div>
					</div>

					<div class="inputtag">
						<div style="font-weight:bold;">태그 입력</div>
						<div class="inputtagtext_wrap">
							<input type="text" placeholder="클래스 태그를 최대10개 입력해 주세요.">
						</div>
						<button type="button" id="addTagBtn">추가</button>
						<ul class="tag_list">	
						</ul>
					</div>

					<div class="vidioregi">
						<div style="font-weight:bold;">영상 등록</div>
						<div class="vidioregitext_wrap">
							<input type="text" placeholder="유튜브 영상 URL을 입력해주세요.">
						</div>
					</div>

					<div class="sellermessage">
						<div style="font-weight:bold;">판매자 승인 메세지</div>
						<div class="sellermessage_text">
							<textarea maxlength="500" onkeyup="sellermessage(this)" placeholder="구매자와 클래스 연결시에 메세지가 전달됩니다."></textarea>
							<div id="sellermessage_count">(0/500)</div>
						</div>
					</div>

					<div class="toptext">거의 다 왔어요<br>마지막으로 수강료를 입력해주세요.</div>
					<div style="margin-top: 10px; margin-bottom: 40px;">수강생이 지불하는 클래스 최종가격으로, VAT 10%가 포함된 가격입니다.</div>
					<div class="price_info">
						<div class="price_area">
							<div class="price_detail">
								<div class="price_title">시간당 가격</div>
								<input type="text" class="price_input" id="hourprice" maxlength="9" name="priceperhour">
								<span class="unit">원</span>
							</div>
							<span class="math_symbol">
								<img src="image/gob.png" alt="x">
							</span>
							<div class="price_detail">
								<div class="price_title">1회당 클래스 시간</div>
								<input type="text" class="price_input" id="classtime" name="timeperonce">
								<span class="unit">시간</span>
							</div>
							<span class="math_symbol">
								<img src="image/gob.png" alt="x">
							</span>
							<div class="price_detail">
								<div class="price_title">총 클래스 횟수</div>
								<input type="text" class="price_input" id="totalclasscount" disabled style="background-color:#EAEAEA;">
								<span class="unit">회</span>
							</div>
						</div>
						<div class="price_total">
							<h4 class="price_total_title">최종 수강료</h4>
							<input type="text" class="totalprice_input" id="totalprice" disabled>
							<span class="totalunit">원</span>
						</div>
					</div>

					<div class="toptext" style="margin-top: 20px;">최종 정산금 안내</div>
					<div style="margin-top: 10px; margin-bottom: 40px;">튜터님에게 정산되는 금액으로, 최종 수강료에서 세금과 공과 등, 중개 위탁수수료, <br>소득세 원천징수가 제외됩니다.</div>
					<div class="price_info" style="height: 250px;">
						<div class="price_area">
							<div class="noticeprice_detail">
								<div class="noticeprice_title">최종 수강료</div>
								<input type="text" id="totalprice2" class="noticeprice_input" maxlength="10" disabled>
								<span class="unit2">원</span>
							</div>
							<span class="math_symbol2">
								<img src="image/minus.png" alt="-">
							</span>
							<div class="noticeprice_detail">
								<div class="noticeprice_title">세금과 공과 등 10%</div>
								<input type="text" id="tax10" class="noticeprice_input" maxlength="10" disabled>
								<span class="unit2">원</span>
							</div>
							<span class="math_symbol2">
								<img src="image/minus.png" alt="-">
							</span>
							<div class="noticeprice_detail">
								<div class="noticeprice_title">중개 위탁수수료 10%</div>
								<input type="text" id="fee10" class="noticeprice_input" maxlength="10" disabled>
								<span class="unit2">원</span>
							</div>
							<span class="math_symbol2">
								<img src="image/minus.png" alt="-">
							</span>
							<div class="noticeprice_detail">
								<div class="noticeprice_title">소득세 원천징수 3.3%</div>
								<input type="text" id="fee33" class="noticeprice_input" maxlength="10" disabled>
								<span class="unit2">원</span>
							</div>
						</div>
						<div class="price_total">
							<h4 class="price_total_title" style="color:red">최종 정산금</h4>
							<input type="text" class="totalprice_input" id="grandtotalprice" name="grandtotalprice" disabled>
							<span class="totalunit">원</span>
						</div>
						<p class="taxnotice">
							소득세 원천징수는 정산 지급일 기준으로 정산 신청한 총 금액에 따라 3.3%가 제외될 수 있어 안내금액과 실제 지급 정산금의 차이가 있을 수 있습니다.
						</p>
					</div>
				
					<div class="regibtn_sec">
						<div style="margin-right: 120px;">
							<button type="button" value="" class="regibtn">등록</button>
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