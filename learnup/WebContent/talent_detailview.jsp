<%@page import="vo.TalentDataType"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	TalentDataType talent = (TalentDataType)request.getAttribute("article");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%= talent.getTitle()%></title>
<link rel="stylesheet" type="text/css" href="css/talent_detailview.css">
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
						<div class="goelse">취소·환불</div>
						<div class="goelse">자주묻는 질문</div>
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
						<div class="service_text"><%=talent.getService_text()%></div>
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
						out.println("이미지 : " + talent.getImage());
						if (talent.getImage_1() != null) {
							out.println("이미지1 : " + talent.getImage_1());
						}
						if (talent.getImage_2() != null) {
							out.println("이미지2 : " + talent.getImage_2());
						}
						if (talent.getImage_3() != null) {
							out.println("이미지3 : " + talent.getImage_3());
						}
						if (talent.getImage_4() != null) {
							out.println("이미지4 : " + talent.getImage_4());
						}
						if (talent.getImage_5() != null) {
							out.println("이미지5 : " + talent.getImage_5());
						}
						if (talent.getImage_6() != null) {
							out.println("이미지6 : " + talent.getImage_6());
						}
						if (talent.getImage_7() != null) {
							out.println("이미지7 : " + talent.getImage_7());
						}
						if (talent.getImage_8() != null) {
							out.println("이미지8 : " + talent.getImage_8());
						}
						if (talent.getImage_9() != null) {
							out.println("이미지9 : " + talent.getImage_9());
						}
						out.println("버전 번호 : " + talent.getVers_num());
						out.println("버전 제목 : " + talent.getVers_title());
						out.println("버전 내용 : " + talent.getVers_descript());
						out.println("버전 가격 : " + talent.getPrice());
						out.println("버전 추가날짜 : " + talent.getVers_date());
						out.println("버전 수정횟수 : " + talent.getRecruit_num());
					%>
			</div>
		</section>


	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>