<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>리뷰 </title>
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<style type="text/css">

@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
	 .pastDay{ background-color: lightgray; }
	   .double div {
	       float: left;
	   }
 /*평점*/
.star_junsu{
   
    text-align: center;
    border-style: none;
}
.star_junsu_title{
	font-size:13pt;
	font-weight:bold;
}

fieldset,
label {
  margin: 0;
  padding: 0;
}



/****** Style Star Rating Widget *****/

.rating1 {
  border: none;
  left : -260px;
  text-align: center;
  margin-top:0px;
}

.rating1 > input {
  display: none;
}
.rating1 > label:before {
  margin: 5px;
  font-size: 1.75em;
  font-family: FontAwesome;
  display: inline-block;
  content: "\f005";
}

.rating1 > .half:before {
  content: "\f089";
  position: absolute;
}

.rating1 > label {
  color: #ddd;
  float: right;
  cursor:pointer;
}

/***** CSS Magic to Highlight Stars on Hover *****/

.rating1 > input:checked ~ label, /* show gold star when clicked */
.rating1:not(:checked) > label:hover, /* hover current star */
.rating1:not(:checked) > label:hover ~ label {
  color: #ffd700;
} /* hover previous stars in list */

.rating1 > input:checked + label:hover, /* hover current star when changing rating */
.rating1 > input:checked ~ label:hover,
.rating1 > label:hover ~ input:checked ~ label, /* lighten current selection */
.rating1 > input:checked ~ label:hover ~ label {
  color: #ffed85;
}


</style>
</head>
<body>
<%
String nick = request.getParameter("nick1");
String roomnssd = request.getParameter("roomnssd1");
out.println(nick); // 전송된 변수 값 출력
out.println(roomnssd);
%>
		<section id="writeForm">
		<form action="janso_detailreviewinsert.learnup.com" method="post" name="boardform">
		<input type="hidden" name="nickname" value="<%=nick %>" />
			<input type="hidden" name="room_number" value="<%=roomnssd%>">
			<input type="hidden" name="BOARD_RE_REF" value=""> 
			<input type="hidden" name="BOARD_RE_LEV" value="">
			<input type="hidden" name="BOARD_RE_SEQ" value="">
			
			<table border="0">
			
			<thead>
			<tr>
			<td colspan="2" style="width: 150px; height: 50px;">평점</td>
			<td style="width: 400px">
			    <div class="star_junsu">
                <fieldset class="rating1">
				    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
				    <input type="radio" id="star4half" name="rating" value="4.5" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
				    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
				    <input type="radio" id="star3half" name="rating" value="3.5" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
				    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
				    <input type="radio" id="star2half" name="rating" value="2.5" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
				    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
				    <input type="radio" id="star1half" name="rating" value="1.5" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
				    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
				    <input type="radio" id="starhalf" name="rating" value="0.5" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
				</fieldset>			
            	</div>
			
			
			</td>
			</tr>
			<tr>
			<td colspan="3" ><textarea id="writes" name="writes" style="width: 100%; height: 200px; border: 2px solid #8041D9; resize : none; font-size: 1.5em;" required></textarea></td>
			</tr>
			</thead>
			</table>
			
			<section id="commandCell">
				<input type="submit" value="답변글등록" />&nbsp;&nbsp; <input
					type="reset" value="다시작성" />
			</section>
		</form>
	</section>
</body>

</html>