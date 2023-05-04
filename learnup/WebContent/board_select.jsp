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
	<link rel="stylesheet" type="text/css" href="css/board_select.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="js/notice.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
</head>
<body>
  <%@include file ="./header.jsp" %>
	<jsp:useBean id ="co" class ="dao.Co_Controller">		
  
<section class="board">
	
     <%
     	int i = 1;
    	String search = null;
     	email = (String)session.getAttribute("Email");
     	search = request.getParameter("searchs");
     	ArrayList<Janso_Boards> list = new ArrayList<Janso_Boards>();
     	
     	//페이징부분
     	String tempPage = request.getParameter("pages");
     	int cPage = 1; //시작행-1 (시작 row 인덱스 번호)
     	int pageSize=10;  // 페이지크기 (한번에 출력되는 수)
        int listCount= co.selectListCount(); //구매자게시판 총필드 개수
	    int currentBlock = 0;
	    int startPage=0	;
	    int endPage=0;
	    int maxPage=0;
	    
   	    out.println(listCount + "리스트 총수");
   	    out.println(cPage);
   	    
     	
     	if (tempPage == null || tempPage.length() == 0) {
     	    cPage = 1;
     	}
     	try {
     	    cPage = Integer.parseInt(tempPage);
     	    
     	} catch (NumberFormatException e) {
     	    cPage = 1;
     	}
   	 	

	
  
     	if(search == null)
     	{   	
   		try
     		{  
       			list  = co.boardselect(cPage,pageSize); //기본전체출력
       			
       			  currentBlock = cPage % pageSize == 0 ? cPage / pageSize : (cPage / pageSize) + 1;
       			  maxPage=(int)((double)listCount/pageSize+0.95); 
       			  startPage = (currentBlock - 1) * pageSize + 1;
       			  endPage = startPage + pageSize - 1;
       			
       		
           		//int startPage = (((int) ((double)cPage / 2 + 0.9)) - 1) * 2 + 1;
           	    // int endPage = startPage+5-1;
           	    out.println("현재페이지"+currentBlock);
           	    out.println("최대페이지"+maxPage);
           	    out.println("시작점페이지"+startPage);
           	    out.println("끝점페이지"+endPage);
     			
           	 	     			
     		}catch(Exception e){ out.println("실패");}
       	 	
       	    
       	    
     		i=list.size();
     		
     		
     	}
     	else
     	{
       	 	 list = co.boardsearch(search); //검색 후 리스트
       	 	 i=list.size();
     	}
     	
     	
    	 // 페이징 처리

     	
     	
     	
     	
     %>
		<h2 style="text-align: center; font-size: 30px; margin-bottom: 20px; margin-top: 30px;">구매자 Q/A 게시판</h2>
		
		 <jsp:include page ="./board_baraction.jsp"/>	 
           <div id ="box" style="flex-basis: 675px; height: 60px; float: right;  ">
               
                <div  action="board_select" class="search_form"style="float :left;">
                  <form class="search">
					<input class="searchTerm" placeholder="검색하세여"  name = "searchs" /><input class="searchButton" type="submit" />
				  </form>
                </div>     
           </div>
           
		<table cellspacing="0" border="1" summary="게시판의 글제목 리스트" class="tbl_type" id="myTable">
		<caption>게시판 리스트</caption>
		<colgroup>
		<col width="10"><col width="15">
		<col width="115"><col width="55"><col width="40">
		</colgroup>
		<thead>
		<tr>
		<th scope="col"></th>
		<th scope="col">No</th>
		<th scope="col">제목</th>
		<th scope="col">글쓴이</th>
		<th scope="col">작성날짜</th> 
		</tr>
		</thead>	
		
		<%if(email != null ){ %>
			<% 	for(Janso_Boards vo : list) { %>
			<%if(email.equals("admin")){ %>
			
			
				<tbody style ="height:40px">
		<tr>
		<td class="frm"></td>
		<td class="num"><%= i%></td>
		<td class="title">

	
			<a href="board_detail.jsp?id=<%=vo.getBoard_id()%>">
				<%
                	out.println(vo.getTitle()); 
				 %>
		 	</a>	

		</td>
		<td>
		
			<% out.println(vo.getEmail()); %>
		
		</td>
		<td class="date">
			<% out.println(vo.getDate().substring(0, 11) ); %>
		</td>
		</tr>
		</tbody>
			<%i--; %>
			<%}else {%>
			<tbody style ="height:40px">
			<tr>
			<td class="frm"></td>
			<td class="num"><%= i%></td>
			<td class="title">
			<%if(vo.getOpen_check() == 1) {%>
				<a href="board_detail.jsp?id=<%=vo.getBoard_id()%>">
					<%
	                	out.println(vo.getTitle()); 
					 %>
			 	</a>	
			<%}else if(email.equals(vo.getEmail())){  %>
				  <a href="board_detail.jsp?id=<%=vo.getBoard_id()%>">
						<%
		                	out.println(vo.getTitle()); 
						 %>
				 	</a>
			<%}else { %>
				비공개 게시글입니다.
			<%} %>
			</td>
			
			<td>
			<%
			int idx = vo.getEmail().indexOf("@"); 
			String strValue = vo.getEmail();
			StringBuffer sb = new StringBuffer();
			sb.append(strValue);
			 
			if(idx > 0) {
			   strValue = sb.replace(1, idx, "***") + "";        
			  }
			%>
			<%
				if(email.equals(vo.getEmail()))
				{
					out.println(vo.getEmail());
				}
				else
				{
					out.println(strValue);
				}
			%>
		</td>
		<td class="date">
			<% out.println(vo.getDate().substring(0, 11) ); %>
		</td>
	
		</tr>
		</tbody>
		<%i--; %>
	    <% } %>
	    
	   <% } %> 
	       
	    <% }else{ %>
	    <% 	for(Janso_Boards vo : list) { %>
		<tbody style ="height:40px">
		<tr>
		<td class="frm"></td>
		<td class="num"><%= i%></td>
		<td class="title">
		<%
		int check = vo.getOpen_check();
		if(check == 1) {%>
			<a href="board_detail.jsp?id=<%=vo.getBoard_id()%>">
				<%
                	out.println(vo.getTitle()); 
				 %>
		 	</a>	
		<%}else { %>
			비공개 게시글입니다.
		<%} %>
		</td>
		<td>
			<%
			int idx = vo.getEmail().indexOf("@"); 
			String strValue = vo.getEmail();
			StringBuffer sb = new StringBuffer();
			sb.append(strValue);
			 
			if(idx > 0) {
			   strValue = sb.replace(1, idx, "***") + "";        
			  }
			%>
			<% out.println(strValue); %>
		
		</td>
		<td class="date">
			<% out.println(vo.getDate().substring(0, 11) ); %>
		</td>
		</tr>
		</tbody>
		<%i--; %>
	    <% } %>
	     <% } %>
		</table>
<!-- //UI Object -->            
</section>



<section class="board2">
	<%if(email != null){ %>
  		<input type="button" id = "submi" style = ""  value="+등록하기" onclick="location.href= 'board_insert.jsp'" ;>
    <%} %>

<style>
    #submi
    {
   
       height: 35px;
       width: 100px;
    }
    #submi:hover
	{
	    border-style: solid;
	    border-color: blueviolet;
	}
</style>
   <div class="pageContainer">   
        <ul class="pageList">
        <%if(cPage <=1){ %>
		[이전]&nbsp;
		<%}else{ %>
		 <a href="board_select.jsp?pages=<%= cPage - 1 %>">[이전]</a>&nbsp;
		<%}%>
          <li><a href="#"><</a></li>
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#">></a></li>
          
        </ul>
        <div class="clear"></div>
	</div>
</section>
</jsp:useBean>
<%@include file ="./footer.jsp" %>
</body>
</html>