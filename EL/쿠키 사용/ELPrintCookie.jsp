<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>쿠키 출력</title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
		</style>
	</head>
	<body>
		<h3> cookie 작성 후 출력 </h3>
		${cookie}<hr/>
		<h3>cookie.cookieName 작성 후 출력</h3>
		${cookie.cookieName}<hr/>
		
		<h3>cookie.cookieName 의 Value 출력</h3>
		${cookie.cookieName.value}<br/>
		${cookie.cookieName["value"]}<br/>
		${cookie["cookieName"].value}<br/>
		${cookie["cookieName"]["value"]}<br/>
	</body>
</html>