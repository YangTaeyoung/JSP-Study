<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>URL Rewriting 방식을 이용한 세션관리</title>
	</head>
	<body>
		<%
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
		%>
		비밀번호 확인 페이지입니다.<hr/>
		[<%=id%>]님의 비밀번호는[<%=id%>]입니다.
	</body>
</html>