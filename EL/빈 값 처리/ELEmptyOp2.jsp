<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>EL의 empty 연산자</title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
		</style>
	</head>
	<body>
		<h3>${empty param.id?"방문자": param.id}님. 환영합니다.</h3>
		
	</body>
</html>