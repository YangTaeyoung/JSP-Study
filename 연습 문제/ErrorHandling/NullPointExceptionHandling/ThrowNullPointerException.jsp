<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Null 에러를 던지자</title>
	</head>
	<body>
		<%throw new NullPointerException();%>
	</body>
</html>