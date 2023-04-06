<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
	<link href="css/talent_regipage.css" rel="stylesheet" type="text/css">

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	<script src="js/talent_regipage.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<title></title>

</head>
<script type="text/javascript">

</script>
<style type="text/css">
</style>

<body style="margin : 0; overflow-x: hidden;">
<jsp:include page="header.jsp"/>
	<form name="member" action="memberSuc.jsp" method="post">
	<div class="section_sec">
		<section>
			<div class="secwrap">
				<div class="leftsec">
					<ul>
						<a href="#title"><li>기본정보</li></a>
						<a href="#self"><li>가격설정</li></a>
						<a href="#self"><li>서비스설명</li></a>
						<a href="#self"><li>이미지</li></a>
					</ul>
				</div>
				<div class="rightsec">
					<div class="toptext"><span class="wid">제목</span><input type="text" name="servicetitle" placeholder="서비스를 잘 드러낼 수 있는 제목을 입력해주세요.(최대 30자)" maxlength="30"><div class="limit" style="margin-left:100px;" required><span id="title">0</span>/30</div></div>
					<div class="oplist"><span class="wid">카테고리</span>
						<select name="category">
							<option value="1">디자인</option>
							<option value="2">IT·프로그래밍</option>
							<option value="3">영상·사진·음향</option>
							<option value="4">마케팅</option>
							<option value="5">번역·통역</option>
							<option value="6">문서·글쓰기</option>
							<option value="7">경영자문·운영지원</option>
							<option value="8">주문제작</option>
							<option value="9">세무·법무·노무</option>
						</select>
					</div>
					<div class="oplist"><span class="wid">검색 키워드</span><input type="text" name="keyword" placeholder="키워드 입력(최대 5개)" maxlength="30"><div class="limit" style="margin-left: 40px; margin-right:15px;"><span id="key">0</span>/5</div><input type="button" value="추가" id="addbu1"></div>
					<div id="keywordlist"></div>
					
					<div class="oplist opop" style="display:none;"><span class="wid">맞춤옵션</span>
						<div class="optionbox">
							<div><span class="wid3">제목</span><input type="text" placeholder="제목을 입력해주세요." required></div>
							<div><span class="wid3">설명</span><input type="text" placeholder="설명을 입력해주세요." required></div>
							<div><span class="wid3">추가금액</span><input type="text" placeholder="최소 1,000" style="width:80px;" required>원 추가시</div>
							<div><span class="wid3">추가 작업일</span>
							<select style="width:10%; background-color: #fafafc;">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>일 추가
							</div>
						</div>
					</div>
					
					<div class="option"><input type="button" value="+ 맞춤옵션 추가"></div>
					
					
					<div class="oplist"><span class="wid2">서비스 설명</span><textarea placeholder="판매하는 서비스의 설명을 적어주세요." name="descript"></textarea><div class="calcultext">글자수 : &nbsp;<span id="descript">0</span></div></div>
					<div class="oplist"><span class="wid2">서비스 제공절차</span><textarea placeholder="판매하는 서비스의 서비스 제공절차를 적어주세요." name="service_text"></textarea><div class="calcultext">글자수 : &nbsp;<span id="service_text">0</span></div></div>
					<div class="oplist"><span class="wid2">수정 및 재진행 안내</span><textarea placeholder="판매하는 서비스의 수정 및 재진행 관련 내용을 적어주세요." name="recruit"></textarea><div class="calcultext">글자수 : &nbsp;<span id="recruit">0</span></div></div>
					<br>
					<div>메인이미지등록(필수)&nbsp;&nbsp;<span class="textadd">0</span>/1</div>
					<div>이미지</div><br>
					
					<div>상세이미지등록(선택)&nbsp;&nbsp;<span class="textadd">0</span>/9</div>
					<div>이미지</div><br>
					
					<div class="category">
						<div style="font-weight:bold;">카테고리 선택</div>
						<div style="margin-top:15px;">
							<select name="category1">
								<option value="">개발·데이터</option>
								<option value="">댄스·뮤직</option>
								<option value="">디자인·영상</option>
								<option value="">외국어</option>
								<option value="">재테크·투잡</option>
								<option value="">피트니스·스포츠</option>
								<option value="">뷰티·마인드·펫</option>
								<option value="">드로잉·사진·글</option>
								<option value="">요리·공예·취미</option>
							</select>	
							<select name="category2">
								<option value="">개발·데이터</option>
								<option value="">개발·데이터</option>
								<option value="">개발·데이터</option>
								<option value="">개발·데이터</option>
								<option value="">개발·데이터</option>
								<option value="">개발·데이터</option>
							</select>	
						</div>
					</div>

					<div class="joinmember">
						<div style="font-weight:bold;">참여인원</div>
						<div class="radio_wrap">
							<input type="radio" name="many" value="one" checked="checked"><label style="padding-left:10px;">1:1 클래스</label>
							<input type="radio" name="many" value="group" style="margin-left:50px;" ><label style="padding-left:10px;">그룹 클래스</label>
						</div>
					</div>

					<div class="classcount">
						<div style="font-weight:bold;">클래스 횟수</div>
						<div class="radio_wrap">
							<input type="radio" name="count" value="one" checked="checked"><label style="padding-left:10px;">원데이</label>
							<input type="radio" name="count" value="group" style="margin-left:50px;"><label style="padding-left:10px;">다회차</label>
							<select name="count" style="margin-left:30px;">
								<option value="">2회</option><option value="">3회</option><option value="">4회</option><option value="">5회</option>
								<option value="">6회</option><option value="">7회</option><option value="">8회</option><option value="">9회</option>
								<option value="">10회</option><option value="">11회</option><option value="">12회</option><option value="">13회</option>
								<option value="">14회</option><option value="">15회</option><option value="">16회</option><option value="">17회</option>
								<option value="">18회</option><option value="">19회</option><option value="">20회</option><option value="">21회</option>
								<option value="">22회</option><option value="">23회</option><option value="">24회</option><option value="">25회</option>
								<option value="">26회</option><option value="">27회</option><option value="">28회</option><option value="">29회</option>
								<option value="">30회</option>
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
							<input type="text" placeholder="어떤 강의를 가르쳐 주시나요?">
							<span>(0/30)</span>
						</div>
					</div>

					<div class="coverimage">
						<div style="font-weight:bold;">커버 이미지</div>
						<div class="bigsec">
							<input type="file" class="input_hide" accept=".gif, .jpg, .png">
						</div>
						<div class="smallsec">
							<div class="cover_list">
								<div class="small_list">
									<input type="file" class="input_hide" accept=".gif, .jpg, .png">
								</div>
								<div class="small_list">
									<input type="file" class="input_hide" accept=".gif, .jpg, .png">
								</div>
								<div class="small_list">
									<input type="file" class="input_hide" accept=".gif, .jpg, .png">
								</div>
								<div class="small_list">
									<input type="file" class="input_hide" accept=".gif, .jpg, .png">
								</div>
							</div>
						</div>
						
						<div class="imageview">
							<div class="imageview_title">커버 이미지가 <br>적용된 모습은 다음과 같아요.</div>
							<div class="imageview_image"></div>
							<div class="imageview_info">
								<p>제목입니다제목입니다제목입니다제목입니다제목입니다제목입니다</p>
								<p style="color:#747474">백엔드·닉네임</p>
							</div>
						</div>

						<div>
							<div class="coverimage_notice">이미지는 커버포함 최대 10장까지 등록됩니다.</div>
						</div>
					</div>

					<div class="sellernotice">
						<div style="font-weight:bold;">판매자 공지</div>
						<div class="sellernotice_text">
							<textarea maxlength="200" placeholder="클래스 전 숙지해야 할 사항을 적어주세요.&#13;&#10;스터디룸, 준비물 등 추가 비용이 있는 경우 반드시 적어주세요.&#13;&#10;(ex. 시간당 1,000원 ~ 1,500원 정도의 스터디룸 비용은 별도입니다.)"></textarea>
							<div>(0/200)</div>
						</div>
					</div>

					<div class="summary">
						<div style="font-weight:bold;">클래스 요약</div>
						<div class="summary_text">
							<textarea maxlength="200" placeholder="수업 목표(key lessons 결과물 중심 1~3가지 -최대3줄)&#13;&#10;*무엇을 배울 수 있나요, 무엇을 얻을 수 있나요&#13;&#10;&#13;&#10;해당 클래스의 차별점(1~3가지 -최대3줄)&#13;&#10;:해당 카테고리의 다른 클래스들과 어떻게 다른가요"></textarea>
							<div>(0/200)</div>
						</div>
					</div>

					<div class="target">
						<div style="font-weight:bold;">이런 분들이 들으면 좋아요.</div>
						<div class="target_text">
							<textarea maxlength="500" placeholder="추천 대상 / 비추천 대상&#13;&#10;*이런 문제나 고민이 있는 사람이 들으면 좋아요&#13;&#10;*이런 능력을 갖춰 이런 사람이 되고 싶은 사람이 들으면 좋아요."></textarea>
							<div>(0/500)</div>
						</div>
					</div>

					<div class="classintro">
						<div style="font-weight:bold;">어떤 클래스 인가요?</div>
						<div class="classintro_text">
							<textarea maxlength="500" placeholder="*전반적인 클래스를 소개해주세요"></textarea>
							<div>(0/500)</div>
						</div>
						<div class="classintro_image">
							<input type="file" class="input_hide" accept=".gif, .jpg, .png">
						</div>
					</div>

					<div class="guide">
						<div style="font-weight:bold;">유의사항</div>
						<div class="guide_text">
							<textarea maxlength="500" placeholder="준비물&#13;&#10;*클래스 진행에 필요한 준비사항들을 적어주세요&#13;&#10;&#13;&#10;유의사항&#13;&#10;*그외 기타 안내사항을 적어주세요"></textarea>
							<div>(0/500)</div>
						</div>
					</div>

					<div class="classprocess">
						<div style="font-weight:bold;">클래스는 이렇게 진행됩니다</div>
						<div class="classprocess_text">
							<textarea maxlength="2500" placeholder="#진행방식&#13;&#10;*클래스 형태와 내용은 어떤 식으로 진행되나요&#13;&#10;*자세한 클래스내용은 커리큘럽에 적어주세요 (중복 기재X)&#13;&#10;&#13;&#10;#프로젝트&#13;&#10;*클래스에서 함께 만들어보는 게 있나요&#13;&#10;(예: 영상편집 클래스 들으면서 바로 실습→3시간 클래스동안 약2~3분 가량의 Vlog를 만들 수 있어요)&#13;&#10;&#13;&#10;#프로젝트 성과(결과물)&#13;&#10;*과거 클래스에서 만든 결과물이 있다면 올려주세요(이미지)&#13;&#10;&#13;&#10;#지난 클래스들 성과&#13;&#10;*월별/기수별 수강생 수 등"></textarea>
							<div>(0/2500)</div>
						</div>
						<div class="classprocess_image">
							<input type="file" class="input_hide" accept=".gif, .jpg, .png">
						</div>
					</div>

					<div class="inputtag">
						<div style="font-weight:bold;">태그 입력</div>
						<div class="inputtagtext_wrap">
							<input type="text" placeholder="클래스 태그를 최대10개 입력해 주세요.">
						</div>
						<button type="button">추가</button>
						<ul class="taglist">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</div>



				</div>
			</div>	
		</section>
	</div>
	</form>
</body>
</html>