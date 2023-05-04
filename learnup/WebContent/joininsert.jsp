<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@page import="java.sql.*" %>
<%
	String email = request.getParameter("email");
	String nickname = request.getParameter("nickname");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String date = year+"-"+month+"-"+day;
	String post = request.getParameter("area1");
	String address = request.getParameter("area2")+request.getParameter("address2");
	String job = request.getParameter("job");
	String [] check = request.getParameterValues("access");
	
	Connection conn = null;
	Statement stmt = null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup?useUnicode=true&characterEncoding=utf8","root","tjdngur123");
		if(conn == null){
			throw new Exception("데이터베이스에 연결할 수 없습니다.");
		}
		stmt = conn.createStatement();
		String command = String.format("insert into information(email, nickname, password, name, birthday, address, job, access1,access2) values('"+email+"', '"+nickname+"', '"+password+"', '"+name+"', '"+date+"', '"+address+"', '"+job+"', '"+check[5]+"','"+check[6]+"')");
		stmt.executeUpdate(command);
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}catch(Exception e){
		out.println(e+"오류입니다.");
	}
	finally{
		try{
			stmt.close();
		}catch(Exception ignored){

		}try{
			conn.close();
		}catch(Exception ignored){

		}
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>

</body>
</html>