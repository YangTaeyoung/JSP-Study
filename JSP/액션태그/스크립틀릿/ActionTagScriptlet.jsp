<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Scriptlet 액션태그 사용</title>
	</head>
	<body>
		<!-- 아무도 사용하지 않는다. -->
		<jsp:scriptlet>
			String hello = "Hello!";
			String world = "Action Tag!";
			out.println(hello+" "+ world);
		</jsp:scriptlet>
	</body>
</html>