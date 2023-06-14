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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script src="./js/janso_main.js"> </script>
    <script src="./js/janso_main._slide.js"> </script>
     <script src="./js/janso_sub._slide.js"> </script>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
</head>

<body>
<!-- 헤더 -->
 <%@include file ="./header.jsp" %>
	<div id="output"></div>
 <%
	ArrayList<Janso_product_registration> articleList=(ArrayList<Janso_product_registration>)request.getAttribute("articleList");  //서울
	ArrayList<Janso_product_registration> articleList2=(ArrayList<Janso_product_registration>)request.getAttribute("articleList2");  //경기
	ArrayList<Janso_product_registration> articleList3=(ArrayList<Janso_product_registration>)request.getAttribute("articleList3");  //강원
	ArrayList<Janso_product_registration> articleList4=(ArrayList<Janso_product_registration>)request.getAttribute("articleList4");  //충청
	ArrayList<Janso_product_registration> articleList5=(ArrayList<Janso_product_registration>)request.getAttribute("articleList5");  //전라
	ArrayList<Janso_product_registration> articleList6=(ArrayList<Janso_product_registration>)request.getAttribute("articleList6");  //경상
	ArrayList<Janso_product_registration> articleList7=(ArrayList<Janso_product_registration>)request.getAttribute("articleList7");  //제주

	ArrayList<Janso_product_registration> articleListall=(ArrayList<Janso_product_registration>)request.getAttribute("articleListall"); //전체
 	String directory = (String)request.getAttribute("directory");
 	String files[] = new File(directory).list();	
 %> 
 
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
    
  			<%for(i = 0; i < articleListall.size(); i++) {%>
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
                   
                    
                   	  <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleListall.get(i).getSub_img1()%>" style=" width:100%; height:100%; "></li> 
                   	    <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleListall.get(i).getMain_img()%>" style=" width:100%; height:100%; "></li> 
                   	  <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleListall.get(i).getSub_img2()%>" style=" width:100%; height:100%; "></li>  
                   	  <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleListall.get(i).getSub_img3()%>" style=" width:100%; height:100%; "></li>  
                   	  <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleListall.get(i).getSub_img4()%>" style=" width:100%; height:100%; "></li>  
                   	 
                    </ul> 
                  
                  </div>
            </div>
            <a href="janso_detail.learnup.com?roomnumber=<%=articleListall.get(i).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">
            <div class="box-0-2">
                <div class="box-0-2_box">
                  <strong style="font-size: 18px;" ><%= articleListall.get(i).getRoom_title() %>룸</strong> 
                   <span>(최소인원 <%=articleListall.get(i).getMin_personnel() %>명/ </span>    
                   <span> 최대인원 <%=articleListall.get(i).getMax_personnel() %>명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left; font-size: 15px; color: blue">지역: </span>&nbsp
                     <span style="font-size: 12px; position: absolute  ; line-height: 23.9px;"><%= articleListall.get(i).getRoom_address() %></span>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong style="float: left; font-size: 12px"><%=articleListall.get(i).getRoom_price() %></strong>
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
            <li class="tab-link current" data-tab="tab-1"><a href="javascript:void(0)"  id="addp" onclick="getvalue();"  >서울</a></li>
            <li class="tab-link" data-tab="tab-2"><a href="javascript:void(0);" id="testsp"  onclick="getvalue1();">경기도</a></li>
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
			 		 <a href="janso_detail.learnup.com?roomnumber=<%=articleList.get(b).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">		
			 		<img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList.get(b).getMain_img()%>" style=" width:100%; height:100%; ">
			 		 </a> 
                </div>
   
   <a href="janso_detail.learnup.com?roomnumber=<%=articleList.get(b).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">		
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
  			<%for(b = 0; b < articleList2.size(); b++) {%>
            <div class="box-0">	
                <div class="box-0-1">
                     <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
			 		 <a href="janso_detail.learnup.com?roomnumber=<%=articleList2.get(b).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">		
			 		<img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList2.get(b).getMain_img()%>" style=" width:100%; height:100%; ">
			 		 </a> 
                </div>
   
   <a href="janso_detail.learnup.com?roomnumber=<%=articleList2.get(b).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">		
                <div class="box-0-2">
                    <div class="box-0-2_box">
                   <strong style="font-size: 18px;" ><%= articleList2.get(b).getRoom_title() %>룸</strong> 
                   <span>(최소인원 <%=articleList2.get(b).getMin_personnel() %>명/ </span>    
                   <span> 최대인원 <%=articleList2.get(b).getMax_personnel() %>명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left; font-size: 15px; color: blue">지역: </span>&nbsp
                     <span style="font-size: 12px; position: absolute  ; line-height: 23.9px;"><%= articleList2.get(b).getRoom_address() %></span>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong style="float: left; font-size: 12px"><%=articleList2.get(b).getRoom_price() %></strong>
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
<div id="tab-3" class="tab-content"> 
   <div class="link-box1">
  			<%for(b = 0; b < articleList3.size(); b++) {%>
            <div class="box-0">	
                <div class="box-0-1">
                     <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
			 		 <a href="janso_detail.learnup.com?roomnumber=<%=articleList3.get(b).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">		
			 		<img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList3.get(b).getMain_img()%>" style=" width:100%; height:100%; ">
			 		 </a> 
                </div>
   
   <a href="janso_detail.learnup.com?roomnumber=<%=articleList3.get(b).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">		
                <div class="box-0-2">
                    <div class="box-0-2_box">
                   <strong style="font-size: 18px;" ><%= articleList3.get(b).getRoom_title() %>룸</strong> 
                   <span>(최소인원 <%=articleList3.get(b).getMin_personnel() %>명/ </span>    
                   <span> 최대인원 <%=articleList3.get(b).getMax_personnel() %>명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left; font-size: 15px; color: blue">지역: </span>&nbsp
                     <span style="font-size: 12px; position: absolute  ; line-height: 23.9px;"><%= articleList3.get(b).getRoom_address() %></span>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong style="float: left; font-size: 12px"><%=articleList3.get(b).getRoom_price() %></strong>
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


<!-- 충청도------------------------------------------------------------------------------------------- -->
<div id="tab-4" class="tab-content"> 
   <div class="link-box1">
  			<%for(b = 0; b < articleList4.size(); b++) {%>
            <div class="box-0">	
                <div class="box-0-1">
                     <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
			 		 <a href="janso_detail.learnup.com?roomnumber=<%=articleList4.get(b).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">		
			 		<img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList4.get(b).getMain_img()%>" style=" width:100%; height:100%; ">
			 		 </a> 
                </div>
   
   <a href="janso_detail.learnup.com?roomnumber=<%=articleList4.get(b).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">		
                <div class="box-0-2">
                    <div class="box-0-2_box">
                   <strong style="font-size: 18px;" ><%= articleList4.get(b).getRoom_title() %>룸</strong> 
                   <span>(최소인원 <%=articleList4.get(b).getMin_personnel() %>명/ </span>    
                   <span> 최대인원 <%=articleList4.get(b).getMax_personnel() %>명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left; font-size: 15px; color: blue">지역: </span>&nbsp
                     <span style="font-size: 12px; position: absolute  ; line-height: 23.9px;"><%= articleList4.get(b).getRoom_address() %></span>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong style="float: left; font-size: 12px"><%=articleList4.get(b).getRoom_price() %></strong>
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


<!-- 전라도------------------------------------------------------------------------------------------- -->
<div id="tab-5" class="tab-content"> 
   <div class="link-box1">
  			<%for(b = 0; b < articleList5.size(); b++) {%>
            <div class="box-0">	
                <div class="box-0-1">
                     <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
			 		 <a href="janso_detail.learnup.com?roomnumber=<%=articleList5.get(b).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">		
			 		<img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList5.get(b).getMain_img()%>" style=" width:100%; height:100%; ">
			 		 </a> 
                </div>
   
   <a href="janso_detail.learnup.com?roomnumber=<%=articleList5.get(b).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">		
                <div class="box-0-2">
                    <div class="box-0-2_box">
                   <strong style="font-size: 18px;" ><%= articleList5.get(b).getRoom_title() %>룸</strong> 
                   <span>(최소인원 <%=articleList5.get(b).getMin_personnel() %>명/ </span>    
                   <span> 최대인원 <%=articleList5.get(b).getMax_personnel() %>명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left; font-size: 15px; color: blue">지역: </span>&nbsp
                     <span style="font-size: 12px; position: absolute  ; line-height: 23.9px;"><%= articleList5.get(b).getRoom_address() %></span>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong style="float: left; font-size: 12px"><%=articleList5.get(b).getRoom_price() %></strong>
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




<!-- 경상도------------------------------------------------------------------------------------------- --><!-- 강원도------------------------------------------------------------------------------------------- --><!-- 강원도------------------------------------------------------------------------------------------- -->
<div id="tab-6" class="tab-content"> 
   <div class="link-box1">
  			<%for(b = 0; b < articleList6.size(); b++) {%>
            <div class="box-0">	
                <div class="box-0-1">
                     <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
			 		 <a href="janso_detail.learnup.com?roomnumber=<%=articleList6.get(b).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">		
			 		<img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList6.get(b).getMain_img()%>" style=" width:100%; height:100%; ">
			 		 </a> 
                </div>
   
   <a href="janso_detail.learnup.com?roomnumber=<%=articleList6.get(b).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">		
                <div class="box-0-2">
                    <div class="box-0-2_box">
                   <strong style="font-size: 18px;" ><%= articleList6.get(b).getRoom_title() %>룸</strong> 
                   <span>(최소인원 <%=articleList6.get(b).getMin_personnel() %>명/ </span>    
                   <span> 최대인원 <%=articleList6.get(b).getMax_personnel() %>명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left; font-size: 15px; color: blue">지역: </span>&nbsp
                     <span style="font-size: 12px; position: absolute  ; line-height: 23.9px;"><%= articleList6.get(b).getRoom_address() %></span>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong style="float: left; font-size: 12px"><%=articleList6.get(b).getRoom_price() %></strong>
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



<!-- 제주도------------------------------------------------------------------------------------------- -->
<div id="tab-7" class="tab-content"> 
   <div class="link-box1">
  			<%for(b = 0; b < articleList7.size(); b++) {%>
            <div class="box-0">	
                <div class="box-0-1">
                     <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
			 		 <a href="janso_detail.learnup.com?roomnumber=<%=articleList7.get(b).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">		
			 		<img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList7.get(b).getMain_img()%>" style=" width:100%; height:100%; ">
			 		 </a> 
                </div>
   
   <a href="janso_detail.learnup.com?roomnumber=<%=articleList7.get(b).getRoom_number()%>" style=" text-decoration: none; box-sizing: border-box;">		
                <div class="box-0-2">
                    <div class="box-0-2_box">
                   <strong style="font-size: 18px;" ><%= articleList7.get(b).getRoom_title() %>룸</strong> 
                   <span>(최소인원 <%=articleList7.get(b).getMin_personnel() %>명/ </span>    
                   <span> 최대인원 <%=articleList7.get(b).getMax_personnel() %>명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left; font-size: 15px; color: blue">지역: </span>&nbsp
                     <span style="font-size: 12px; position: absolute  ; line-height: 23.9px;"><%= articleList7.get(b).getRoom_address() %></span>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong style="float: left; font-size: 12px"><%=articleList7.get(b).getRoom_price() %></strong>
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