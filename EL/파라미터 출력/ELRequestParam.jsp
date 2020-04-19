<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title></title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
		</style>
	</head>
	<body>
		이름: ${param.name}<br/>
		선택언어: ${paramValues.language[0]}
				${paramValues.language[1]}
				${paramValues.language[2]}
				${paramValues.language[3]}
	</body>
</html>