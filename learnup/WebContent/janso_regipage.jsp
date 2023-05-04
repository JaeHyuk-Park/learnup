<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="dao.*" %>
<%@ page import="vo.*" %>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>공지사항</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/janso_regipage.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="js/janso_regipage.js"></script>
</head>


	<title></title>

</head>
 <%  String email_section = (String)session.getAttribute("Email");%>

 <%@include file ="./header.jsp" %>
 


	<div class="section_sec">
		<section>
			<div class="secwrap">
				<div class="leftsec">
						<ul class="tabs">
							<li class="tab-link current" data-tab="tab-1" id="asd"><span class="step">step1. </span>기본정보</li>
							<li class="tab-link" data-tab="tab-2" id="bsd"><span class="step">step2. </span>가격설정</li>
							<li class="tab-link" data-tab="tab-3" id="csd"><span class="step">step3. </span>이미지</li>
						</ul>
				</div>
<form name="member" action="janso_regipageinsert.learnup.com" method="post" enctype="multipart/form-data">
<input type="hidden" name="email">
			<div class="rightsec">
				<div id="tab-1" class="tab-content current">
					<div class="toptext">강의실을 소개해주세요.</div>
					<table  style="width: 100%;" border="0">
						<colgroup>
							<col width="100%">
						</colgroup>
						<tbody>

							<tr><td colspan="1" class="eachtitle" id ="eachtt">강의실 제목<td></tr>
							<tr>
								<td colspan="1"><input type="text" name="roomtitle"   class="roomname" placeholder="소개하실 강의실 제목을 입력해주세요.(8자)" maxlength="8" size=50  ></td>
														
							</tr>
							<tr>
								<td><font id = "roomtitle_check" size = "2" ></font> </td>
							</tr>

							<tr><td colspan="1" class="eachtitle" id ="eachtitle1">공간 유형<td></tr>
							<tr>
								<td colspan="1">
									<div class="select-box">
										<label for="select-box0" class="label select-box1"><span class="label-desc">공간유형 선택하세요</span> </label>
										<select id="select-box0" name= "select-box0" class="select">
											<option value="" class="op" hidden></option>
											<option value="강의실" class="op">강의실</option>
											<option value="스터디룸" class="op">스터디룸</option>
											<option value="촬영스튜디오" class="op">촬영스튜디오</option>
											<option value="보컬연습실" class="op">보컬연습실</option>
											<option value="악기연습실" class="op">악기연습실</option>
											<option value="공유주방" class="op">공유주방</option>
											<option value="파티룸" class="op">파티룸</option>
											<option value="운동시설" class="op">운동시설</option>	
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><font id = "select-box0_check" size = "2" ></font> </td>
							</tr>

							<tr><td colspan="1" class="eachtitle" id ="eachtitle2">공간 면적<td></tr>
							<tr>
								<td colspan="1"><input type=text name=spacearea class="spacearea" placeholder="공간 면적 입력." size=50  required></td>
							</tr>
							<tr>
								<td><font id = "spacearea_check" size = "2" ></font> </td>
							</tr>
							

							<tr><td colspan="1" class="eachtitle" id ="eachtitle3">기본 수용인원<td></tr>
							<tr>
								<td colspan="1">
									<div class="select-box">
										<label for="select-box1" class="label select-box1"><span class="label-desc">기본 수용인원을 선택하세요</span> </label>
										<select id="select-box1" name= "select-box1" class="select">
											<option value="" class="op" hidden></option>
											<option value="1" class="op">1명</option>
											<option value="2" class="op">2명</option>
											<option value="3" class="op">3명</option>
											<option value="4" class="op">4명</option>
											<option value="5" class="op">5명</option>
											<option value="6" class="op">6명</option>
											<option value="7" class="op">7명</option>
											<option value="8" class="op">8명</option>
											<option value="9" class="op">9명</option>
											<option value="10" class="op">10명</option>
											<option value="11" class="op">11명</option>
											<option value="12" class="op">12명</option>
											<option value="13" class="op">13명</option>
											<option value="14" class="op">14명</option>
											<option value="15" class="op">15명</option>
											<option value="16" class="op">16명</option>
											<option value="17" class="op">17명</option>
											<option value="18" class="op">18명</option>
											<option value="19" class="op">19명</option>
											<option value="20" class="op">20명</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><font id = "select-box1_check" size = "2" ></font> </td>
							</tr>
							

							<tr><td colspan="1" class="eachtitle" id ="eachtitle4">최대 수용인원<td></tr>
							<tr >
								<td colspan="1">
									<div class="select-box">
									<label for="select-box2" class="label select-box1"><span class="label-desc">최대 수용인원을 선택하세요</span> </label>
									<select id="select-box2" name= "select-box2" class="select">
										<option value="" class="op" hidden></option>
										<option value="1" class="op">1명</option>
										<option value="2" class="op">2명</option>
										<option value="3" class="op">3명</option>
										<option value="4" class="op">4명</option>
										<option value="5" class="op">5명</option>
										<option value="6" class="op">6명</option>
										<option value="7" class="op">7명</option>
										<option value="8" class="op">8명</option>
										<option value="9" class="op">9명</option>
										<option value="10" class="op">10명</option>
										<option value="11" class="op">11명</option>
										<option value="12" class="op">12명</option>
										<option value="13" class="op">13명</option>
										<option value="14" class="op">14명</option>
										<option value="15" class="op">15명</option>
										<option value="16" class="op">16명</option>
										<option value="17" class="op">17명</option>
										<option value="18" class="op">18명</option>
										<option value="19" class="op">19명</option>
										<option value="20" class="op">20명</option>
									</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><font id = "select-box2_check" size = "2" ></font> </td>
							</tr>

							<tr><td colspan="1" class="eachtitle" id ="eachtitle5">시설물 선택<td></tr>
							<tr >
								<td colspan="1">
							<dl class="dropdown">
								<dt>
									<a style="width: 100%; padding: 0; border-radius:5px;" id="dropatag">
									
									<label for="dropatag" class="labeldragg"><span class="hida">사용가능한 시설물을 선택하세요(선택) <span id="ttt">▼</span></span>  </span>  </label>
									<p class="multiSel"></p>  
									</a>
									</dt>
								<dd>
									<div class="mutliSelect">
									<ul>
										<li>
										<input type="checkbox" id="group-0" name= "group" value="넷플릭스">
										<label for="group-0" class="grouplist_id" style="width: 100%">넷플릭스</label>
										</li>
										<li>
										<input type="checkbox" id="group-1" name= "group" value="주류반입가능">
										<label for="group-1" class="grouplist_id">주류반입가능</label>
										</li>
										<li>
										<input type="checkbox" id="group-2" name= "group" value="의자 테이블">
										<label for="group-2" class="grouplist_id">의자 테이블</label>
										</li>
										<li>
										<input type="checkbox" id="group-3" name= "group" value="컴퓨터">
										<label for="group-3" class="grouplist_id">컴퓨터</label>
										</li>
										<li>
										<input type="checkbox" id="group-4" name= "group" value="전기">
										<label for="group-4" class="grouplist_id">전기</label>
										</li>
										<li>
										<input type="checkbox" id="group-5"  name= "group" value="취사시설">
										<label for="group-5" class="grouplist_id">취사시설</label>
										</li>
										<li>
										<input type="checkbox" id="group-6" name= "group"  value="프린트">
										<label for="group-6" class="grouplist_id">프린트</label>
										</li>
										<li>
										<input type="checkbox" id="group-7" name= "group" value="화이트보드">
										<label for="group-7" class="grouplist_id">화이트보드</label>
										</li>
										<li>
										<input type="checkbox" id="group-8"  name= "group" value="내부화장실">
										<label for="group-8" class="grouplist_id">내부화장실</label>
										</li>
										<li>
										<input type="checkbox" id="group-9" name= "group"  value="금연">
										<label for="group-9" class="grouplist_id">금연</label>
										</li>
										<li>
										<input type="checkbox" id="group-10" name= "group"  value="주차">
										<label for="group-10" class="grouplist_id">주차</label>
										</li>
										<li>
										<input type="checkbox" id="group-11" name= "group"  value="인터넷 와이파이">
										<label for="group-10" class="grouplist_id">인터넷 와이파이</label>
										</li>
									</ul>
									</div>
								</dd>
							</dl>
						</td>
							</tr>
							<tr>
								<td><font id = "select-box3_check" size = "2" ></font> </td>
							</tr>

							<tr><td colspan="1" class="eachtitle" id ="eachtitle6">주소지 등록<td></tr>
							<tr>
								<td>
									<input type="text" id="sample6_postcode" maxlength="0" placeholder="우편번호" name="area1" size="30" class="postcode"><span><input type="button" onclick="sample6_execDaumPostcode()" value="주소 찾기" class="searchbtn"></span>
									<div><input type="text" maxlength="0" id="sample6_address" placeholder="주소" name="area2" size="49" class="address"></div>
									<div><input type="text" id="sample6_detailAddress" placeholder="상세주소를 입력해주세요." name="address2" size="49" class="detailaddress"></div>
								    <input type="hidden" id="sample6_extraAddress" placeholder="참고항목" >
								</td>
							</tr>
							<tr>
								<td><font id = "address_check" size = "2" ></font> </td>
							</tr>

							<tr><td colspan="1" class="eachtitle" id ="eachtitle7">오픈&마감 시간<td></tr>
							<tr>
								<td colspan="1">
									<div class="select-box">
									<label for="select-box4" class="label select-box1"><span class="label-desc">오픈 시간 설정</span> </label>
									<select id="select-box4" name="select-box4" class="select">
									<option value="" class="op" hidden></option>
										<option value="1" class="op">1시</option>
										<option value="2" class="op">2시</option>
										<option value="3" class="op">3시</option>
										<option value="4" class="op">4시</option>
										<option value="5" class="op">5시</option>
										<option value="6" class="op">6시</option>
										<option value="7" class="op">7시</option>	
										<option value="8" class="op">8시</option>
										<option value="9" class="op">9시</option>
										<option value="10" class="op">10시</option>
										<option value="11" class="op">11시</option>
										<option value="12" class="op">12시</option>
										<option value="13" class="op">13시</option>
										<option value="14" class="op">14시</option>
										<option value="15" class="op">15시</option>
										<option value="16" class="op">16시</option>	
										<option value="17" class="op">17시</option>
										<option value="18" class="op">18시</option>
										<option value="19" class="op">19시</option>
										<option value="20" class="op">20시</option>
										<option value="21" class="op">21시</option>
										<option value="22" class="op">22시</option>
										<option value="23" class="op">23시</option>		
										<option value="24" class="op">24시</option>												
									</select>
									</div>

									<div class="select-box">
										<label for="select-box5" class="label select-box1"><span class="label-desc">마감 시간 설정</span> </label>
										<select id="select-box5" name="select-box5" class="select">
										<option value="" class="op" hidden></option>
											<option value="1" class="op">1시</option>
											<option value="2" class="op">2시</option>
											<option value="3" class="op">3시</option>
											<option value="4" class="op">4시</option>
											<option value="5" class="op">5시</option>
											<option value="6" class="op">6시</option>
											<option value="7" class="op">7시</option>	
											<option value="8" class="op">8시</option>
											<option value="9" class="op">9시</option>
											<option value="10" class="op">10시</option>
											<option value="11" class="op">11시</option>
											<option value="12" class="op">12시</option>
											<option value="13" class="op">13시</option>
											<option value="14" class="op">14시</option>
											<option value="15" class="op">15시</option>
											<option value="16" class="op">16시</option>	
											<option value="17" class="op">17시</option>
											<option value="18" class="op">18시</option>
											<option value="19" class="op">19시</option>
											<option value="20" class="op">20시</option>
											<option value="21" class="op">21시</option>
											<option value="22" class="op">22시</option>
											<option value="23" class="op">23시</option>		
											<option value="24" class="op">24시</option>													
										</select>
									</div>
							  </td>
							</tr>
							<tr>
								<td><font id = "select-box45_check" size = "2" ></font> </td>
							</tr>
							

							<tr><td colspan="1" class="eachtitle" id ="eachtitle8">예약시간 설정<td></tr>
							<tr>
								<td colspan="1">
									<div class="select-box">
										<label for="select-box6" class="label select-box1"><span class="label-desc">한사람당 최대 예약시간 설정</span> </label>
										<select id="select-box6" name="select-box6" class="select">
											<option value="" class="op" hidden></option>
											<option value="1" class="op">1시간</option>
											<option value="2" class="op">2시간</option>
											<option value="3" class="op">3시간</option>
											<option value="4" class="op">4시간</option>
											<option value="5" class="op">5시간</option>
											<option value="6" class="op">6시간</option>
											<option value="7" class="op">7시간</option>											
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><font id = "select-box6_check" size = "2" ></font> </td>
							</tr>
							<!-- 요일선택 -->
							
								<tr><td colspan="1" class="eachtitle" id ="eachtitle11">휴무일 선택<td></tr>
							<tr >
								<td colspan="1">
							<dl class="dropdown2">
								<dt>
									<a style="width: 100%; padding: 0; border-radius:5px;" id="dropatag2">
									
									<label for="dropatag2" class="labeldragg2"><span class="hida2">휴일을 선택하세요 <span id="ttt2">▼</span></span>  </span>  </label>
									<p class="multiSel2"></p>  
									</a>
									</dt>
								<dd>
									<div class="mutliSelect2">
									<ul>
										<li>
										<input type="hidden" id="group-02" name= "group2" value="휴일없음">
										<input type="checkbox" id="group-02" name= "group2" value="월">
										<label for="group-0" class="grouplist_id" style="width: 100%">월</label>
										</li>
										<li>
										<input type="checkbox" id="group-12" name= "group2" value="화">
										<label for="group-1" class="grouplist_id">화</label>
										</li>
										<li>
										<input type="checkbox" id="group-22" name= "group2" value="수">
										<label for="group-2" class="grouplist_id">수</label>
										</li>
										<li>
										<input type="checkbox" id="group-32" name= "group2" value="목">
										<label for="group-3" class="grouplist_id">목</label>
										</li>
										<li>
										<input type="checkbox" id="group-42" name= "group2" value="금">
										<label for="group-4" class="grouplist_id">금</label>
										</li>
										<li>
										<input type="checkbox" id="group-52"  name= "group2" value="토">
										<label for="group-5" class="grouplist_id">토</label>
										</li>
										<li>
										<input type="checkbox" id="group-62" name= "group2"  value="일">
										<label for="group-6" class="grouplist_id">일</label>
										</li>
									
									</ul>
									</div>
								</dd>
							</dl>
						</td>
							</tr>

							<tr><td colspan="1" class="eachtitle" id ="eachtitle9">공간소개<td></tr>
							<tr class="janso_intro">
								<td colspan="1"><textarea id="writes" name="writes" required onkeyup="janso_intro(this)" maxlength="500"></textarea></td>
								<td id="janso_intro_count" class="textcount">(0/500)</td>
							</tr>
							<tr>
								<td><font id = "write_check" size = "2" ></font> </td>
							</tr>

							<tr><td colspan="1" class="eachtitle" id ="eachtitle10">유의사항<td></tr>
							<tr class="janso_notice">
								<td colspan="1"><textarea id="writes2" name="writes2" required onkeyup="janso_notice(this)" maxlength="500"></textarea></td>
								<td id="janso_notice_count" class="textcount">(0/500)</td>
							</tr>
							<tr>
								<td><font id = "write2_check" size = "2" ></font> </td>
							</tr>



							<tr>
								<td>
									<input type="button" value="다음"  id="daum" class="nextbtn">
								</td>
							</tr>

						</tbody>
					</table>
					
				</div>


				<!--탭2-->
				<div id="tab-2" class="tab-content"> 


					<div class="toptext" id="eachtitle11">대여료를 설정해주세요.</div>
					<div style="margin-top: 10px; margin-bottom: 40px;">대여자가 한 타임 대여 당 지불하는 최종가격으로, VAT 10%가 포함된 가격입니다.</div>
					<div class="price_info">
						<div class="price_area">
							<div class="price_detail">
								<div class="price_title">강의실 가격 <span style="font-size: 10pt;">/ 1타임</span></div>
								<input type="text" class="price_input" id="hourprice" maxlength="9" name="priceperhour">
								<span class="unit">원</span>
								
							</div>
							<span class="math_symbol">
								<img src="image/plus.png" alt="+" style="width:16px; height: 16px; padding: 12px 17px 16px 11px;">
							</span>
							<div class="price_detail">
								<div class="price_title" style="margin-left: 10px;">추가비용 <span style="font-size: 10pt;">/ 1명</span></div>
								<span style="font-weight:bold; font-size: 15pt;">(</span>
								<input type="text" class="price_input" id="classtime" name="timeperonce">
								<span class="unit">원</span>
							</div>
							<span class="math_symbol">
								<img src="image/gob.png" alt="x">
							</span>
							<div class="price_detail">
								<div class="price_title">최대추가인원</div>
								<input type="text" class="price_input" id="totalclasscount" >
								<span class="unit">명</span>
								<span style="font-weight:bold; font-size: 15pt;">)</span>
							</div>
						</div>
						<div class="price_total">
							<h4 class="price_total_title">각 시간대별 대여료</h4>
							<input type="text" class="totalprice_input" id="totalprice" disabled>
							<span class="totalunit">원</span>
						</div>
					</div>
						<font id = "price_check" size = "2" ></font> 	
						

					<div class="toptext" style="margin-top: 20px;">최종 정산금 안내</div>
					<div style="margin-top: 10px; margin-bottom: 40px;">판매자님에게 정산되는 금액으로, 각 시간대별 대여료에서 세금과 공과 등, 중개 위탁수수료, <br>소득세 원천징수가 제외됩니다.</div>
					<div class="price_info" style="height: 250px;">
						<div class="price_area">
							<div class="noticeprice_detail">
								<div class="noticeprice_title">각 시간대별 대여료</div>
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
						<div>
							<input type="button" value="다음" id="daum2" class="nextbtn">
						</div>
					</div>

				</div>


				<div id="tab-3" class="tab-content"> 
					<div class="toptext">커버 이미지를 첨부해주세요</div>
					<div class="coverimage">
						<div style="font-weight:bold;">커버 이미지</div>
						<div class="bigsec">
							<p></p>
							<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage0" required="required" >
							<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
						</div>
						<div class="smallsec">
							<div class="cover_list">
								<div class="small_list">
									<p></p>
									<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage1" required="required" >
									<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
								</div>
								<div class="small_list">
									<p></p>
									<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage2" required="required" >
									<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
								</div>
								<div class="small_list">
									<p></p>
									<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage3" required="required" >
									<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
								</div>
								<div class="small_list">
									<p></p>
									<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage4" required="required" >
									<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
								</div>
							</div>
						</div>
						
						<div class="imageview">
							<div class="imageview_title">커버 이미지가 <br>적용된 모습은 다음과 같아요.</div>
							<div class="imageview_image"></div>
							<div class="imageview_info">
								<p class="janso_title">강의실 제목</p>
								<span class="janso_minpeople">(최소인원 0명 / </span><span class="janso_maxpeople">최대인원 0명)</span>
							</div>
						</div>

						<div>
							<div class="coverimage_notice">이미지는 커버포함 최대 5장까지 등록됩니다.</div>
						</div>

						<div class="regibtn_sec">
							<div>
								<input type="submit" value="등록" id="daum" class="nextbtn">
							</div>
						</div>

					</div>


			</form>

				</div>		  	
		</section>	
  </div>





			
			 <%@include file ="./footer.jsp" %>




	</form>
