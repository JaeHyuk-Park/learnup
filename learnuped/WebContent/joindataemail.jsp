<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>
<%@page import="java.sql.*" %>
<%
	Connection conn = null;
	Statement stmt = null;
	String em = null;
	ResultSet rs = null;
	try{
		String email = request.getParameter("email");
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup", "root", "1324");
		if(conn == null){
			throw new Exception("데이터베이스에 연결할 수 없습니다.");
		}
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select*from information where email = '"+email+"';");
		if(rs.next()){
			em = rs.getString("email");
			out.print(em);
		}
	}catch(Exception e){
		
	}finally{
		try{
			stmt.close();
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