<%@page import="vo.Janso_review"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>리뷰 </title>
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style type="text/css">
 /*평점*/
.star_junsu{
   
    text-align: center;
    border-style: none;
}
.star_junsu_title{
	font-size:14pt;
	font-weight:bold;
	height: 40px;
}

fieldset,
label {
  margin: 0;
  padding: 0;
}

/****** Style Star Rating Widget *****/

.rating {
  border: none;
  left : -260px;
  text-align: center;
  margin-top:0px;
}

.rating > input {
  display: none;

}
.rating > label:before {
  margin: 5px;
  font-size: 1.75em;
  font-family: FontAwesome;
  display: inline-block;
  content: "\f005";
}

.rating > .half:before {
  content: "\f089";
  position: absolute;
}

.rating > label {
  color: #ddd;
  float: right;
  cursor:pointer;
}



/*


.rating > input:checked ~ label, 
.rating:not(:checked) ,
.rating:not(:checked) ~ label {
  color: #ffd700;
} 

*/
/*
.rating > input:checked + label, 
.rating > input:checked ~ label,
.rating > label:hover ~ input:checked ~ label,
.rating > input:checked ~ label ~ label {
  color: #ffed85;
}
*/

/***** CSS Magic to Highlight Stars on Hover *****/


.custom-btn {
  width: 80px;
  height: 27px;
  color: #fff;
  border-radius: 5px;
  padding 10px;
  font-family: 'Lato', sans-serif;
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
   7px 7px 20px 0px rgba(0,0,0,.1),
   4px 4px 5px 0px rgba(0,0,0,.1);
  outline: none;
}

