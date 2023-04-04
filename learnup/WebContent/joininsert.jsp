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
    String date = year + "-" + month + "-" + day;
    String post = request.getParameter("area1");
    String address = request.getParameter("area2") + request.getParameter("address2");
    String job = request.getParameter("job");
    String access1 = request.getParameter("access1");
    String access2 = request.getParameter("access2");
    if (access1 == null) {
        access1 = "N";
    }
    if (access2 == null) {
        access2 = "N";
    }

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup?serverTimezone=UTC", "root", "1324");
        if (conn == null) {
            throw new Exception("데이터베이스에 연결할 수 없습니다.");
        }
        pstmt = conn.prepareStatement("SELECT * FROM information WHERE email=? OR nickname=?");
        pstmt.setString(1, email);
        pstmt.setString(2, nickname);
        rs = pstmt.executeQuery();
        if (rs.next()) {
            if (email.equals(rs.getString("email"))) {
                %><script>alert("중복되는 이메일이 있습니다."); history.back();</script><%
            } else if (nickname.equals(rs.getString("nickname"))) {
                %><script>alert("중복되는 닉네임이 있습니다."); history.back();</script><%
            }
        } else {
            pstmt = conn.prepareStatement("INSERT INTO information(email, nickname, password, name, birthday, address, job, access1, access2) "
                + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)");
            pstmt.setString(1, email);
            pstmt.setString(2, nickname);
            pstmt.setString(3, password);
            pstmt.setString(4, name);
            pstmt.setString(5, date);
            pstmt.setString(6, address);
            pstmt.setString(7, job);
            pstmt.setString(8, access1);
            pstmt.setString(9, access2);
            pstmt.executeUpdate();
            %><script>alert("회원가입이 완료 되었습니다."); location.href="index.jsp";</script><%
        }
    } catch (Exception e) {
        out.println(e + "오류입니다.");
    } finally {
        try {
            if (pstmt != null) {
                pstmt.close();
            }
        } catch (SQLException ignored) {
        }
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ignored) {
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