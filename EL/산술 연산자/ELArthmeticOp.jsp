<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>EL의 산술연산자</title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
		</style>
	</head>
	<body>
		<h3>param1+param2</h3> 
		${param.param1+param.param2}<hr/>
		<h3>param1-param2</h3> 
		${param.param1 - param.param2}<hr/>
		<h3>param1 * param2</h3> 
		${param.param1 * param.param2}<hr/>
		<h3>param1 / param2</h3> 
		${param.param1 / param.param2}<hr/>
		<h3>param1 div param2</h3> 
		${param.param1 div param.param2}<hr/>
		<h3>param1 % param2</h3> 
		${param.param1 % param.param2}<hr/>
		<h3>param1 mod param2</h3> 
		${param.param1 mod param.param2}<hr/>	
	</body>
</html>