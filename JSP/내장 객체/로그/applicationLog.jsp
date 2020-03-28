<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>application 내장 객체의 로그</title>
	</head>
	<body>
		<%
			application.log("applicationLog.jsp 페이지가 실행되었습니다.");
		%>
		<h3>application 내장 객체를 이용한 로그 작성이 완료되었습니다.</h3>
	</body>
</html>