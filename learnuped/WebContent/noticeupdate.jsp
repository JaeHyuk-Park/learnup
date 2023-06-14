<%@page import="com.sun.webkit.ContextMenu.ShowContext"%>
<%@page import="com.sun.corba.se.impl.protocol.giopmsgheaders.Message"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>공지사항 작성</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.7/tailwind.min.css" />
	<link href="https://cdn.jsdelivr.net/npm/daisyui@1.12.0/dist/full.css" rel="stylesheet" type="text/css" />
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
	input[type="submit"], input[type="button"]{
		border: 1px solid #A566FF;
		background: #8041D9;
		color: #fff;
		cursor: pointer;
		font-size:15px;
		font-weight : bold;
		padding : 8px 20px;
	}
	input[type="button"]:hover, input[type="submit"]:hover{ background-color:#A566FF;	}	
</style>
<body>
	<%
		String number = request.getParameter("num");
		String noticenum = request.getParameter("noticenum");
		String title = request.getParameter("title");
		String nickname = request.getParameter("nickname");
		String texts = request.getParameter("text");
		String file = request.getParameter("file");
		texts = texts.replace("<br>", "\r\n");
		
		if(session.getAttribute("Nickname") == null){
			%><script>alert("게시글을 작성한 본인만 수정이 가능합니다."); history.back();</script>
			<%	
		}else if(session.getAttribute("Nickname").equals(nickname)){
			
	%>
<jsp:include page="header.jsp"/>
<div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <h2>게시글 수정</h2><br>
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <form method="POST" action="updateno.jsp" enctype="multipart/form-data">
                        </div>
                      	
                        <div class="mb-4">
                        	<input type="hidden" name="noticenum" value="<%= noticenum%>">
                        	<input type="hidden" name="nickname" value="<%= nickname%>">
                            <label class="text-xl text-gray-600">제목 <span class="text-red-500">*</span></label></br>
                            <input type="text" class="border-2 p-2 w-full" name="title" id="title" value="<%= title %>" required>
                        </div>

                        <div class="mb-8" style="margin-bottom: 10px;">
                            <label class="text-xl text-gray-600">내용 <span class="text-red-500">*</span></label></br>
                            <textarea name="text" class="border-2" style="height: 252px; width: 100%; padding:8px;"><%= texts%></textarea>
                        </div>
                        <div>
                        <%if(!file.equals("null")){
                        	out.print(file);
                        }%>
						</div><br>
                        <div class="flex p-1 gap-3">
                            <input type="submit" class="bg-blue-500 text-white" value="수정" required></button>
                          <input type="button" class="bg-blue-500 text-white" value="뒤로가기" required onclick="location.href='noticetitleselect.jsp?title=<%= title%>&num=<%= number%>&noticenum=<%= noticenum%>&file=<%= file%>'"></button>
                        </div>
                    </form>
                    <%
                    }else{
            			%><script>alert("게시글을 작성한 본인만 수정이 가능합니다."); history.back();</script>
            			<% } %>
            			
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>