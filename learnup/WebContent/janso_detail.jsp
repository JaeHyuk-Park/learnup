<%@ page import="dao.*" %>
<%@ page import="vo.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<% request.setCharacterEncoding("utf-8"); %>
<%@page import="java.util.*" %>
 <%
  	ArrayList<String> categortList = (ArrayList<String>)request.getAttribute("Facility_categoriesArray");
 	String addres = (String)request.getAttribute("addres"); //js보낼 주소
 %> 
    <c:set var="addr" value="<%=addres%>"/>
	<c:set var="room" value="${article}"/>
  
    
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>상품 상세 페이지</title>
	<link rel="stylesheet" type="text/css" href="css/janso_detail.css">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f1342a3ffd93979d7f9852ea40201756&libraries=services"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="js/janso_detail.js"> </script>
	<script language=JavaScript src="${common_context_path_url}/janso_detail.js"></script>

</head>

<script language=JavaScript>
var chDate = '<c:out value="${addr}"/>';
var rooms = '<c:out value="${room.room_title}"/>';
</script>


<style>
@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
</style>

<body>

 
     <%@include file ="./header.jsp" %>
     
     
     
    <section class="section_main">
        <div class="main_left">
            <div class="sub_name"> <h2>${room.room_title} 방</h2> </div>

            <div class="img_box">
            	<div id="slider" class="slider" >
                    <a class="control_next">></a>
                    <a class="control_prev"><</a> 
                    <ul>	
                   
	                    <li class="slideli"><img src="${pageContext.request.contextPath }/jansoproduct/${room.sub_img1}" class="jansoimg" "></li>
	                    <li class="slideli"><img src="${pageContext.request.contextPath }/jansoproduct/${room.main_img}" class="jansoimg" "></li>
	                    <li class="slideli"><img src="${pageContext.request.contextPath }/jansoproduct/${room.sub_img2}" class="jansoimg" "></li>
	                    <li class="slideli"><img src="${pageContext.request.contextPath }/jansoproduct/${room.sub_img3}" class="jansoimg" "></li>
	                    <li class="slideli"><img src="${pageContext.request.contextPath }/jansoproduct/${room.sub_img4}" class="jansoimg" "></li>
                  	</ul> 
                  </div>
			</div>

            <div class="star_junsu">
            	<div class="star_junsu_title">평점을 작성해주세요.</div>
                <fieldset class="rating">
				    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
				    <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
				    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
				    <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
				    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
				    <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
				    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
				    <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
				    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
				    <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
				</fieldset>	
						
            </div>

            <div class="move_left">
                <div class="move_wrap">
                    <ul>
                 		<a href="#intro1" id="la"><li class="la">공간소개</li></a>
                        <a href="#intro2" id="lb"><li class="lb">시설안내</li></a>
                        <a href="#intro3" id="lc"><li class="lc">유의사항</li></a>
                        <a href="#intro4" id="ld"><li class="ld">환불정책</li></a>
                        <a href="#intro5" id="le"><li class="le">상세주소</li></a>
                        <a href="#이용후기"id="lf"><li class="lf">이용후기</li></a>
                        <div id="mv_bot"> </div>
                    </ul>
                 </div>
            </div>
