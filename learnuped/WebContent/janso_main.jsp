<%@ page import="dao.*" %>
<%@ page import="vo.Janso_product_registration" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import= "java.io.File"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>장소대여</title>
		<link rel='stylesheet' type='text/css'  href='./css/janso_main.css' >
    <link rel='stylesheet' type='text/css' href='./css/janso_main.slider.css' >
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<script src="./js/janso_main.js"> </script>
    <script src="./js/janso_main._slide.js"> </script>
     <script src="./js/janso_sub._slide.js"> </script>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
</head>
<script type="text/javascript">
function getvalue(){

	$.ajax({
	    url: 'jangso.learnup.com',
	    type: 'get',
	    data: {addp : '서울'},
	    success: function (data) {
	            alert("데이터 전송이 성공적으로 끝났을 때 실행");
	            
	        }
	});
	
	
}

function getvalue1(){

	$.ajax({
	    url: 'jangso.learnup.com',
	    type: 'get',
	    data: {addp : '경기'},
	    success: function (data) {
	            alert("데이터 전송이 성공적으로 끝났을 때 실행");
	    
	        }
	});
	
	
}

function getvalue2(){

	$.ajax({
	    url: 'jangso.learnup.com',
	    type: 'get',
	    data: {addp : '강원도'},
	    success: function (data) {
	            alert("데이터 전송이 성공적으로 끝났을 때 실행");
	        }
	});
	
	
}

function getvalue3(){

	$.ajax({
	    url: 'jangso.learnup.com',
	    type: 'get',
	    data: {addp : '충청도'},
	    success: function (data) {
	            alert("데이터 전송이 성공적으로 끝났을 때 실행");
	        }
	});
	
	
}

function getvalue4(){

	$.ajax({
	    url: 'jangso.learnup.com',
	    type: 'get',
	    data: {addp : '전남북'},
	    success: function (data) {
	            alert("데이터 전송이 성공적으로 끝났을 때 실행");
	        }
	});
	
	
}

function getvalue5(){

	$.ajax({
	    url: 'jangso.learnup.com',
	    type: 'get',
	    data: {addp : '경상도'},
	    success: function (data) {
	            alert("데이터 전송이 성공적으로 끝났을 때 실행");
	        }
	});
	
	
}

function getvalue6(){

	$.ajax({
	    url: 'jangso.learnup.com',
	    type: 'get',
	    data: {addp : '제주도'},
	    success: function (data) {
	            alert("데이터 전송이 성공적으로 끝났을 때 실행");
	        }
	});
	
	
}



</script>




<body>
<!-- 헤더 -->
 <%@include file ="./header.jsp" %>

 <%
	ArrayList<Janso_product_registration> articleList=(ArrayList<Janso_product_registration>)request.getAttribute("articleList");  //지역별
	ArrayList<Janso_product_registration> articleList2=(ArrayList<Janso_product_registration>)request.getAttribute("articleList2"); //전체
 	String directory = (String)request.getAttribute("directory");
 	String files[] = new File(directory).list();
 	
 	
	
 %> 
 
 <%= articleList.size()  %>	
 
 


 
<!--광고1 -->
<section class="image-section">
    <div class="image-section-0">
        <!-- <div class="image-section-0-text">
            <h1 class="a1">새로운 장소 런업</h1> 
        </div>
         -->
            <video muted autoplay loop width="100%" height="100%" >
                <source src="./image/-91744.mp4"  type="video/mp4">
            </video>     
    </div>
</section>
<!--광고1 -->

<!--그위 빈공간 -->
<section class="ssssss"></section>
<!--그위 빈공간 -->


<!--광고2 -->
<section class="image-section1">
    <div class="image-section1-box" style="display: block;">
        <img src="./image/그림1.png" alt="" class="im" >
        <div style="text-align: center; margin-top: 10px;">
           <strong>쉬운 공간 대여</strong> 
        </div>
    </div>

    <div class="image-section1-box" style="width: 80px;"></div>
    <div class="image-section1-box" style="display: block;">
        <img src="./image/그림2.png" alt="" class="im">
        <div style="text-align: center; margin-top: 10px;">
            <strong>원하는 공간 찾기</strong> 
         </div>
    </div>

    <div class="image-section1-box" style="width: 80px;">
        
    </div>

    <div class="image-section1-box " style="display: block;">
        <img src="./image/그림3.png" alt="" class="im">
        <div style="text-align: center; margin-top: 10px;">
            <strong>보증된 깔끔한 공간</strong> 
         </div>
       
    </div>
