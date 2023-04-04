<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@page import="java.sql.*" %>
<%
	Connection conn = null;
	Statement stmt = null;
	String nick = null;
	try{
		String nickname = request.getParameter("nickname");
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup", "root", "1324");
		if(conn == null){
			throw new Exception("데이터베이스에 연결할 수 없습니다.");
		}
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select*from information where nickname='"+nickname+"'");
		if(rs.next()){
			nick = rs.getString("nickname");
		}
	}catch(Exception e){
		out.println(e);
	}finally{
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
	<%=nick %>
</body>
</html>