</body>
=======
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="dao.*" %>
<%@ page import="vo.*" %>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>공지사항</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/janso_regipage.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="js/janso_regipage.js"></script>
</head>


	<title></title>

</head>
 <%  String email_section = (String)session.getAttribute("Email");%>

 <%@include file ="./header.jsp" %>
 


	<div class="section_sec">
		<section>
			<div class="secwrap">
				<div class="leftsec">
						<ul class="tabs">
							<li class="tab-link current" data-tab="tab-1" id="asd"><span class="step">step1. </span>기본정보</li>
							<li class="tab-link" data-tab="tab-2" id="bsd"><span class="step">step2. </span>가격설정</li>
							<li class="tab-link" data-tab="tab-3" id="csd"><span class="step">step3. </span>이미지</li>
						</ul>
				</div>
<form name="member" action="janso_regipageinsert.learnup.com" method="post" enctype="multipart/form-data">
<input type="hidden" name="email" value="<%=email_section%>">
			<div class="rightsec">
				<div id="tab-1" class="tab-content current">
					<div class="toptext">강의실을 소개해주세요.</div>
					<table  style="width: 100%;" border="0">
						<colgroup>
							<col width="100%">
						</colgroup>
						<tbody>

							<tr><td colspan="1" class="eachtitle" id ="eachtt">강의실 제목<td></tr>
							<tr>
								<td colspan="1"><input type="text" name="roomtitle"   class="roomname" placeholder="소개하실 강의실 제목을 입력해주세요.(8자)" maxlength="8" size=50  ></td>
														
							</tr>
							<tr>
								<td><font id = "roomtitle_check" size = "2" ></font> </td>
							</tr>

							<tr><td colspan="1" class="eachtitle" id ="eachtitle1">공간 유형<td></tr>
							<tr>
								<td colspan="1">
									<div class="select-box">
										<label for="select-box0" class="label select-box1"><span class="label-desc">공간유형 선택하세요</span> </label>
										<select id="select-box0" name= "select-box0" class="select">
											<option value="" class="op" hidden></option>
											<option value="강의실" class="op">강의실</option>
											<option value="스터디룸" class="op">스터디룸</option>
											<option value="촬영스튜디오" class="op">촬영스튜디오</option>
											<option value="보컬연습실" class="op">보컬연습실</option>
											<option value="악기연습실" class="op">악기연습실</option>
											<option value="공유주방" class="op">공유주방</option>
											<option value="파티룸" class="op">파티룸</option>
											<option value="운동시설" class="op">운동시설</option>	
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><font id = "select-box0_check" size = "2" ></font> </td>
							</tr>

							<tr><td colspan="1" class="eachtitle" id ="eachtitle2">공간 면적<td></tr>
							<tr>
								<td colspan="1"><input type=text name=spacearea class="spacearea" placeholder="공간 면적 입력." size=50  required></td>
							</tr>
							<tr>
								<td><font id = "spacearea_check" size = "2" ></font> </td>
							</tr>
							

							<tr><td colspan="1" class="eachtitle" id ="eachtitle3">기본 수용인원<td></tr>
							<tr>
								<td colspan="1">
									<div class="select-box">
										<label for="select-box1" class="label select-box1"><span class="label-desc">기본 수용인원을 선택하세요</span> </label>
										<select id="select-box1" name= "select-box1" class="select">
											<option value="" class="op" hidden></option>
											<option value="1" class="op">1명</option>
											<option value="2" class="op">2명</option>
											<option value="3" class="op">3명</option>
											<option value="4" class="op">4명</option>
											<option value="5" class="op">5명</option>
											<option value="6" class="op">6명</option>
											<option value="7" class="op">7명</option>
											<option value="8" class="op">8명</option>
											<option value="9" class="op">9명</option>
											<option value="10" class="op">10명</option>
											<option value="11" class="op">11명</option>
											<option value="12" class="op">12명</option>
											<option value="13" class="op">13명</option>
											<option value="14" class="op">14명</option>
											<option value="15" class="op">15명</option>
											<option value="16" class="op">16명</option>
											<option value="17" class="op">17명</option>
											<option value="18" class="op">18명</option>
											<option value="19" class="op">19명</option>
											<option value="20" class="op">20명</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><font id = "select-box1_check" size = "2" ></font> </td>
							</tr>
							

							<tr><td colspan="1" class="eachtitle" id ="eachtitle4">최대 수용인원<td></tr>
							<tr >
								<td colspan="1">
									<div class="select-box">
									<label for="select-box2" class="label select-box1"><span class="label-desc">최대 수용인원을 선택하세요</span> </label>
									<select id="select-box2" name= "select-box2" class="select">
										<option value="" class="op" hidden></option>
										<option value="1" class="op">1명</option>
										<option value="2" class="op">2명</option>
										<option value="3" class="op">3명</option>
										<option value="4" class="op">4명</option>
										<option value="5" class="op">5명</option>
										<option value="6" class="op">6명</option>
										<option value="7" class="op">7명</option>
										<option value="8" class="op">8명</option>
										<option value="9" class="op">9명</option>
										<option value="10" class="op">10명</option>
										<option value="11" class="op">11명</option>
										<option value="12" class="op">12명</option>
										<option value="13" class="op">13명</option>
										<option value="14" class="op">14명</option>
										<option value="15" class="op">15명</option>
										<option value="16" class="op">16명</option>
										<option value="17" class="op">17명</option>
										<option value="18" class="op">18명</option>
										<option value="19" class="op">19명</option>
										<option value="20" class="op">20명</option>
									</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><font id = "select-box2_check" size = "2" ></font> </td>
							</tr>

							<tr><td colspan="1" class="eachtitle" id ="eachtitle5">시설물 선택<td></tr>
							<tr >
								<td colspan="1">
							<dl class="dropdown">
								<dt>
									<a style="width: 100%; padding: 0; border-radius:5px;" id="dropatag">
									
									<label for="dropatag" class="labeldragg"><span class="hida">사용가능한 시설물을 선택하세요(선택) <span id="ttt">▼</span></span>  </span>  </label>
									<p class="multiSel"></p>  
									</a>
									</dt>
								<dd>
									<div class="mutliSelect">
									<ul>
										<li>
										<input type="checkbox" id="group-0" name= "group" value="넷플릭스">
										<label for="group-0" class="grouplist_id" style="width: 100%">넷플릭스</label>
										</li>
										<li>
										<input type="checkbox" id="group-1" name= "group" value="주류반입가능">
										<label for="group-1" class="grouplist_id">주류반입가능</label>
										</li>
										<li>
										<input type="checkbox" id="group-2" name= "group" value="의자 테이블">
										<label for="group-2" class="grouplist_id">의자 테이블</label>
										</li>
										<li>
										<input type="checkbox" id="group-3" name= "group" value="컴퓨터">
										<label for="group-3" class="grouplist_id">컴퓨터</label>
										</li>
										<li>
										<input type="checkbox" id="group-4" name= "group" value="전기">
										<label for="group-4" class="grouplist_id">전기</label>
										</li>
										<li>
										<input type="checkbox" id="group-5"  name= "group" value="취사시설">
										<label for="group-5" class="grouplist_id">취사시설</label>
										</li>
										<li>
										<input type="checkbox" id="group-6" name= "group"  value="프린트">
										<label for="group-6" class="grouplist_id">프린트</label>
										</li>
										<li>
										<input type="checkbox" id="group-7" name= "group" value="화이트보드">
										<label for="group-7" class="grouplist_id">화이트보드</label>
										</li>
										<li>
										<input type="checkbox" id="group-8"  name= "group" value="내부화장실">
										<label for="group-8" class="grouplist_id">내부화장실</label>
										</li>
										<li>
										<input type="checkbox" id="group-9" name= "group"  value="금연">
										<label for="group-9" class="grouplist_id">금연</label>
										</li>
										<li>
										<input type="checkbox" id="group-10" name= "group"  value="주차">
										<label for="group-10" class="grouplist_id">주차</label>
										</li>
										<li>
										<input type="checkbox" id="group-11" name= "group"  value="인터넷 와이파이">
										<label for="group-10" class="grouplist_id">인터넷 와이파이</label>
										</li>
									</ul>
									</div>
								</dd>
							</dl>
						</td>
							</tr>
							<tr>
								<td><font id = "select-box3_check" size = "2" ></font> </td>
							</tr>

							<tr><td colspan="1" class="eachtitle" id ="eachtitle6">주소지 등록<td></tr>
							<tr>
								<td>
									<input type="text" id="sample6_postcode" maxlength="0" placeholder="우편번호" name="area1" size="30" class="postcode"><span><input type="button" onclick="sample6_execDaumPostcode()" value="주소 찾기" class="searchbtn"></span>
									<div><input type="text" maxlength="0" id="sample6_address" placeholder="주소" name="area2" size="49" class="address"></div>
									<div><input type="text" id="sample6_detailAddress" placeholder="상세주소를 입력해주세요." name="address2" size="49" class="detailaddress"></div>
								    <input type="hidden" id="sample6_extraAddress" placeholder="참고항목" >
								</td>
							</tr>
							<tr>
								<td><font id = "address_check" size = "2" ></font> </td>
							</tr>

							<tr><td colspan="1" class="eachtitle" id ="eachtitle7">오픈&마감 시간<td></tr>
							<tr>
								<td colspan="1">
									<div class="select-box">
									<label for="select-box4" class="label select-box1"><span class="label-desc">오픈 시간 설정</span> </label>
									<select id="select-box4" name="select-box4" class="select">
									<option value="" class="op" hidden></option>
										<option value="1" class="op">1시</option>
										<option value="2" class="op">2시</option>
										<option value="3" class="op">3시</option>
										<option value="4" class="op">4시</option>
										<option value="5" class="op">5시</option>
										<option value="6" class="op">6시</option>
										<option value="7" class="op">7시</option>	
										<option value="8" class="op">8시</option>
										<option value="9" class="op">9시</option>
										<option value="10" class="op">10시</option>
										<option value="11" class="op">11시</option>
										<option value="12" class="op">12시</option>
										<option value="13" class="op">13시</option>
										<option value="14" class="op">14시</option>
										<option value="15" class="op">15시</option>
										<option value="16" class="op">16시</option>	
										<option value="17" class="op">17시</option>
										<option value="18" class="op">18시</option>
										<option value="19" class="op">19시</option>
										<option value="20" class="op">20시</option>
										<option value="21" class="op">21시</option>
										<option value="22" class="op">22시</option>
										<option value="23" class="op">23시</option>		
										<option value="24" class="op">24시</option>												
									</select>
									</div>

									<div class="select-box">
										<label for="select-box5" class="label select-box1"><span class="label-desc">마감 시간 설정</span> </label>
										<select id="select-box5" name="select-box5" class="select">
										<option value="" class="op" hidden></option>
											<option value="1" class="op">1시</option>
											<option value="2" class="op">2시</option>
											<option value="3" class="op">3시</option>
											<option value="4" class="op">4시</option>
											<option value="5" class="op">5시</option>
											<option value="6" class="op">6시</option>
											<option value="7" class="op">7시</option>	
											<option value="8" class="op">8시</option>
											<option value="9" class="op">9시</option>
											<option value="10" class="op">10시</option>
											<option value="11" class="op">11시</option>
											<option value="12" class="op">12시</option>
											<option value="13" class="op">13시</option>
											<option value="14" class="op">14시</option>
											<option value="15" class="op">15시</option>
											<option value="16" class="op">16시</option>	
											<option value="17" class="op">17시</option>
											<option value="18" class="op">18시</option>
											<option value="19" class="op">19시</option>
											<option value="20" class="op">20시</option>
											<option value="21" class="op">21시</option>
											<option value="22" class="op">22시</option>
											<option value="23" class="op">23시</option>		
											<option value="24" class="op">24시</option>													
										</select>
									</div>
							  </td>
							</tr>
							<tr>
								<td><font id = "select-box45_check" size = "2" ></font> </td>
							</tr>
							

							<tr><td colspan="1" class="eachtitle" id ="eachtitle8">예약시간 설정<td></tr>
							<tr>
								<td colspan="1">
									<div class="select-box">
										<label for="select-box6" class="label select-box1"><span class="label-desc">한사람당 최대 예약시간 설정</span> </label>
										<select id="select-box6" name="select-box6" class="select">
											<option value="" class="op" hidden></option>
											<option value="1" class="op">1시간</option>
											<option value="2" class="op">2시간</option>
											<option value="3" class="op">3시간</option>
											<option value="4" class="op">4시간</option>
											<option value="5" class="op">5시간</option>
											<option value="6" class="op">6시간</option>
											<option value="7" class="op">7시간</option>											
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><font id = "select-box6_check" size = "2" ></font> </td>
							</tr>
							<!-- 요일선택 -->
							
								<tr><td colspan="1" class="eachtitle" id ="eachtitle11">휴무일 선택<td></tr>
							<tr >
								<td colspan="1">
							<dl class="dropdown2">
								<dt>
									<a style="width: 100%; padding: 0; border-radius:5px;" id="dropatag2">
									
									<label for="dropatag2" class="labeldragg2"><span class="hida2">휴일을 선택하세요 <span id="ttt2">▼</span></span>  </span>  </label>
									<p class="multiSel2"></p>  
									</a>
									</dt>
								<dd>
									<div class="mutliSelect2">
									<ul>
										<li>
										<input type="hidden" id="group-02" name= "group2" value="휴일없음">
										<input type="checkbox" id="group-02" name= "group2" value="월">
										<label for="group-0" class="grouplist_id" style="width: 100%">월</label>
										</li>
										<li>
										<input type="checkbox" id="group-12" name= "group2" value="화">
										<label for="group-1" class="grouplist_id">화</label>
										</li>
										<li>
										<input type="checkbox" id="group-22" name= "group2" value="수">
										<label for="group-2" class="grouplist_id">수</label>
										</li>
										<li>
										<input type="checkbox" id="group-32" name= "group2" value="목">
										<label for="group-3" class="grouplist_id">목</label>
										</li>
										<li>
										<input type="checkbox" id="group-42" name= "group2" value="금">
										<label for="group-4" class="grouplist_id">금</label>
										</li>
										<li>
										<input type="checkbox" id="group-52"  name= "group2" value="토">
										<label for="group-5" class="grouplist_id">토</label>
										</li>
										<li>
										<input type="checkbox" id="group-62" name= "group2"  value="일">
										<label for="group-6" class="grouplist_id">일</label>
										</li>
									
									</ul>
									</div>
								</dd>
							</dl>
						</td>
							</tr>

							<tr><td colspan="1" class="eachtitle" id ="eachtitle9">공간소개<td></tr>
							<tr class="janso_intro">
								<td colspan="1"><textarea id="writes" name="writes" required onkeyup="janso_intro(this)" maxlength="500"></textarea></td>
								<td id="janso_intro_count" class="textcount">(0/500)</td>
							</tr>
							<tr>
								<td><font id = "write_check" size = "2" ></font> </td>
							</tr>

							<tr><td colspan="1" class="eachtitle" id ="eachtitle10">유의사항<td></tr>
							<tr class="janso_notice">
								<td colspan="1"><textarea id="writes2" name="writes2" required onkeyup="janso_notice(this)" maxlength="500"></textarea></td>
								<td id="janso_notice_count" class="textcount">(0/500)</td>
							</tr>
							<tr>
								<td><font id = "write2_check" size = "2" ></font> </td>
							</tr>



							<tr>
								<td>
									<input type="button" value="다음"  id="daum" class="nextbtn">
								</td>
							</tr>

						</tbody>
					</table>
					
				</div>


				<!--탭2-->
				<div id="tab-2" class="tab-content"> 


					<div class="toptext" id="eachtitle11">대여료를 설정해주세요.</div>
					<div style="margin-top: 10px; margin-bottom: 40px;">대여자가 한 타임 대여 당 지불하는 최종가격으로, VAT 10%가 포함된 가격입니다.</div>
					<div class="price_info">
						<div class="price_area">
							<div class="price_detail">
								<div class="price_title">강의실 가격 <span style="font-size: 10pt;">/ 1타임</span></div>
								<input type="text" class="price_input" id="hourprice" maxlength="9" name="priceperhour">
								<span class="unit">원</span>
								
							</div>
							<span class="math_symbol">
								<img src="image/plus.png" alt="+" style="width:16px; height: 16px; padding: 12px 17px 16px 11px;">
							</span>
							<div class="price_detail">
								<div class="price_title" style="margin-left: 10px;">추가비용 <span style="font-size: 10pt;">/ 1명</span></div>
								<span style="font-weight:bold; font-size: 15pt;">(</span>
								<input type="text" class="price_input" id="classtime" name="timeperonce">
								<span class="unit">원</span>
							</div>
							<span class="math_symbol">
								<img src="image/gob.png" alt="x">
							</span>
							<div class="price_detail">
								<div class="price_title">최대추가인원</div>
								<input type="text" class="price_input" id="totalclasscount" >
								<span class="unit">명</span>
								<span style="font-weight:bold; font-size: 15pt;">)</span>
							</div>
						</div>
						<div class="price_total">
							<h4 class="price_total_title">각 시간대별 대여료</h4>
							<input type="text" class="totalprice_input" id="totalprice" disabled>
							<span class="totalunit">원</span>
						</div>
					</div>
						<font id = "price_check" size = "2" ></font> 	
						

					<div class="toptext" style="margin-top: 20px;">최종 정산금 안내</div>
					<div style="margin-top: 10px; margin-bottom: 40px;">판매자님에게 정산되는 금액으로, 각 시간대별 대여료에서 세금과 공과 등, 중개 위탁수수료, <br>소득세 원천징수가 제외됩니다.</div>
					<div class="price_info" style="height: 250px;">
						<div class="price_area">
							<div class="noticeprice_detail">
								<div class="noticeprice_title">각 시간대별 대여료</div>
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
						<div>
							<input type="button" value="다음" id="daum2" class="nextbtn">
						</div>
					</div>

				</div>


				<div id="tab-3" class="tab-content"> 
					<div class="toptext">커버 이미지를 첨부해주세요</div>
					<div class="coverimage">
						<div style="font-weight:bold;">커버 이미지</div>
						<div class="bigsec">
							<p></p>
							<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage0" required="required" >
							<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
						</div>
						<div class="smallsec">
							<div class="cover_list">
								<div class="small_list">
									<p></p>
									<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage1" required="required" >
									<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
								</div>
								<div class="small_list">
									<p></p>
									<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage2" required="required" >
									<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
								</div>
								<div class="small_list">
									<p></p>
									<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage3" required="required" >
									<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
								</div>
								<div class="small_list">
									<p></p>
									<input type="file" class="input_hide coverimg" accept=".gif, .jpg, .png" name="coverimage4" required="required" >
									<button type="button" class="btn_del dn"><span class="blind">삭제</span></button>
								</div>
							</div>
						</div>
						
						<div class="imageview">
							<div class="imageview_title">커버 이미지가 <br>적용된 모습은 다음과 같아요.</div>
							<div class="imageview_image"></div>
							<div class="imageview_info">
								<p class="janso_title">강의실 제목</p>
								<span class="janso_minpeople">(최소인원 0명 / </span><span class="janso_maxpeople">최대인원 0명)</span>
							</div>
						</div>

						<div>
							<div class="coverimage_notice">이미지는 커버포함 최대 5장까지 등록됩니다.</div>
						</div>

						<div class="regibtn_sec">
							<div>
								<input type="submit" value="등록" id="daum" class="nextbtn">
							</div>
						</div>

					</div>


			</form>

				</div>		  	
		</section>	
  </div>





			
			 <%@include file ="./footer.jsp" %>




	</form>
</body>
>>>>>>> branch 'woo' of https://github.com/JaeHyuk-Park/learnup.git
</html>