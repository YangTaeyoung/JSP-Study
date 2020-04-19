<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<%
	Cookie cookie = new Cookie ("cookieName", "cookieValue");
	response.addCookie(cookie);
%>
<html>
	<head>
	<meta charset="UTF-8">
	<title>쿠키 생성</title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
		</style>
	</head>
	<body>
		쿠키 생성이 완료되었습니다.
		<%pageContext.include("ELPrintCookie.jsp");%>
	</body>
</html>