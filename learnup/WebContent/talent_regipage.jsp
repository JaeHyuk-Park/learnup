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
	<form name="member" action="TalentInsert.learnup.com" method="post" enctype="multipart/form-data">
	<input type="hidden" name="email" value="<%= (String)session.getAttribute("Email")%>">
	<div class="section_sec">
		<section>
			<div class="secwrap">
				<div class="leftsec">
					<ul>
						<a href="#title"><li>1. 기본정보</li></a>
						<a href="#price"><li>2. 가격설정</li></a>
						<a href="#service"><li>3. 서비스설명</li></a>
						<a href="#self"><li>4. 이미지</li></a>
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
					
					<div class="wrapper">
						<span id="price">가격 정보</span>
					  <input type="checkbox" id="switch">
					  <label for="switch" class="switch_label">
					    <span class="onf_btn"></span>
					  </label>
					  <span style="margin-left: 5px; font-size: 13px; font-weight: 550;">패키지로 가격설정</span>
					</div>
					
					<div id="standard">STANDARD</div>
					<div class="oplist stand">
						<div class="optionbox" style="background-color:white;">
							<div><span class="wid4">제목</span><input type="text" name="vers_title" placeholder="제목을 입력해주세요." maxlength="20" style="background-color:white;" required ><div class="limit" style="margin-left:20px;" required><span id="standtitle">0</span>/20</div></div>
							<div><span class="wid4">설명</span><input type="text" name="vers_descript" placeholder="상세 설명을 입력해주세요." maxlength="60" style="background-color:white;" required><div class="limit" style="margin-left:20px;" required><span id="standdescript">0</span>/60</div></div>
							<div><span class="wid4">금액(VAT 포함)</span><input type="text" name="vers_price" placeholder="최소 5,000원 이상 금액을 입력해주세요." style="width:79%; background-color:white;" required>원</div>
							<div><span class="wid4">작업 기간</span>
							<select name="vers_date" style="width:81%;">
							<%for(int standday=1; standday<=30; standday++){
								%><option value="<%=standday%>"><%=standday %>일</option>
							<%}%>
							</select>
							</div>
							<div><span class="wid4">수정 횟수</span>
							<select name="recruit_num" style="width:81%;">
							<%for(int standrevi=1; standrevi<=15; standrevi++){
								%><option value="<%=standrevi%>"><%=standrevi %>회</option>
							<%}%>
							<option value="16">제한없음</option>
							</select>
							</div>
						</div>
					</div>

					<div id="version">STANDARD / DELUXE / PREMIUM</div>
					<div class="oplist ver">
						<div class="optionbox" style="background-color:white;">
							<div>
								<span class="wid4"></span>
								<span class="version123">STANDARD</span>
								<span class="version123">DELUXE</span>
								<span class="version123">PREMIUM</span>
							</div>
							<div>
								<span class="wid5">제목</span>
								<span class="version123"><input type="text" name="vers_title[]" placeholder="제목을 입력해주세요." style="background-color:white;" maxlength="20" ><br>
									<span class="versionlimittitle" id="versiontitle1">0</span>
									<span class="versionlimittitle">/20</span>
								</span>
								<span class="version123"><input type="text" name="vers_title[]" placeholder="제목을 입력해주세요." style="background-color:white;" maxlength="20" >
									<span class="versionlimittitle" id="versiontitle2">0</span>
									<span class="versionlimittitle">/20</span>
								</span>
								<span class="version123"><input type="text" name="vers_title[]" placeholder="제목을 입력해주세요." style="background-color:white;" maxlength="20" >
									<span class="versionlimittitle" id="versiontitle3">0</span>
									<span class="versionlimittitle">/20</span>
								</span>
							</div>
							<div>
								<span class="wid5" style="height:200px;">설명</span>
								<span class="version123" style="height:auto;"><textarea name="vers_descript[]" placeholder="상세 설명을 입력해주세요." maxlength="60" style="background-color:white;" ></textarea>
									<span class="versionlimitdescript" id="versiondescript1">0</span>
									<span class="versionlimitdescript">/60</span>
								</span>
								<span class="version123" style="height:auto;"><textarea name="vers_descript[]" placeholder="상세 설명을 입력해주세요." maxlength="60" style="background-color:white;" ></textarea>
									<span class="versionlimitdescript" id="versiondescript2">0</span>
									<span class="versionlimitdescript">/60</span>
								</span>
								<span class="version123" style="height:auto;"><textarea name="vers_descript[]" placeholder="상세 설명을 입력해주세요." maxlength="60" style="background-color:white;" ></textarea>
									<span class="versionlimitdescript" id="versiondescript3">0</span>
									<span class="versionlimitdescript">/60</span>
								</span>
							</div>
							<div>
								<span class="wid5">금액(VAT 포함)</span>
								<span class="version123" style="font-size: 13px; line-height: 30px;">
									<input type="text" name="vers_price[]" maxlength="9" placeholder="입력해주세요." style="width:100%; background-color:white;" >원
								</span>
								<span class="version123" style="font-size: 13px; line-height: 30px;">
									<input type="text" name="vers_price[]" maxlength="9" placeholder="입력해주세요." style="width:100%; background-color:white;" >원
								</span>
								<span class="version123" style="font-size: 13px; line-height: 30px;">
									<input type="text" name="vers_price[]" maxlength="9" placeholder="입력해주세요." style="width:100%; background-color:white;" >원
								</span>
							</div>
							<div>
								<span class="wid5">작업 기간</span>
								<span class="version123">
								<select style="width:100%;" name="vers_date[]">
								<%for(int standday=1; standday<=30; standday++){
									%><option value="<%=standday%>"><%=standday %>일</option>
								<%}%>
								</select>
								</span>
								<span class="version123">
								<select style="width:100%;" name="vers_date[]">
								<%for(int standday=1; standday<=30; standday++){
									%><option value="<%=standday%>"><%=standday %>일</option>
								<%}%>
								</select>
								</span>
								<span class="version123">
								<select style="width:100%;" name="vers_date[]">
								<%for(int standday=1; standday<=30; standday++){
									%><option value="<%=standday%>"><%=standday %>일</option>
								<%}%>
								</select>
								</span>
							</div>
							<div>
								<span class="wid5">수정 횟수</span>
								<span class="version123">
								<select style="width:100%;" name="recruit_num[]">
								<%for(int standrevi=1; standrevi<=15; standrevi++){
									%><option value="<%=standrevi%>"><%=standrevi %>회</option>
								<%}%>
								<option value="16">제한없음</option>
								</select>
								</span>
								<span class="version123">
								<select style="width:100%;" name="recruit_num[]">
								<%for(int standrevi=1; standrevi<=15; standrevi++){
									%><option value="<%=standrevi%>"><%=standrevi %>회</option>
								<%}%>
								<option value="16">제한없음</option>
								</select>
								</span>
								<span class="version123">
								<select style="width:100%;" name="recruit_num[]">
								<%for(int standrevi=1; standrevi<=15; standrevi++){
									%><option value="<%=standrevi%>"><%=standrevi %>회</option>
								<%}%>
								<option value="16">제한없음</option>
								</select>
								</span>
							</div>
						</div>
					</div>
					
					
					<div class="oplist opop" style="display:none;"><span class="wid">맞춤옵션</span>
						<div class="optionbox">
							<div><span class="wid3">제목</span><input type="text" placeholder="제목을 입력해주세요." name="op_title[]" maxlength="50"></div>
							<div><span class="wid3">설명</span><input type="text" placeholder="설명을 입력해주세요." name="op_descript[]" maxlength="100"></div>
							<div><span class="wid3">추가금액</span><input type="text" placeholder="최소 1,000" style="width:80px;" name="op_price[]">원 추가시</div>
							<div><span class="wid3">추가 작업일</span>
							<select style="width:10%; background-color: #fafafc;" name="op_date[]">
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
					
					
					<div class="oplist"><span class="wid2" id="service">서비스 설명</span><textarea placeholder="판매하는 서비스의 설명을 적어주세요." name="service_descript"></textarea><div class="calcultext">글자수 : &nbsp;<span id="descript">0</span></div></div>
					<div class="oplist"><span class="wid2">서비스 제공절차</span><textarea placeholder="판매하는 서비스의 서비스 제공절차를 적어주세요." name="service_text"></textarea><div class="calcultext">글자수 : &nbsp;<span id="service_text">0</span></div></div>
					<div class="oplist"><span class="wid2">수정 및 재진행 안내</span><textarea placeholder="판매하는 서비스의 수정 및 재진행 관련 내용을 적어주세요." name="recruit"></textarea><div class="calcultext">글자수 : &nbsp;<span id="recruit">0</span></div></div>
					
					<div class="oplist opop" style="display:none;"><span class="wid10">자주 묻는 질문</span>
						<div class="optionbox">
							<div><span class="wid3">질문</span><input type="text" placeholder="자주묻는 질문을 입력해주세요." name="qna_title[]"></div>
							<div>
								<span class="wid3" style="position: relative; top: -145px;">답변</span>
								<textarea id="answer" placeholder="답변을 입력해주세요." name="qna_answer[]"></textarea>
							</div>
						</div>
					</div>
					
					<div class="question"><input type="button" value="+ 자주 묻는 질문 추가"></div>
					<br>				
					
					<div>메인이미지등록(필수)&nbsp;&nbsp;<span class="textadd" id="main">0</span>/1</div>
					<div class="ImageUploadbox">
						<label>
						    <input type="file" class="imageUpload" name="image" accept="image/*" style="display:none">
						    <img class="preview" src="image/imageupload.png" alt="이미지 미리보기">
					 	</label>
					 	<div id="imagetext">652 x 488px <br> (4:3 비율)</div>
					 	<button class="deleteBtn" style="display:none"></button>
					</div><br><br>
					
					<div>상세이미지등록(선택)&nbsp;&nbsp;<span class="textadd" id="detail">0</span>/9</div>
					<div class="ImageUploadboxdetail">
					  <label>
					    <input type="file" class="imageUpload" name="image[]" accept="image/*" style="display:none">
					    <img class="preview" src="image/imageupload.png" alt="이미지 미리보기">
					  </label>
					  <button class="deleteBtn" style="display:none"></button>
					</div>
					<br>

					

					
					



				</div>
			</div>	
		</section>
	</div>
	<footer class="footsection">
		<section class="handlebuttonsection">
			<input type="button" class="lastbutton" value = "메인으로">
			<input type="submit" class="lastbutton" value = "제출하기" style="margin-left:15px;">
		</section>
	</footer>
	</form>
</body>
</html>