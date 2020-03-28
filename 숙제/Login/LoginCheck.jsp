<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>application 내장객체의 로그인</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			Date today = new Date();
			SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
			SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss");
		%>
		<h2>[<%=id %>]님 접속을 환영합니다.</h2>
		<h3>접속하신 날짜 및 시간은 <%=date.format(today)%> <%=time.format(today)%>입니다.</h3>
		<%
			application.log( "[" + id + "]"+"로그인");
		%>
		
	</body>
</html>