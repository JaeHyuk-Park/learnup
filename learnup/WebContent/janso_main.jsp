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
<body>
<!-- 헤더 -->
 <%@include file ="./header.jsp" %>

 <%
	ArrayList<Janso_product_registration> articleList=(ArrayList<Janso_product_registration>)request.getAttribute("articleList");
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
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//lecture.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    강의실
                </div>     
            </a>
        </div>

        <div  class="bt-box">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//study.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    스터디룸
                </div>     
            </a>
        </div>
        <div  class="bt-box">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//shooting.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    촬영스튜디오
                </div>     
            </a>
        </div>

        <div  class="bt-box">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//vocal_studio.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    보컬연습실
                </div>     
            </a>
        </div>
        <div  class="bt-box">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//instrumental_room.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    악기연습실
                </div>     
            </a>
        </div>

        <div  class="bt-box">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//kitchen.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    공유주방
                </div>     
            </a>
        </div>


        <div  class="bt-box">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
                <img src="./image//gathering.svg" alt="">
                <div class="keyword" style="font-size: 20px;">
                    파티룸
                </div>     
            </a>
        </div>


        <div  class="bt-box">
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
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
    
  			<%for(i = 0; i < articleList.size(); i++) {%>
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
                   
                      <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList.get(i).getMain_img()%>" style=" width:100%; height:100%; "></li>
                   	  <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList.get(i).getSub_img1()%>" style=" width:100%; height:100%; "></li>  
                   	  <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList.get(i).getSub_img2()%>" style=" width:100%; height:100%; "></li>  
                   	  <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList.get(i).getSub_img3()%>" style=" width:100%; height:100%; "></li>  
                   	  <li><img src="${pageContext.request.contextPath }/jansoproduct/<%=articleList.get(i).getSub_img4()%>" style=" width:100%; height:100%; "></li>  
                   	 
                    </ul> 
                  
                  </div>
            </div>
            <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
            <div class="box-0-2">
                <div class="box-0-2_box">
                  <strong style="font-size: 18px;" ><%= articleList.get(i).getRoom_title() %>룸</strong> 
                   <span>(최소인원 <%=articleList.get(i).getMin_personnel() %>명/ </span>    
                   <span> 최대인원 <%=articleList.get(i).getMax_personnel() %>명) </span>
                </div>
                <div class="box-0-2_box">
                    <span style="float: left; font-size: 15px; color: blue">지역: </span>&nbsp
                     <span style="font-size: 12px; position: absolute  ; line-height: 23.9px;"><%= articleList.get(i).getRoom_address() %></span>
                </div>
                <div class="box-0-2_box">
                    <div style="float: left;">
                        <strong style="float: left; font-size: 12px"><%=articleList.get(i).getRoom_price() %></strong>
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




<!-- 전체추천장소리스트-->
 <div style="margin: 0 auto;   width: 1280px;">
<div style="margin-left: 20px; margin-top:50px; font-size: 25px;  font-weight: 700; display: block; position: relative;" >지역별 추천 장소리스트</div>
</div>
<!--지역별 추천 장소리스트-->
<section class= "headercetioncss2-1">
    <!-- <h1 style="text-align: center; font-size: 30px; margin-bottom: 0px;"></h1> -->
    
    <div class="local">
        <ul class="tabs">
            <li class="tab-link current" data-tab="tab-1">서울</li>
            <li class="tab-link" data-tab="tab-2">경기도</li>
            <li class="tab-link" data-tab="tab-3">강원도</li>
            <li class="tab-link" data-tab="tab-4">충청도</li>
            <li class="tab-link" data-tab="tab-5">전라도</li>
            <li class="tab-link" data-tab="tab-6">경상도</li>
            <li class="tab-link" data-tab="tab-7">제주도</li>
        </ul>
    </div>
<!-- 지역별 탭바 -->
<!-- 서울탭 -->
<div id="tab-1" class="tab-content current"> 
        <div class="link-box1">
            <div class="box-0">	
                <div class="box-0-1">
                     <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
			 		 <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">		
			 		<img src="https://file.mk.co.kr/meet/neds/2020/03/image_readtop_2020_268720_15842621794123842.jpg" alt="" style=" width: 100%; height: 100%;">    
			 		 </a> 
                </div>
   
   <a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">		
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
                
                <div class="box-0-1">
                   <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
			 		<a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
                    <img src="https://images.chosun.com/resizer/uCnlA271mOApJ0VblQvLq73zYBY=/464x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/TLOC5JFKYNBUFQVAY3PNYOLNR4.jpg" alt="" style=" width: 100%; height: 100%;">    
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
                
                <div class="box-0-1">
                   <span  style="position : absolute; z-index: 9 " >
					 <a href="javascript:;" class="icon heart" style="text-decoration:none; color:inherit; cursor:pointer;  ">
					<img src="image/heart1.png" alt="찜하기" style=" ">
					</a>  
			 		</span>	
			 		<a href="../html/heder.html" style=" text-decoration: none; box-sizing: border-box;">
                    <img src="https://i0.wp.com/www.gangnamoneroom.com/wp-content/uploads/2021/06/20210531_133505.jpg?resize=480%2C360" alt="" style=" width: 100%; height: 100%;">    
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
                    <img src="data:image/jpeg;base64,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" alt="" style=" width: 100%; height: 100%;">    
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
                    <img src="data:image/jpeg;base64,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" alt="" style=" width: 100%; height: 100%;">    
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
                    <img src="data:image/jpeg;base64,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" alt="" style=" width: 100%; height: 100%;">    
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
                    <img src="data:image/jpeg;base64,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" alt="" style=" width: 100%; height: 100%;">    
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
                    <img src="data:image/jpeg;base64,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" alt="" style=" width: 100%; height: 100%;">    
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

<!-- 경기탭------------------------------------------------------------------------------------------ -->
<div id="tab-2" class="tab-content"> 
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
                <img src="https://www.womansense.co.kr/upload/woman/article/202009/thumb/45996-427297-sampleM.jpg" alt="" style=" width: 100%; height: 100%;">    
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
                <img src="data:image/jpeg;base64,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" alt="" style=" width: 100%; height: 100%;">    
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
        <a href="janso_subpage.learnup.com?page=1&searchs="" " class="hea3-1" > 등록된장소전체보기</a>
    </div>
</section>
<!--  등록된장소 전체보기-->

<%@include file ="./footer.jsp" %>

</html>