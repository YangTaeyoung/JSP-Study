<%@ page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>HelloJSTL</title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
		</style>
		<%
			FileReader reader = new FileReader(application.getRealPath("HelloJSTL.jsp"));
		%>
	</head>
	<body>
		<pre>
			<!--
				excapeXml: true면 html태그를 문자열로 인식해서 출력
			 -->
			<c:out value="<%=reader%>" escapeXml="true"/>
		</pre>
	</body>
</html>