<%@ page import="dao.*" %>
<%@ page import="dto.*" %>
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
	<script src="js/notice.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
</head>
<body>
  <%@include file ="./header.jsp" %>
   <%
       email = (String)session.getAttribute("Email");
   	   String board_id = request.getParameter("id"); 
	   String writes = request.getParameter("id"); 
    %>
	<jsp:useBean id ="co" class ="dao.Co_Controller">
	<%  
	Janso_Boards vo = co.boardselect2(board_id);
	%>
	<h1 style="text-align:center; margin-bottom: 50px; margin-top: 30px;" class="con">구매Q/A 수정</h1>
	<section class="article-detail table-common con row"> 
        <table class="cell" border="1">
            <colgroup>
                <col width="100px">
            </colgroup>
            <tbody>
         <div id="check_box">
		<div class="mini_box1""><strong>게시글 공개/비공개</strong></div>
        <div class="mini_box">
	         <input type="radio" name="check_yn" id="email_yn1" alt="이메일 공개" value="1" checked=""><label for="email_yn1">공개</label>
	         <input type="radio" name="check_yn" id="email_yn2" alt="이메일 비공개" value="0"><label for="email_yn2">비공개</label>       
    	</div>    
    </div>  
                
            <form action="board_update2.jsp">
             <!-- //의미없는 파일 -->
   <input type="hidden" name=num size="8" value=<% out.println(board_id); %> >
     			<th>제목 <span style="color: red;">*</span> </th>
                <tr class="article-title">
                
                    <td colspan="3"><input type=board_id name=title size=50 style="width: 100%; height: 32px; border: 2px solid #8041D9;" value="<% out.println(vo.getTitle()); %>"></td>
                </tr>
                <th>게시글 <span style="color: red;">*</span> </th>
                <tr class="article-body">
                    <td colspan="4"><textarea  name="write" style="width: 100%; height: 500px; border: 2px solid #8041D9; font-size: 1.0em; resize : none;"><% out.println(vo.getWrites()); %></textarea> </td>
	             </tr>
	       </tbody>
	       </table>
	</section>

	   <div class="ass">
        <input type="button" id="moc" style="" value="목록" onclick="location.href= 'board_select.jsp?id=1'" >
        <input type="submit" id="submi" value="글수정완료" style="";> 
    </div>
    	</jsp:useBean>
	    </form>
	   <%@include file ="./footer.jsp" %>
</body>
</html>