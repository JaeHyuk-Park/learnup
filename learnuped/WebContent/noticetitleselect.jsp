<%@page import="dao.Noticedata"%>
<%@page import="vo.NoticedataType"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<%
	String title = request.getParameter("title");
	String num = request.getParameter("num");
	String noticenum = request.getParameter("noticenum");
	String file = request.getParameter("file");
	
	Noticedata data = new Noticedata();
	NoticedataType type = data.detailpageselect(title);
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<link rel="stylesheet" type="text/css" href="css/noticeselects.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	
	<div id="tab">
	<h2>공지사항</h2>
	<table>
	<colgroup>
		<col style="width:15%;" />
		<col />
		<col style="width:15%;"/>
		<col />
	</colgroup>
		<thead>
			<tr>
				<th colspan="4" id="topth"><% out.println(type.getTitle()); %></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th>등록자명</th>
				<td><% out.println(type.getNickname()); %></td>
				<th>등록일시</th>
				<td><% out.println(type.getCreatedate()); %></td>
			</tr>
			<tr>
				<th>게시글 번호</th>
				<td colspan="3"><%= num%></td>
			</tr>
			<tr>
				<td colspan="4" id="tbo">
				<div id="boardcontents">
					<% out.println(type.getText()); %>
				</div>
				</td>
			</tr>
		</tbody>
	</table><br>
	<form>
		<input type="button" value="목록" onclick="location.href='noticemain.jsp'">
		<input type="button" style="margin-left: 924px;" value="수정" onclick="location.href='noticeupdate.jsp?num=<%= num%>&title=<% out.print(title); %>&nickname=<% out.print(type.getNickname()); %>&text=<% out.print(type.getText()); %>&file=<%out.print(type.getFile());%>'">
		<input type="button" value="삭제" onclick="location.href='noticedelete.jsp?no=<% out.print(type.getNoticenum()); %>&nickname=<% out.print(type.getNickname()); %>'">
	</form>
	<table style="margin-top:50px;">
	<colgroup>
		<col style="width:15%;"/>
		<col />
	</colgroup>
		<thead>
			<tr>
				<th>이전글</th>
				<% 
					NoticedataType notice = data.prevselect(noticenum);
					String prevtitle = notice.getTitle();
					int prevnumber = notice.getNoticenum();
					
					if(prevtitle == null){
						prevtitle = "이전 글이 없습니다.";
						%>
						<script>
						$(document).ready(function(){
							$('#aprev').click(function(e){
								alert("이전 글이 없습니다."); 
								e.preventDefault();
							});
						});
						</script>
					<% } %>
				<td><a id="aprev" href='noticetitleselect.jsp?title=<%= prevtitle%>&num=<% out.print(Integer.toString(Integer.parseInt(num)-1)); %>&noticenum=<% out.print(notice.getNoticenum()); %>'><%= prevtitle%></a></td>
			</tr>
			<tr>
				<th>다음글</th>
				<%
					NoticedataType nextdata = data.nextselect(noticenum);
					String nexttitle = nextdata.getTitle();		
					if(nexttitle == null){
						nexttitle = "다음 글이 없습니다.";
						%>
						<script>
						$(document).ready(function(){
							$('#anext').click(function(e){
								alert("다음 글이 없습니다."); 
								e.preventDefault();
							});
						});
						</script>
					<% } %>
				<td style="border-bottom: 1px solid #E8D9FF;">
				<a id="anext" href='noticetitleselect.jsp?title=<%= nexttitle%>&num=<% out.print(Integer.toString(Integer.parseInt(num)+1)); %>&noticenum=<% out.print(nextdata.getNoticenum()); %>'><%= nexttitle%></a></td>
			</tr>
		</thead>
	</table>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>