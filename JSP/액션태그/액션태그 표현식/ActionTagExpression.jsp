<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Expression 액션태그 사용</title>
	</head>
	<body>
		
		<!-- 아무도 사용하지 않는다. -->
		<jsp:scriptlet>
			String hello = "Hello!";
			String expression = " Expression!";
		</jsp:scriptlet>
		<jsp:expression> hello + expression </jsp:expression>
	</body>
</html>