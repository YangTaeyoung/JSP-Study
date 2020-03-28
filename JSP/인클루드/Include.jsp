<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>include 속성 예제</title>
</head>
<body>
	<%@ include file="includedHTML.html"%>
	<h1>Hello! include!</h1>
	<%@ include file = "includedJSP.jsp" %>
</body>
</html>