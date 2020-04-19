<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Hello, JSTL 2</title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
		</style>
		<%
			FileReader reader = null;
		%>
	</head>
	<body>
		<pre>
			<!-- default: value값이 null일 경우 출력하는 값 -->
			<c:out value="<%=reader%>" escapeXml="true" default="출력값이 존재하지 않습니다."/>
		</pre>
	</body>
</html>