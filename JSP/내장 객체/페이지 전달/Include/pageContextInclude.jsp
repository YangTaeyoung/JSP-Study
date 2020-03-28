<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체의 인클루두</title>
</head>
<body>
		인클루딩 수행 전 메시지입니다.<hr/>
		<% out.println( "하나 <br/>"); %>
		<% out.println( "둘 <br/>"); %>
		<% out.println( "셋 <br/>"); %>
		<hr/>
		인클루딩을 사용합니다.!<hr/>
		<%
			pageContext.include("pageContextIncluded.jsp");
		%>
		<hr/>
		포워딩 수행 후 메시지입니다!
		<hr/>
		
		<% out.println( "하나 <br/>"); %>
		<% out.println( "둘 <br/>"); %>
		<% out.println( "셋 <br/>"); %>
</body>
</html>