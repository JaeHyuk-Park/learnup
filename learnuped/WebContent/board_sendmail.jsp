<%@ page import="dao.*" %>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>


<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String write = request.getParameter("write");
String title = request.getParameter("title");
String mails = request.getParameter("mails");


try{
    new MailUtil().sendMail(title,write,mails);
    response.sendRedirect("board_select.jsp?id=1");

} catch(Exception e){
    e.printStackTrace();
    return;
}
%>