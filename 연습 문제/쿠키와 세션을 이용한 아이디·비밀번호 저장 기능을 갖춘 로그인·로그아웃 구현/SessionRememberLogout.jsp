<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>로그아웃 페이지</title>
	</head>
	<body>
		<h3>안전하게 로그아웃 되었습니다.</h3><hr/>
		<%
			pageContext.include("SessionRememberLogin_1.jsp");
		%>
	</body>
</html>