<%@page import="java.text.DecimalFormat"%>
<%@page import="vo.TalentDataType"%>
<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	TalentDataType talent = (TalentDataType)request.getAttribute("article");
	DecimalFormat df = new DecimalFormat();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%= talent.getTitle()%></title>
<link rel="stylesheet" type="text/css" href="css/talent_detailview.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="js/talent_detailview.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="allitem">
		<section class="fullsect">
			<div class="leftsect">
				<div id="keyword">
					홈 > 비즈니스 >
					<%
					if (talent.getCategory() == 1) {
						out.print("&nbsp;<a href='TalentList.learn?category=1'>디자인</a>");
					} else if (talent.getCategory() == 2) {
						out.print("&nbsp;<a href='TalentList.learn?category=2'>IT·프로그래밍</a>");
					} else if (talent.getCategory() == 3) {
						out.print("&nbsp;<a href='TalentList.learn?category=3'>영상·사진·음향</a>");
					} else if (talent.getCategory() == 4) {
						out.print("&nbsp;<a href='TalentList.learn?category=4'>마케팅</a>");
					} else if (talent.getCategory() == 5) {
						out.print("&nbsp;<a href='TalentList.learn?category=5'>번역·통역</a>");
					} else if (talent.getCategory() == 6) {
						out.print("&nbsp;<a href='TalentList.learn?category=6'>문서·글쓰기</a>");
					} else if (talent.getCategory() == 7) {
						out.print("&nbsp;<a href='TalentList.learn?category=7'>경영자문·운영지원</a>");
					} else if (talent.getCategory() == 8) {
						out.print("&nbsp;<a href='TalentList.learn?category=8'>주문제작</a>");
					} else if (talent.getCategory() == 9) {
						out.print("&nbsp;<a href='TalentList.learn?category=9'>세무·법무·노무</a>");
					}
				%>
				</div>
				<div id="mainImg">
					<img src="TalentUpload/<%=talent.getImage()%>">
				</div>
				<div id="review"></div>
				<div id="goahead">
					<div id="going">
						<div class="gofirst">서비스 설명</div>
						<div class="goelse">가격 정보</div>
						<div class="goelse">수정·재진행</div>
						<div class="goelse">취소·환불</div>
						<div class="goelse">서비스 평가</div>
					</div>
				</div>
				<section class="maintext_start">
					<div class="text">서비스 설명</div>
					<div class="servicearea">
						<div class="service_text"><%=talent.getService_descript()%></div>
						<!--div id="addbutton">
						<div id="addbuttonhide"></div>
						<div id="addbuttonstart">
							<button role="button" color="default" class="scroll"></button>
						</div>
					</div-->

					</div>
				</section>
				<section class="maintext_start">
					<div class="text">서비스 제공절차</div>
					<div class="servicearea">
						<div class="service_text"><%= talent.getService_text()%></div>
					</div>
				</section>
				<section class="maintext_start">
					<div class="servicearea">
						<%if (talent.getImage_1() != null) {
							out.println("<img src='TalentUpload/" + talent.getImage_1()+"'>");
						}
						if (talent.getImage_2() != null) {
							out.println("<img src='TalentUpload/" + talent.getImage_2()+"'>");
						}
						if (talent.getImage_3() != null) {
							out.println("<img src='TalentUpload/" + talent.getImage_3()+"'>");
						}
						if (talent.getImage_4() != null) {
							out.println("<img src='TalentUpload/"+ talent.getImage_4()+"'>");
						}
						if (talent.getImage_5() != null) {
							out.println("<img src='TalentUpload/" + talent.getImage_5()+"'>");
						}
						if (talent.getImage_6() != null) {
							out.println("<img src='TalentUpload/" + talent.getImage_6()+"'>");
						}
						if (talent.getImage_7() != null) {
							out.println("<img src='TalentUpload/" + talent.getImage_7()+"'>");
						}
						if (talent.getImage_8() != null) {
							out.println("<img src='TalentUpload/" + talent.getImage_8()+"'>");
						}
						if (talent.getImage_9() != null) {
							out.println("<img src='TalentUpload/" + talent.getImage_9()+"'>");
						} %>
					</div>
				</section>
				<section class="maintext_start">
					<div class="text">가격 정보</div>
					<div class="serviceversion">
						<div class="versionarea">
							<div class="titleindex"><%= talent.getVers_title()%></div>
							<div class="descriptindex"><%= talent.getVers_descript()%></div>
							<div class="versmenu">
								<span>작업일</span> <span><%= talent.getVers_date()%>일</span>
							</div>
							<div class="versmenu">
								<span>수정 횟수</span> <span><%= talent.getRecruit_num()%>회</span>
							</div>
							<div class="price"><%= df.format(talent.getPrice())%>원 
							<span class="priceserv">(VAT 포함가)</span>
							</div>
						</div>
					</div>
					<div class="buybuttonbox">
						<input type="button" class="buybutton" value="구매">
					</div>
				</section>


				<section class="maintext_start">
					<div class="text">수정 및 재진행</div>
					<div class="servicearea">
						<div class="service_text"><%= talent.getRecruit()%></div>
					</div>
				</section>
				<section class="maintext_start">
					<div class="text">취소 및 환불규정</div>
					<div class="servicearea">
						<div class="service_text">
						가. 기본 환불 규정 
						1. 전문가와 의뢰인의 상호 협의하에 청약 철회 및 환불이 가능합니다. 
						2. 작업이 완료된 이후 또는 자료, 프로그램 등 서비스가 제공된 이후에는 환불이 불가합니다. 
						( 소비자보호법 17조 2항의 5조. 용역 또는 「문화산업진흥 기본법」 제2조 제5호의 디지털콘텐츠의 제공이 개시된 경우에 해당) 
						
						나. 전문가 책임 사유 
						1. 전문가의 귀책사유로 당초 약정했던 서비스 미이행 혹은 보편적인 관점에서 
						심각하게 잘못 이행한 경우 결제 금액 전체 환불이 가능합니다. 
						
						다. 의뢰인 책임 사유 
						1. 서비스	진행 도중 의뢰인의 귀책사유로 인해 환불을 요청할 경우, 
						사용 금액을 아래와 같이 계산 후 총 금액의 10%를 공제하여 환불합니다. 
						- 총 작업량의 1/3 경과 전 : 이미 납부한 요금의 2/3해당액 
						- 총 작업량의 1/2 경과 전 : 이미 납부한 요금의 1/2해당액
						- 총 작업량의 1/2 경과 후 : 반환하지 않음
						</div>
					</div>
				</section>

				<section class="maintext_start">
					<div class="text">서비스 평가</div>
				</section>
				

				<%
						out.print("이메일 : " + talent.getEmail());
						out.println("상품번호 : " + talent.getProduct_num());
						out.println("제목 : " + talent.getTitle());
						if (talent.getKeyword() != null) {
							out.println("키워드 : " + talent.getKeyword());
							out.println("키워드 : " + talent.getKeyword().replace("null", "").replace(", ", ""));
						} else {

						}
						out.println("카테고리 : " + talent.getCategory());
						if (talent.getService_descript() != null) {
							out.println("서비스 내용 : " + talent.getService_descript());
						}
						if (talent.getService_text() != null) {
							out.println("서비스 제공절차 : " + talent.getService_text());
						}
						if (talent.getRecruit() != null) {
							out.println("수정 및 재진행 : " + talent.getRecruit());
						}
						
						out.println("버전 번호 : " + talent.getVers_num());
						out.println("버전 제목 : " + talent.getVers_title());
						out.println("버전 내용 : " + talent.getVers_descript());
						out.println("버전 가격 : " + talent.getPrice());
						out.println("버전 추가날짜 : " + talent.getVers_date());
						out.println("버전 수정횟수 : " + talent.getRecruit_num());
					%>
			</div>
			<aside id="vers">
				<section id="love">
					<span></span>
					<button role="button" class="lovebuttonbox">
						<span><a href="javascript:;" class="icon heart"> 
						<img src="image/heart1.png" alt="찜하기">
						</a></span>
						<span>115 </span>
					</button>
				</section>
				<section class="version_title">
					<h1 class="version_titlearea"><%= talent.getVers_title()%></h1>				
				</section>
				<section class="versionbox">
					<div class="versionbox2">
						<div class="titleindex"><%=talent.getVers_title()%></div>
						<div class="descriptindex"><%=talent.getVers_descript()%></div>
						<div class="versmenu">
							<span>작업일</span> <span><%=talent.getVers_date()%>일</span>
						</div>
						<div class="versmenu">
							<span>수정 횟수</span> <span><%=talent.getRecruit_num()%>회</span>
						</div>
						<div class="price"><%= df.format(talent.getPrice())%>원 
							<span class="priceserv">(VAT 포함가)</span>
						</div>
					</div>
					<div class="versionbuybutton">
						<input type="button" class="buybutton" value="구매하기">
					</div>
				</section>
			</aside>
		</section>
		
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>