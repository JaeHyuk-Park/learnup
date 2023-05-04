<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%@ page import="dao.*" %>
<%@ page import="vo.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import= "java.io.File"%>
<%@page import="java.util.*" %>
<%@page import="java.net.URLEncoder"%>

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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
</head>
<body>
<script>
       $(function()
       {
           $('#de').hide();
           $('#up').hide();
       });
 </script>
 <body>
   <%@include file ="./header.jsp" %>
   <%
        email = (String)session.getAttribute("Email");
   	    String board_id = request.getParameter("id");  
    %>
 
	<jsp:useBean id ="co" class ="dao.Co_Controller">
	<%  
		Janso_Boards vo = co.boardselect2(board_id);
	%>
	
	
	<%if(email != null){ %>>
	    <%if(email.equals(vo.getEmail())){%>
		<script>
	        $(function()
	        {
	            $('#de').show();
	            $('#up').show();
	        });
	
	    </script>
	     <%} %>
      <%} %>
  
    <h1 style="text-align:center; margin-bottom: 5px; margin-top: 30px;" class="con"> 구매Q/A 문의 글</h1>
    <section class="article-detail table-common con row"> 
     
        <table class="cell" border="1">
            <tbody>
                <colgroup>
                    <col width="80px">
                </colgroup>
                <tr class="article-title">
                    <th>제목:</th>
                        <td colspan="3">
                        <% 
                        if(vo.getTitle() == null )
                        {
                            out.println("-");
                        }
                        else
                        {
                            out.println(vo.getTitle()); 
                        }
                        %>
                    </td>
                </tr>
                <tr class="article-info">
                  	<th>작성자:</th>
                    <td>
                       	<%
							int idx = vo.getEmail().indexOf("@"); 
							String strValue = vo.getEmail();
							StringBuffer sb = new StringBuffer();
							sb.append(strValue);
							 
							if(idx > 0) {
							   strValue = sb.replace(1, idx, "***") + "";        
							  }
							
							//email.equals(vo.getEmail())
						%>
						
						
						<%
							if(email != null)
							{
								if(email.equals(vo.getEmail()))
								{
									out.println(vo.getEmail());
								}
								else if(email.equals("admin")){
									out.println(vo.getEmail());
								}
								else
								{
									out.println(strValue);
								}
								
							}
							else
							{
								out.println(strValue);
							}
						%>
                    </td>
                    <th style = "width : 80px">날짜:</th>
                    <td style = "width : 165px;">
                        <%  out.println(vo.getDate().substring(0, 16)); %>
                    </td>
                </tr>
                <tr class="article-body">
                    <td colspan="4">
                   		<div id ="p_box" >                    
                       		<p style="white-space: pre-line;" class="p_box"><% out.println(vo.getWrites()); %></p> 
                        </div>
                    </td>
	            </tr>
	            <%if(vo.getFileName() != null) { %>
	               <tr class="article-body">
                    <td colspan="5">
                   	첨부파일:  <% 
								try
								{
									String directory = application.getRealPath("/upload");
									String files[] = new File(directory).list();
									
								
									String directorys = this.getServletContext().getRealPath("/upload");
								

									for(int i = 0; i < files.length; i++)
									{
										if(vo.getFileName().equals(files[i]))
										{
										out.write("<a href=\"" + request.getContextPath() + "/downloadAction?file="+
										URLEncoder.encode(files[i],"UTF-8") +"\" + style = 'text-decoration-line: underline ; color: blue'   >" + files[i] + "</a><br>");
								%>					
									 	<img src="${pageContext.request.contextPath }/upload/<%=files[i]%>" style=" width:200px; height:200px; ">
								<% 		
								
						
										}
							
										
										
									}
								}catch(Exception e)
								{
									
								}							
								%>
                    </td>
	            </tr>
	            <%} %>
            </tbody>
        </table>


    
	</section>

    <div class="ass">
        <input type="button" id="moc" value="목록" style="" onclick="location.href= 'board_select.jsp?id=1'" >
        <div class="box1">
            <input type="button" id="de" value="삭제" style="" onclick="location.href= 'board_delete.jsp?id=<%=vo.getBoard_id()%>'"  > 
            <input type="button" id="up" value="수정" style="" onclick="location.href= 'board_update.jsp?id=<%=vo.getBoard_id()%>'"  >
        </div>
    </div>
    

    	
<% 
if(email != null)
{
	if(email.equals("admin")){ %>
  <div style="height: 50px"></div>
   <h1 style="text-align:center; margin-bottom: 5px; margin-top: 30px;" class="con"> 관리자</h1>
  <section class="article-detail table-common con row"> 	
        <table class="cell" border="1">
            <colgroup>
                <col width="100px">
            </colgroup>
            <tbody>
           <form action="board_sendmail.jsp" method="get">
             <!-- //의미없는 파일 -->
            <input type=hidden name=mails value= "<%=vo.getEmail()%>" required>
             	<th>제목 <span style="color: red;">*</span> </th>
                <tr class="article-title">
                    <td colspan="3"><input type=text name=title style="width: 100%; height: 32px; border: 2px solid #8041D9; " size=50  required></td>
                </tr>
                 <th>게시글 <span style="color: red;  ">*</span> <div id="test_cnt" style="float:right;">(0 / 100)</div></th>
                <tr class="article-body">
                    <td colspan="4"><textarea id="write" name="write" style="width: 100%; height: 500px; border: 2px solid #8041D9; resize : none; font-size: 1.0em;" required></textarea> </td>
                    
	             </tr>
	       </tbody>
	       </table>
	     <div class="ass">
        <input type="submit" id="submi" value="문의 작성" style=""> 
    	</div>
    	</form>
	</section>  	    
   <% }} %>
  </jsp:useBean>  	
    	
    
<%@include file ="./footer.jsp" %>
</body>
</html>