.btn-2 {
  background: rgb(96,9,240);
  background: linear-gradient(0deg, rgba(96,9,240,1) 0%, rgba(129,5,240,1) 100%);
  border: none;
  
}
.btn-2:before {
  height: 0%;
  width: 2px;
}
/*
.btn-2:hover {
  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
              -4px -4px 6px 0 rgba(116, 125, 136, .5), 
    inset -4px -4px 6px 0 rgba(255,255,255,.2),
    inset 4px 4px 6px 0 rgba(0, 0, 0, .4);
}

</style>

<style type="text/css">

.p_boxsd
{
	margin: 0;
	height: 100px;

}


</style>



</head>
<%

ArrayList<Janso_review> articleList=(ArrayList<Janso_review>)request.getAttribute("reviewall");
String nick = request.getParameter("nick");
String roomnssd = request.getParameter("roomnssd");
double avgstar =  (double)request.getAttribute("avgstar");
//out.println(nick); // 전송된 변수 값 출력
//out.println(roomnssd);
%>

<script type="text/javascript">

//HTML 요소 선택
const ratingField = document.querySelector('.star_junsu');
const ratingInputs = ratingField.querySelectorAll('input[type="radio"]');

// 내점수 설정
const myScore = 3.0;

// 점수에 가장 근접한 별점 선택
let selectedRating = null;
let closestDifference = Infinity;

ratingInputs.forEach((input) => {
	  const value = parseFloat(input.value);
	  const difference = Math.abs(value - myScore);

	  if (difference < closestDifference) {
	    closestDifference = difference;
	    selectedRating = input;
	  }
	});

// 별점 체크
if (selectedRating) {
  selectedRating.checked = true;
}

</script>


<body>

<section id="writeForm">
  
  
		<form action="janso_detailreviewin.learnup.com" method="post" name="boardform">
		<div class="star_junsu_title">이용후기<span style="color: blue"><%=articleList.size()  %></span>개 <span class="dot"></span> 평균평점<span style="color: blue"><%= avgstar %></span>점 
		<% if(nick != ""){%>
		<input type="submit" value="리뷰작성" style="float: right;" class="custom-btn btn-2"/>
		<%} %>
		</div>  
			<input type="hidden" name="nickname" value="<%=nick %>" />
			<input type="hidden" name="room_number" value="<%=roomnssd%>">
			<input type="hidden" name="review_re_ref" value=""> 
			<input type="hidden" name="review_re_lev" value="">
			<input type="hidden" name="review_re_seq" value="">
		
		<% for(int i = 0; i< articleList.size(); i++) {%>
	
			<div style="border: solid; margin-bottom: 20px;">
			<table style="margin: 0">
			<tbody >
			<tr>
			<td colspan="3" rowspan="3">  <img src="data:image/png;base64,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"  style="width: 150px; height: 150px; padding: 25px; "></td>
			<td colspan="3" style="width: 150px; height: 50px;"> <%=articleList.get(i).getNickname() %></td>
			<td style="width: 200px; text-align: right;" >
			평점: <%= articleList.get(i).getReview_Evaluation() %>
			</td>
			<td style="width: 200px">
			   </div>
			    <div class="star_junsu"">
              		<%
					double inputValue = articleList.get(i).getReview_Evaluation();
					%>
					
					
						<% 	if (inputValue == 0.0) { %>
						       	<div class="star_junsu">
				                <fieldset class="rating">
								<label class = "full"  title="Awesome - 5 stars"></label>
								<label class="half"  title="Pretty good - 4.5 stars"></label>
								<label class = "full"  title="Pretty good - 4 stars"></label>
								<label class="half" title="Meh - 3.5 stars"></label>
								<label class = "full"  title="Meh - 3 stars"></label>
								<label class="half"  title="Kinda bad - 2.5 stars"></label>
								<label class = "full"  title="Kinda bad - 2 stars"></label>
								<label class="half"  title="Meh - 1.5 stars"></label>
								<label class = "full"  title="Sucks big time - 1 star" ></label>
								<label class="half" title="Sucks big time - 0.5 stars" ></label>
								</fieldset>			
				            	</div>
		
						<%	} else if (inputValue == 0.5) { %>
    						   	<div class="star_junsu">
				                <fieldset class="rating">
								<label class = "full"  title="Awesome - 5 stars"></label>
								<label class="half"  title="Pretty good - 4.5 stars"></label>
								<label class = "full"  title="Pretty good - 4 stars"></label>
								<label class="half" title="Meh - 3.5 stars"></label>
								<label class = "full"  title="Meh - 3 stars"></label>
								<label class="half"  title="Kinda bad - 2.5 stars"></label>
								<label class = "full"  title="Kinda bad - 2 stars"></label>
								<label class="half"  title="Meh - 1.5 stars"></label>
								<label class = "full"  title="Sucks big time - 1 star" ></label>
								<label class="half" title="Sucks big time - 0.5 stars" style=" color: #ffd700;"></label>
								</fieldset>			
				            	</div>
						<%	} else if (inputValue == 1.0) { %>
						 	   <div class="star_junsu">
				                <fieldset class="rating">
								<label class = "full"  title="Awesome - 5 stars"></label>
								<label class="half"  title="Pretty good - 4.5 stars"></label>
								<label class = "full"  title="Pretty good - 4 stars"></label>
								<label class="half" title="Meh - 3.5 stars"></label>
								<label class = "full"  title="Meh - 3 stars"></label>
								<label class="half"  title="Kinda bad - 2.5 stars"></label>
								<label class = "full"  title="Kinda bad - 2 stars"></label>
								<label class="half"  title="Meh - 1.5 stars"></label>
								<label class = "full"  title="Sucks big time - 1 star" style=" color: #ffd700;"></label>
								<label class="half" title="Sucks big time - 0.5 stars" style=" color: #ffd700;"></label>
								</fieldset>			
				            	</div>
				
						<%	} else if (inputValue == 1.5) { %>
				 	 	   		<div class="star_junsu">
				                <fieldset class="rating">
								<label class = "full"  title="Awesome - 5 stars"></label>
								<label class="half"  title="Pretty good - 4.5 stars"></label>
								<label class = "full"  title="Pretty good - 4 stars"></label>
								<label class="half" title="Meh - 3.5 stars"></label>
								<label class = "full"  title="Meh - 3 stars"></label>
								<label class="half"  title="Kinda bad - 2.5 stars"></label>
								<label class = "full"  title="Kinda bad - 2 stars"></label>
								<label class="half"  title="Meh - 1.5 stars" style=" color: #ffd700;"></label>
								<label class = "full"  title="Sucks big time - 1 star" style=" color: #ffd700;"></label>
								<label class="half" title="Sucks big time - 0.5 stars" style=" color: #ffd700;"></label>
								</fieldset>			
				            	</div>
					
						<%	} else if (inputValue == 2.0) { %>
						  	   	<div class="star_junsu">
				                <fieldset class="rating">
								<label class = "full"  title="Awesome - 5 stars"></label>
								<label class="half"  title="Pretty good - 4.5 stars"></label>
								<label class = "full"  title="Pretty good - 4 stars"></label>
								<label class="half" title="Meh - 3.5 stars"></label>
								<label class = "full"  title="Meh - 3 stars"></label>
								<label class="half"  title="Kinda bad - 2.5 stars"></label>
								<label class = "full"  title="Kinda bad - 2 stars" style=" color: #ffd700;"></label>
								<label class="half"  title="Meh - 1.5 stars" style=" color: #ffd700;"></label>
								<label class = "full"  title="Sucks big time - 1 star" style=" color: #ffd700;"></label>
								<label class="half" title="Sucks big time - 0.5 stars" style=" color: #ffd700;"></label>
								</fieldset>			
				            	</div>
						
						<%	} else if (inputValue == 2.5) { %>
						  	   	<div class="star_junsu">
				                <fieldset class="rating">
								<label class = "full"  title="Awesome - 5 stars"></label>
								<label class="half"  title="Pretty good - 4.5 stars"></label>
								<label class = "full"  title="Pretty good - 4 stars"></label>
								<label class="half" title="Meh - 3.5 stars"></label>
								<label class = "full"  title="Meh - 3 stars"></label>
								<label class="half"  title="Kinda bad - 2.5 stars" style=" color: #ffd700;"></label>
								<label class = "full"  title="Kinda bad - 2 stars" style=" color: #ffd700;"></label>
								<label class="half"  title="Meh - 1.5 stars" style=" color: #ffd700;"></label>
								<label class = "full"  title="Sucks big time - 1 star" style=" color: #ffd700;"></label>
								<label class="half" title="Sucks big time - 0.5 stars" style=" color: #ffd700;"></label>
								</fieldset>			
				            	</div>
					
						<%	} else if (inputValue == 3.0) { %>
						  	   	<div class="star_junsu">
				                <fieldset class="rating">
								<label class = "full"  title="Awesome - 5 stars"></label>
								<label class="half"  title="Pretty good - 4.5 stars"></label>
								<label class = "full"  title="Pretty good - 4 stars"></label>
								<label class="half" title="Meh - 3.5 stars"></label>
								<label class = "full"  title="Meh - 3 stars" style=" color: #ffd700;"></label>
								<label class="half"  title="Kinda bad - 2.5 stars" style=" color: #ffd700;"></label>
								<label class = "full"  title="Kinda bad - 2 stars" style=" color: #ffd700;"></label>
								<label class="half"  title="Meh - 1.5 stars" style=" color: #ffd700;"></label>
								<label class = "full"  title="Sucks big time - 1 star" style=" color: #ffd700;"></label>
								<label class="half" title="Sucks big time - 0.5 stars" style=" color: #ffd700;"></label>
								</fieldset>			
				            	</div>	
					
						<%	} else if (inputValue == 3.5) { %>
						  	   	<div class="star_junsu">
				                <fieldset class="rating">
								<label class = "full"  title="Awesome - 5 stars"></label>
								<label class="half"  title="Pretty good - 4.5 stars"></label>
								<label class = "full"  title="Pretty good - 4 stars"></label>
								<label class="half" title="Meh - 3.5 stars"style=" color: #ffd700;"></label>
								<label class = "full"  title="Meh - 3 stars"style=" color: #ffd700;"></label>
								<label class="half"  title="Kinda bad - 2.5 stars" style=" color: #ffd700;"></label>
								<label class = "full"  title="Kinda bad - 2 stars" style=" color: #ffd700;"></label>
								<label class="half"  title="Meh - 1.5 stars" style=" color: #ffd700;"></label>
								<label class = "full"  title="Sucks big time - 1 star" style=" color: #ffd700;"></label>
								<label class="half" title="Sucks big time - 0.5 stars" style=" color: #ffd700;"></label>
								</fieldset>			
				            	</div>
					
						<%	} else if (inputValue == 4.0) { %>
						  	   	<div class="star_junsu">
				                <fieldset class="rating">
								<label class = "full"  title="Awesome - 5 stars"></label>
								<label class="half"  title="Pretty good - 4.5 stars"></label>
								<label class = "full"  title="Pretty good - 4 stars"style=" color: #ffd700;"></label>
								<label class="half" title="Meh - 3.5 stars"style=" color: #ffd700;"></label>
								<label class = "full"  title="Meh - 3 stars"style=" color: #ffd700;"></label>
								<label class="half"  title="Kinda bad - 2.5 stars" style=" color: #ffd700;"></label>
								<label class = "full"  title="Kinda bad - 2 stars" style=" color: #ffd700;"></label>
								<label class="half"  title="Meh - 1.5 stars" style=" color: #ffd700;"></label>
								<label class = "full"  title="Sucks big time - 1 star" style=" color: #ffd700;"></label>
								<label class="half" title="Sucks big time - 0.5 stars" style=" color: #ffd700;"></label>
								</fieldset>			
				            	</div>
						
						<%	}else if (inputValue == 4.5) { %>
						  	   	<div class="star_junsu">
				                <fieldset class="rating">
								<label class = "full"  title="Awesome - 5 stars"></label>
								<label class="half"  title="Pretty good - 4.5 stars"style=" color: #ffd700;"></label>
								<label class = "full"  title="Pretty good - 4 stars"style=" color: #ffd700;"></label>
								<label class="half" title="Meh - 3.5 stars"style=" color: #ffd700;"></label>
								<label class = "full"  title="Meh - 3 stars"style=" color: #ffd700;"></label>
								<label class="half"  title="Kinda bad - 2.5 stars" style=" color: #ffd700;"></label>
								<label class = "full"  title="Kinda bad - 2 stars" style=" color: #ffd700;"></label>
								<label class="half"  title="Meh - 1.5 stars" style=" color: #ffd700;"></label>
								<label class = "full"  title="Sucks big time - 1 star" style=" color: #ffd700;"></label>
								<label class="half" title="Sucks big time - 0.5 stars" style=" color: #ffd700;"></label>
								</fieldset>			
				            	</div>
							
						<%	}else if (inputValue == 5.0) { %>
						  	   	<div class="star_junsu">
				                <fieldset class="rating">
								<label class = "full"  title="Awesome - 5 stars"style=" color: #ffd700;"></label>
								<label class="half"  title="Pretty good - 4.5 stars"style=" color: #ffd700;"></label>
								<label class = "full"  title="Pretty good - 4 stars"style=" color: #ffd700;"></label>
								<label class="half" title="Meh - 3.5 stars"style=" color: #ffd700;"></label>
								<label class = "full"  title="Meh - 3 stars"style=" color: #ffd700;"></label>
								<label class="half"  title="Kinda bad - 2.5 stars" style=" color: #ffd700;"></label>
								<label class = "full"  title="Kinda bad - 2 stars" style=" color: #ffd700;"></label>
								<label class="half"  title="Meh - 1.5 stars" style=" color: #ffd700;"></label>
								<label class = "full"  title="Sucks big time - 1 star" style=" color: #ffd700;"></label>
								<label class="half" title="Sucks big time - 0.5 stars" style=" color: #ffd700;"></label>
								</fieldset>			
				            	</div>
						<%}%>
							
            	</div>
			</td>
			</tr>
			<tr>
			<td colspan="5" >
				<p style="white-space: pre-line;" class="p_boxsd"><%= articleList.get(i).getReview_write()  %></p> 
				
			
			</td>
			</tr>
			<td colspan="5" style="height: 15px; text-align: right;">
			  등록날짜: <%= articleList.get(i).getReview_date()  %>
			
			
			</td>
			</tr>
			</tbody>
			</table>
			</div>
			<%} %>
			<section id="commandCell">
				 
			
			</section>
		</form>
	</section>
</body>

</html>