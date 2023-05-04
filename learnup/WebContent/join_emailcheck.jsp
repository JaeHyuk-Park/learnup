<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.ArrayList" %>
<%
response.setContentType("text/html; charset=UTF-8");
request.setCharacterEncoding("utf-8");
Connection conn = null;
Statement stmt = null;
ResultSet rs;

String email = request.getParameter("email");
try {
    Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup?useUnicode=true&characterEncoding=utf8","root","tjdngur123");
    if(conn == null)
    {
    throw new Exception("nooooo");
    }
    stmt = conn.createStatement();
    rs = stmt.executeQuery("select * from information where email ='"+ email + "';");
    if(rs.next())
    {  
       email = rs.getString("email");
       out.println(email);
    }
      
    } finally {
		try {
				
			conn.close();
			stmt.close();
				
		} catch (Exception ignored) {
				
		}
	}
  
%>
   



