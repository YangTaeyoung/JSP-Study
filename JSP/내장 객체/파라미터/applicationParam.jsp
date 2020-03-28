<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>내장 객체의 초기 파라미터 정보</title>
	</head>
	<body>
		getInitParameter()메서드 사용 <hr/>
		<%
			String name = "Hello";
			String value = application.getInitParameter(name);
		%>
		<%= name+"파라미터의 설정값: " + value %>
	</body>
</html>