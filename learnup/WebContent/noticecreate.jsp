<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setCharacterEncoding("utf-8"); %>
<% 
	if(session.getAttribute("Nickname") == null){
		%>
			<script>alert("로그인 후 작성 가능합니다."); history.back();</script>
		<%
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>공지사항 작성</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.7/tailwind.min.css" />
	<link href="https://cdn.jsdelivr.net/npm/daisyui@1.12.0/dist/full.css" rel="stylesheet" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
</head>
<style>
body{
	margin : 0;
	font-family: 'Noto Sans KR', sans-serif;
	overflow-x : hidden;
}
h2{
	font-size:24px;
	font-weight:bold;
}
.bg-blue-500{
	background-color: #8041D9;
}
input, textarea{
	border : 2px solid #8041D9;
}
button{
	border: 1px solid #A566FF;
	background: #8041D9;
	color: #fff;
	cursor: pointer;
	font-size:15px;
	font-weight : bold;
	padding : 8px 20px;
}
button:hover{ background-color:#A566FF;	}
</style>
<body>
	<!-- form action="noticeinsert.jsp">
		제목 <input type="text" name="title" placeholder="제목을 입력하세요." maxlength="100" size="100" style="width: 500px; height: 50px;"><br><br>
		내용 <input type="textarea" name="text" placeholder="내용을 입력하세요." maxlength="1000" size="100" style="width: 500px; height: 200px;"><br><br>
		<input type="hidden" name="nickname" value="dasd">
		<input type="submit" value="저장">
		<input type="button" value="취소" onclick="location.href='noticemain.jsp'">
	</form-->
	<!-- component -->
<jsp:include page="header.jsp"/>
<div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <h2>게시글 작성</h2><br>
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <form method="POST" action="noticeinsert.jsp" enctype="multipart/form-data">
                        </div>
                      	
                        <div class="mb-4">
                            <label class="text-xl text-gray-600">제목 <span class="text-red-500">*</span></label></br>
                            <input type="text" class="border-2 p-2 w-full" name="title" id="title" placeholder="제목을 입력하세요." required>
                        </div>

                        <div class="mb-8" style="margin-bottom: 10px;">
                            <label class="text-xl text-gray-600">내용 <span class="text-red-500">*</span></label></br>
                            <textarea name="text" class="border-2" placeholder="내용을 입력해주세요." style="height: 252px; width: 100%; padding:8px;" required></textarea>
                        </div>
                        <div>
                        <input type="file" name="fileName1" id = "fileName1" style="border:none;">
						</div><br>
                        <div class="flex p-1 gap-3">
                            <button type="submit" class="bg-blue-500 text-white" required>작성</button>
                          <button type="button" class="bg-blue-500 text-white" required onclick="location.href='noticemain.jsp'">뒤로가기</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="footer.jsp"/>
</body>
</html>