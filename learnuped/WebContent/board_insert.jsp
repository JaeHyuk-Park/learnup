<%@ page import="dao.*" %>
<%@ page import="vo.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>공지사항</title>
	<link rel="stylesheet" type="text/css" href="css/board_deatil.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="js/notice.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">

</head>
<script type="text/javascript">
$(document).ready(function() {

    $('#write').on('keyup', function() {
        $('#test_cnt').html("("+$(this).val().length+" / 100)");
 
        if($(this).val().length > 100) {
            $(this).val($(this).val().substring(0, 100));
            $('#test_cnt').html("(100 / 100)");
        }
    });
});

</script>
<body>
 <body>
   	 <%@include file ="./header.jsp" %>
   	<h1 style="text-align:center; margin-bottom: 5px; margin-top: 30px;" class="con">구매Q/A 문의 작성</h1>
	<form action="board_insert2.jsp " method="post" enctype="multipart/form-data">
	
    <div id="check_box">
		<div class="mini_box1""><strong>게시글 공개/비공개</strong></div>
        <div class="mini_box">
	         <input type="radio" name="email_yn1" id="email_yn1" alt="이메일 공개" value="1" checked=""><label for="email_yn1">공개</label>
	         <input type="radio" name="email_yn1" id="email_yn2" alt="이메일 비공개" value="0"><label for="email_yn2">비공개</label>       
    	</div>    
    </div>  
                  
                  
	<section class="article-detail table-common con row"> 	
        <table class="cell" border="1">
            <colgroup>
                <col width="100px">
            </colgroup>
            <tbody>
             <!-- //의미없는 파일 -->
             	<th>제목 <span style="color: red;">*</span> </th>
                <tr class="article-title">
                    <td colspan="3"><input type=text name=title style="width: 100%; height: 32px; border: 2px solid #8041D9; " size=50   value='${TITLE}' required></td>
                </tr>
                 <th>게시글 <span style="color: red;  ">*</span> <div id="test_cnt" style="float:right;">(0 / 100)</div></th>
                <tr class="article-body">
                    <td colspan="4"><textarea id="write" name="write" style="width: 100%; height: 500px; border: 2px solid #8041D9; resize : none; font-size: 1.0em;" required></textarea> </td>
                    
	             </tr>
	       </tbody>
	       </table>
	</section>    
	<div class="ass">
	 	<input type="file" name="file1" id = "file1" style="border:none; multiple">
	 </div>
	<div class="ass">
        <input type="button" id="moc" value="목록" style="" onclick="location.href= 'board_select.jsp?id=1'" >
        <input type="submit" id="submi" value="문의 작성" style="" "> 
    </div>
    </form>
    
    	

 
 
    <%@include file ="./footer.jsp" %>
</body>
</html>