<!-- 공간소개 -->
            <div class="intro_boxs"> 
                <div id="intro1" class="intro1"><h1>공간소개</h1></div>
                
                <div class="intro_boxs_0" >
               		<div id ="p_box" >                    
                       <p style="white-space: pre-line;" class="p_box">
                       ${room.room_introduction}
                       </p> 
                    </div>
                </div>
            </div>

            <div class="intro_boxs"> 
                <div id="intro2"><h1> 시설안내</h1></div>
                <div class="intro_boxs_0" >
                    <div id ="p_box" >                    
                       		<p style="white-space: pre-line;" class="p_box">
                       		<% for(String a : categortList ){%>
                       		<%= a %>		
                       				
                       		<%} %>
						                     			
                       		</p> 
                    </div>
                    
                </div>
            </div>
           

            <div class="intro_boxs"> 
                <div id="intro3"><h1>유의사항</h1></div>
                <div class="intro_boxs_0" >
                     <div id ="p_box" >                    
                       		<p style="white-space: pre-line;" class="p_box">
                       		  ${room.room_precautions}
                       		</p> 
                    </div>
                    
                </div>
            </div>

            <div class="intro_boxs"> 
                <div id="intro4"><h1>환불규정안내</h1></div>
                <div class="intro_boxs_0" >
                     <div id ="p_box" >                    
                       		<p style="white-space: pre-line;" class="p_box_refund">
                       		&nbsp;&nbsp;<span style="color: red;">이용당일 첫날(이후) 환불은 판매자에세 직접 문의 하셔야합니다. </span>
                       		&nbsp;&nbsp;<span style="">결제 후 2시간 이내에는 100%환불이 가능합니다. </span>
                     	  	&nbsp;&nbsp;<span style=""> </span>
                       		&nbsp;&nbsp;<span style="">이용8일전 &nbsp; &nbsp; 총금액의 100%환불 </span>
                       		  	&nbsp;&nbsp;<span style=""> </span>
                       		&nbsp;&nbsp;<span style="">이용7일전 &nbsp; &nbsp; 총금액의 90%환불 </span>
                       		  	&nbsp;&nbsp;<span style=""> </span>
                       		&nbsp;&nbsp;<span style="">이용6일전 &nbsp; &nbsp; 총금액의 50%환불 </span>
                       		  	&nbsp;&nbsp;<span style=""> </span>
                       		&nbsp;&nbsp;<span style="">이용5일전 &nbsp; &nbsp; 총금액의 40%환불 </span>
                       		  	&nbsp;&nbsp;<span style=""> </span>
                       		&nbsp;&nbsp;<span style="">이용4일전 &nbsp; &nbsp; 총금액의 30%환불 </span>
                       		  	&nbsp;&nbsp;<span style=""> </span>
                       		&nbsp;&nbsp;<span style="">이용3일전 &nbsp; &nbsp; 총금액의 환불불가 </span>
                       		  	&nbsp;&nbsp;<span style=""> </span>
                       		&nbsp;&nbsp;<span style="">이용2일전 &nbsp; &nbsp; 총금액의 환불불가 </span>
                       		  	&nbsp;&nbsp;<span style=""> </span>
                       		&nbsp;&nbsp;<span style="">이용1일전 &nbsp; &nbsp; 총금액의 환불불가 </span>
                       		  	&nbsp;&nbsp;<span style=""> </span>
                       		&nbsp;&nbsp;<span style="">당일 &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 환불불가 </span>
                       		  	&nbsp;&nbsp;<span style=""> </span>
                       		&nbsp;&nbsp;<span style="">전날 &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 환불불가 </span>
                       		
                       		
                       		</p> 
                     </div>
                    
                </div>
            </div>

            <div class="intro_boxs"> 
                <div id="intro5"><h1>상세주소</h1></div>
                <div class="intro_boxs_0" >
                    <div id ="p_box" >                    
                       		<p style="white-space: pre-line;">
                       		주소: &nbsp ${room.room_address}
                       		</p> 
                       		<div id="map" style="width:100%;height:350px;"></div>
                     </div>
                    
                </div>
            </div>
            
            <div class="intro_boxs"> 
                <div id="intro6"><h1>이용후기</h1></div>
                <div class="intro_boxs_0" >  
                    <div id ="p_box" >                    
                       		<p style="white-space: pre-line;" class="p_box">
                       		
                       		
                       		
                       		
                       		
                       		</p> 
                     </div>
                </div>
            </div>
            
            <!-- 끝부분 -->
        </div>
        
        

    <!--중간여백-->
        <div style="float: left; width: 80px;"></div>
    <!--중간여백-->


        <div class="main_right">
        <p style="height: 135px;"></p>
        
            <div class="sevu">세부 옵션</div>
            
            <div class="intro_boxs_right"> 
                <div class="intro_boxs_0" >
                	<ul>
			        	<li><span class="tit">공간유형</span><span class="data">${room.room_categories}</span></li>
			            <li><span class="tit">공간면적</span><span class="data">${room.room_area}㎡</span></li>
			            <li><span class="tit">예약시간</span><span class="data">am ${room.open_time}:00~</span></li>
			            <li><span class="tit">수용인원</span><span class="data">${room.max_personnel}명~${room.min_personnel}명</span></li>
			        </ul>
                </div>
            </div>
            
			<div class="reserv">예약일을 지정해 주세요</div>
		    <div class = "calendar_container"> 
		        
		        <button class = "left_button"> &lt </button>
		        
		        <table class = "calendar">
		            <th class = "ctitle">2월</th>
		            <tbody>
		                <tr class = "week">
		                    <td class = "day" style="color:#F15F5F;">일</td>
		                    <td class = "day">월</td>
		                    <td class = "day">화</td>
		                    <td class = "day">수</td>
		                    <td class = "day">목</td>
		                    <td class = "day">금</td>
		                    <td class = "day" style="color:#6799FF;">토</td>
		                </tr>
		                <tr> 
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                </tr>
		                <tr> 
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                </tr>
		                <tr>  
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                </tr>
		                <tr>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                </tr>
		                <tr>  
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                </tr>
		                <tr> 
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                    <td class = "calendar_days" role = "button"> </td>
		                </tr>
		            </tbody>
		        </table>
					        
		        <button class = "right_button"> > </button>
		        
		    </div>
			           
            
            <div class="addperson">
            	<div><span class="addperson_title">총 예약인원</span><span class="addperson_note">(최대20명, 10명 초과시 10,000원/1인)</span></div>
            	<div class="addperson_text_wrap">
	            	<span class="plusbtn">-</span>
	            	<span><input type="text" class="addperson_text" placeholder="10" value=""></span>
	            	<span class="minusbtn">+</span>
            	</div>
            	
            
            </div>
           
        
            <div>
            	<div>
	               <div class="totalprice">
	          	     <span style="color:red; font-size:25pt; font-weight:bold;">100,000</span><span style="font-size:12pt; font-weight:bold;"> 원/ 시간(인)</span>
	               </div>
	            </div>
            
	            <h3 class="righth3" id="righth3">결제 후 바로 예약확정</h3>
	            <span class="righth3_de" >빠르고 확실한 예약을 위해 </span>
	            <span class="righth3_de">런업에서 온라인 결제를 진행해주세요</span>
             	
             	<button type="button" class="paybtn">결제하기</button>     
            </div>
            
        </div>

        <br>
    </section>
 

   

       <%@include file ="./footer.jsp" %>

</body>
</html>