</section>
<!--광고2 -->


<!--어떤 장소를 찾고있나요 -->
<section class="partroom_section">
<h1 style="text-align: center; font-size: 30px; margin-bottom: 50px; margin-top: 30px;">어떤 공간을 찾고있나요?</h1>
    <div class="bt-boxs">

        <div  class="bt-box">
            <a href="janso_subpage.learnup.com?page=1&searchs=&keworld=강의실" style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//lecture.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    강의실
                </div>     
            </a>
        </div>

        <div  class="bt-box">
            <a href="janso_subpage.learnup.com?page=1&searchs=&keworld1=스터디룸"  style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//study.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    스터디룸
                </div>     
            </a>
        </div>
        <div  class="bt-box">
            <a href="janso_subpage.learnup.com?page=1&searchs=&keworld2=촬영스튜디오" style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//shooting.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    촬영스튜디오
                </div>     
            </a>
        </div>

        <div  class="bt-box">
            <a href="janso_subpage.learnup.com?page=1&searchs=&keworld3=보컬연습실"  style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//vocal_studio.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    보컬연습실
                </div>     
            </a>
        </div>
        <div  class="bt-box">
            <a href="janso_subpage.learnup.com?page=1&searchs=&keworld4=악기연습실"  style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//instrumental_room.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    악기연습실
                </div>     
            </a>
        </div>

        <div  class="bt-box">
            <a href="janso_subpage.learnup.com?page=1&searchs=&keworld5=공유주방" style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//kitchen.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    공유주방
                </div>     
            </a>
        </div>


        <div  class="bt-box">
            <a href="janso_subpage.learnup.com?page=1&searchs=&keworld6=파티룸" style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//gathering.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    파티룸
                </div>     
            </a>
        </div>


        <div  class="bt-box">
            <a href="janso_subpage.learnup.com?page=1&searchs=&keworld7=운동시설" style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//workingout.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    운동시설
                </div>     
            </a>
        </div>


    </div>
</section>
<!--어떤 장소를 찾고있나요 -->

<!--그위 빈공간 -->
<section class="ssssss"></section>
<!--그위 빈공간 -->

<!-- 전체추천장소리스트-->
 <h1 style="text-align: center; font-size: 30px; margin-bottom: 50px;">어떤 장소를 찾고있나요?</h1>
 <div style="margin: 0 auto;   width: 1280px;">
 <div style="margin-left: 20px; margin-top:50px; font-size: 25px;  font-weight: 700; display: block; position: relative;" >전체 추천 장소리스트</div>
 </div>

