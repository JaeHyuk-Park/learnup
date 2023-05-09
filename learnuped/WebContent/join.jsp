<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");

		String email = request.getParameter("email");
		String nickname = request.getParameter("nickname");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String post = request.getParameter("area1");
		String address = request.getParameter("area2");
		String address2 = request.getParameter("address2");
		String job = request.getParameter("job");
		String [] check = request.getParameterValues("access");

		out.println("<h2>"+ "회원가입 정보" +"</h2>");
		out.println("이메일 : "+ email+"<p>");
		out.println("닉네임 : "+ nickname+"<p>");
		out.println("비밀번호 : "+ password+"<p>");
		out.println("이름 : "+ name+"<p>");
		out.println("생년월일 : "+ year +"년 "+month+" "+day+"일"+"<p>");
		out.println("우편번호 : "+ post+"<p>");
		out.println("주소 : "+ address+ " " + address2+"<p>");
		out.println("직업 : "+ job+"<p>");
		out.println("<h3>"+"동의 여부"+"</h3>"+"<p>");
		if(check != null){
			for(String checking : check){
				out.println(checking + " "+"<p>");
			}
		}else{
			out.println("동의하지 않음."+"<p>");
		}
		
	%>

	<br><br><br>
	<h2>회원가입 정보</h2>
	이메일 : <%= email%><p>
	닉네임 : <%= nickname%><p>
	비밀번호 : <%= password%><p>
	이름 : <%= name%><p>
	생년월일 : <%= year%>년 <%= month%> <%= day%>일<p>
	우편번호 : <%= post%><p>
	주소 : <%= address%> <%= address2%><p>
	직업 : <%= job%><p>
	<h3>동의 여부</h3><p>
	<%
	if(check != null){
		for(String checking : check){
			out.println(checking + " " + "<p>");
		}
	}else{
		out.println("동의하지 않음.");
	}
	%>
</body>
</html>