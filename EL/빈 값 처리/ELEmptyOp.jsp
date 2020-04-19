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
		<h3>요청 파라미터 param1 데이터가 빈상태(empty) 입니까?</h3>
		<h3>${empty param.param1}</h3><hr/>
	</body>
</html>