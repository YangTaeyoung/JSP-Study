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
		
		param.gender == "male"? "남자" : "여자" <br/>
		<h3> 결과: ${param.gender == "male"? "남자" : "여자"}</h3>
	</body>
</html>