<section class= "headercetioncss2">
    <div class="link-box">
    <%int i = 0; %>
    
  			<%for(i = 0; i < articleList2.size(); i++) {%>
        <div class="box-0" >
            <div class="box-0-1">
               <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 	</span>
                <div id="slider<%=i%>" class="slider" >
                    <a  class="control_next">></a>
                    <a  class="control_prev"><</a>
                    <ul>	
                   
                    
                   	  <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList2.get(i).getSub_img1()%>" style=" width:100%; height:100%; "></li> 
                   	    <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList2.get(i).getMain_img()%>" style=" width:100%; height:100%; "></li> 
                   	  <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList2.get(i).getSub_img2()%>" style=" width:100%; height:100%; "></li>  
                   	  <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList2.get(i).getSub_img3()%>" style=" width:100%; height:100%; "></li>  
                   	  <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList2.get(i).getSub_img4()%>" style=" width:100%; height:100%; "></li>  
                   	 
                    </ul> 
                  
                  </div>
            </div>
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
            <div class="box-0-2">
                <div class="box-0-2_box">
                  <strong style="font-size: 18px;" ><%= articleList2.get(i).getRoom_title() %>룸</strong> 
                   <span>(최소인원 <%=articleList2.get(i).getMin_personnel() %>명/ </span>    
                   <span> 최대인원 <%=articleList2.get(i).getMax_personnel() %>명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left; font-size: 15px; color: blue">지역: </span>&nbsp
                     <span style="font-size: 12px; position: absolute  ; line-height: 23.9px;"><%= articleList2.get(i).getRoom_address() %></span>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong style="float: left; font-size: 12px"><%=articleList2.get(i).getRoom_price() %></strong>
                        <span style="font-size: 12px">원/1시간</span>
                    </div> 
                    <div style="float: right; ">
                        <strong style="font-size: 12px;">평점:</strong> 
                        <span style="font-size: 12px;">★★★★☆ 4/5</span>
                    </div>     
                </div>
                <!-- <p style="margin: 0; padding-left: 5px; padding-top: 25px;">가격</p> -->
            </div>
        </a>
        </div>
        <%
			if(i == 7)
			{
				break;
			}
        %>
        	<%}%>     
    </div>  
</section>




 <%int b = 0; %>
<!-- 전체추천장소리스트-->
 <div style="margin: 0 auto;   width: 1280px;">
<div style="margin-left: 20px; margin-top:50px; font-size: 25px;  font-weight: 700; display: block; position: relative;" >지역별 추천 장소리스트</div>
</div>
<!--지역별 추천 장소리스트-->
<section class= "headercetioncss2-1">
    <!-- <h1 style="text-align: center; font-size: 30px; margin-bottom: 0px;"></h1> -->
    
    <div class="local">
        <ul class="tabs">
            <li class="tab-link current" data-tab="tab-1"><a href="javascript:void(0);" onclick="getvalue();">서울</a></li>
            <li class="tab-link" data-tab="tab-2"><a href="javascript:void(0);" onclick="getvalue1();">경기도</a></li>
            <li class="tab-link" data-tab="tab-3"><a href="javascript:void(0);" onclick="getvalue2();">강원도</a></li>
            <li class="tab-link" data-tab="tab-4"><a href="javascript:void(0);" onclick="getvalue3();">충청도</a></li>
            <li class="tab-link" data-tab="tab-5"><a href="javascript:void(0);" onclick="getvalue4();">전라도</a></li>
            <li class="tab-link" data-tab="tab-6"><a href="javascript:void(0);" onclick="getvalue5();">경상도</a></li>
            <li class="tab-link" data-tab="tab-7"><a href="javascript:void(0);" onclick="getvalue6();">제주도</a></li>
        </ul>
    </div>
<!-- 지역별 탭바 -->
<!-- 서울탭 -->

<div id="tab-1" class="tab-content current"> 
        <div class="link-box1">
  		
  			<%for(b = 0; b < articleList.size(); b++) {%>
            <div class="box-0">	
                <div class="box-0-1">
                     <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
			 		 <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">		
			 		<img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList.get(b).getMain_img()%>" style=" width:100%; height:100%; ">
			 		 </a> 
                </div>
   
   <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">		
                <div class="box-0-2">
                    <div class="box-0-2_box">
                   <strong style="font-size: 18px;" ><%= articleList.get(b).getRoom_title() %>룸</strong> 
                   <span>(최소인원 <%=articleList.get(b).getMin_personnel() %>명/ </span>    
                   <span> 최대인원 <%=articleList.get(b).getMax_personnel() %>명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left; font-size: 15px; color: blue">지역: </span>&nbsp
                     <span style="font-size: 12px; position: absolute  ; line-height: 23.9px;"><%= articleList.get(b).getRoom_address() %></span>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong style="float: left; font-size: 12px"><%=articleList.get(b).getRoom_price() %></strong>
                        <span style="font-size: 12px">원/1시간</span>
                    </div> 
                    <div style="float: right; ">
                        <strong style="font-size: 12px;">평점:</strong> 
                        <span style="font-size: 12px;">★★★★☆ 4/5</span>
                    </div>     
                </div>
                    <!-- <p style="margin: 0; padding-left: 5px; padding-top: 25px;">가격</p> -->
                </div> 
     </a>       
            </div>
  
    <%
			if(b == 7)
			{
				break;
			}
        %>
        	<%}%>   
      
            
            
   </div> 
</div>       

<!-- 경기탭------------------------------------------------------------------------------------------ -->
<div id="tab-2" class="tab-content"> 
   <div class="link-box1">
  			<%for(b = 0; b < articleList.size(); b++) {%>
            <div class="box-0">	
                <div class="box-0-1">
                     <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
			 		 <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">		
			 		<img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList.get(b).getMain_img()%>" style=" width:100%; height:100%; ">
			 		 </a> 
                </div>
   
   <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">		
                <div class="box-0-2">
                    <div class="box-0-2_box">
                   <strong style="font-size: 18px;" ><%= articleList.get(b).getRoom_title() %>룸</strong> 
                   <span>(최소인원 <%=articleList.get(b).getMin_personnel() %>명/ </span>    
                   <span> 최대인원 <%=articleList.get(b).getMax_personnel() %>명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left; font-size: 15px; color: blue">지역: </span>&nbsp
                     <span style="font-size: 12px; position: absolute  ; line-height: 23.9px;"><%= articleList.get(b).getRoom_address() %></span>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong style="float: left; font-size: 12px"><%=articleList.get(b).getRoom_price() %></strong>
                        <span style="font-size: 12px">원/1시간</span>
                    </div> 
                    <div style="float: right; ">
                        <strong style="font-size: 12px;">평점:</strong> 
                        <span style="font-size: 12px;">★★★★☆ 4/5</span>
                    </div>     
                </div>
                    <!-- <p style="margin: 0; padding-left: 5px; padding-top: 25px;">가격</p> -->
                </div> 
     </a>       
            </div>
  
    <%
			if(b == 7)
			{
				break;
			}
        %>
        	<%}%>   
      
            
            
   </div> 
</div>       
</div>   
<!-- 강원도------------------------------------------------------------------------------------------- -->



<!-- 충청도------------------------------------------------------------------------------------------- -->



<!-- 전라도------------------------------------------------------------------------------------------- -->





<!-- 경상도------------------------------------------------------------------------------------------- --><!-- 강원도------------------------------------------------------------------------------------------- --><!-- 강원도------------------------------------------------------------------------------------------- -->




<!-- 제주도------------------------------------------------------------------------------------------- -->
<div id="tab-7" class="tab-content"> 
    <div class="link-box1">
        <div class="box-0">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
            <div class="box-0-1">
               <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAUX8fVQ-bhdoODvAaQBI7IW8MLec4xm_sxg&usqp=CAU" alt="" style=" width: 100%; height: 100%;">    
            </div>
            <div class="box-0-2">
                
                <div class="box-0-2_box">
                <strong style="font-size: 18px;" >00스터디룸</strong>     
                <span>(최소인원 1명/ </span>
                <span>최대인원 8명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left;">지역:</span>
                    <div>00시 00동</div>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong>8,000</strong>
                        <span>원/시간</span>
                    </div> 
                    <div style="float: right; ">
                        <strong >평점:</strong> 
                        <span>★★★★☆ 4/5</span>
                    </div>     
                </div>
                <!-- <p style="margin: 0; padding-left: 5px; padding-top: 25px;">가격</p> -->
            </div>
        </a>
        </div>

        <div class="box-0">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
            <div class="box-0-1">
               <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVgUBLFDB5eDJtbCa1d9Y_RCTrwJy3aMlriQ&usqp=CAU" alt="" style=" width: 100%; height: 100%;">    
            </div>

            <div class="box-0-2">
              
                <div class="box-0-2_box">
                <strong style="font-size: 18px;" >00스터디룸</strong>     
                <span>(최소인원 1명/ </span>
                <span>최대인원 8명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left;">지역:</span>
                    <div>00시 00동</div>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong>8,000</strong>
                        <span>원/시간</span>
                    </div> 
                    <div style="float: right; ">
                        <strong >평점:</strong> 
                        <span>★★★★☆ 4/5</span>
                    </div>     
                </div>
                <!-- <p style="margin: 0; padding-left: 5px; padding-top: 25px;">가격</p> -->
            </div>
        </a>
        </div>

        <div class="box-0">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
            <div class="box-0-1">
               <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh8GOP5muHYDSNl1Labrcriqk0QEBqAi_6LQ&usqp=CAU" alt="" style=" width: 100%; height: 100%;">    
            </div>

            <div class="box-0-2">
         
                <div class="box-0-2_box">
                <strong style="font-size: 18px;" >00스터디룸</strong>     
                <span>(최소인원 1명/ </span>
                <span>최대인원 8명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left;">지역:</span>
                    <div>00시 00동</div>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong>8,000</strong>
                        <span>원/시간</span>
                    </div> 
                    <div style="float: right; ">
                        <strong >평점:</strong> 
                        <span>★★★★☆ 4/5</span>
                    </div>     
                </div>
                <!-- <p style="margin: 0; padding-left: 5px; padding-top: 25px;">가격</p> -->
            </div>
        </a>
        </div>

        <div class="box-0">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
            <div class="box-0-1">
               <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
                <img src="https://cphoto.asiae.co.kr/listimglink/1/2022020811592435709_1644289164.png" alt="" style=" width: 100%; height: 100%;">    
            </div>

            <div class="box-0-2">
           
                <div class="box-0-2_box">
                <strong style="font-size: 18px;" >00스터디룸</strong>     
                <span>(최소인원 1명/ </span>
                <span>최대인원 8명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left;">지역:</span>
                    <div>00시 00동</div>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong>8,000</strong>
                        <span>원/시간</span>
                    </div> 
                    <div style="float: right; ">
                        <strong >평점:</strong> 
                        <span>★★★★☆ 4/5</span>
                    </div>     
                </div>
                <!-- <p style="margin: 0; padding-left: 5px; padding-top: 25px;">가격</p> -->
            </div>
        </a>
        </div>

        <div class="box-0">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
            <div class="box-0-1">
               <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY_omQm4OG_rHwKbztXQ0wGXTw25Ev6vBlqfZehfwYYuuIwKsJvyrUWTq_W83SVG6I4gA&usqp=CAU" alt="" style=" width: 100%; height: 100%;">    
            </div>

            <div class="box-0-2">
            
                <div class="box-0-2_box">
                <strong style="font-size: 18px;" >00스터디룸</strong>     
                <span>(최소인원 1명/ </span>
                <span>최대인원 8명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left;">지역:</span>
                    <div>00시 00동</div>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong>8,000</strong>
                        <span>원/시간</span>
                    </div> 
                    <div style="float: right; ">
                        <strong >평점:</strong> 
                        <span>★★★★☆ 4/5</span>
                    </div>     
                </div>
                <!-- <p style="margin: 0; padding-left: 5px; padding-top: 25px;">가격</p> -->
            </div>
        </a>
        </div>

        <div class="box-0">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
            <div class="box-0-1">
               <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxhIH6RElGcIYZxNsubJhnMFDXHI11kbnJ-dlHX9SnFIVr_CqANdC8TifoRiqW3XxunfY&usqp=CAU" alt="" style=" width: 100%; height: 100%;">    
            </div>

            <div class="box-0-2">
       
                <div class="box-0-2_box">
                <strong style="font-size: 18px;" >00스터디룸</strong>     
                <span>(최소인원 1명/ </span>
                <span>최대인원 8명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left;">지역:</span>
                    <div>00시 00동</div>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong>8,000</strong>
                        <span>원/시간</span>
                    </div> 
                    <div style="float: right; ">
                        <strong >평점:</strong> 
                        <span>★★★★☆ 4/5</span>
                    </div>     
                </div>
                <!-- <p style="margin: 0; padding-left: 5px; padding-top: 25px;">가격</p> -->
            </div>
        </a>
        </div>

        <div class="box-0">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
            <div class="box-0-1">
               <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxhIH6RElGcIYZxNsubJhnMFDXHI11kbnJ-dlHX9SnFIVr_CqANdC8TifoRiqW3XxunfY&usqp=CAU" alt="" style=" width: 100%; height: 100%;">    
            </div>

            <div class="box-0-2">
         
                <div class="box-0-2_box">
                <strong style="font-size: 18px;" >00스터디룸</strong>     
                <span>(최소인원 1명/ </span>
                <span>최대인원 8명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left;">지역:</span>
                    <div>00시 00동</div>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong>8,000</strong>
                        <span>원/시간</span>
                    </div> 
                    <div style="float: right; ">
                        <strong >평점:</strong> 
                        <span>★★★★☆ 4/5</span>
                    </div>     
                </div>
                <!-- <p style="margin: 0; padding-left: 5px; padding-top: 25px;">가격</p> -->
            </div>
        </a>
        </div>

        <div class="box-0">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
            <div class="box-0-1">
               <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			  </span>	
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxhIH6RElGcIYZxNsubJhnMFDXHI11kbnJ-dlHX9SnFIVr_CqANdC8TifoRiqW3XxunfY&usqp=CAU" alt="" style=" width: 100%; height: 100%;">    
            </div>

            <div class="box-0-2">
              
                <div class="box-0-2_box">
                <strong style="font-size: 18px;" >00스터디룸</strong>     
                <span>(최소인원 1명/ </span>
                <span>최대인원 8명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left;">지역:</span>
                    <div>00시 00동</div>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong>8,000</strong>
                        <span>원/시간</span>
                    </div> 
                    <div style="float: right; ">
                        <strong >평점:</strong> 
                        <span>★★★★☆ 4/5</span>
                    </div>     
                </div>
                <!-- <p style="margin: 0; padding-left: 5px; padding-top: 25px;">가격</p> -->
            </div>
        </a>
        </div> 
    </div>
</div>   



</section>
<!--지역별 추천 장소리스트-->

<!--  등록된장소 전체보기-->
<section class="headercetioncss3">
    <div class="hea3-0">
        <a href="janso_subpage.learnup.com?page=1&searchs=&keworld=" class="hea3-1" > 등록된장소전체보기</a>
    </div>
</section>
<!--  등록된장소 전체보기-->

<%@include file ="./footer.jsp" %>

</html>