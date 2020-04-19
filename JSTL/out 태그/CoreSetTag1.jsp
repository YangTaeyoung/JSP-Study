<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="num1" value="100"/>
<c:set var="num2" value="30"/>
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
		<h2>${num1}+${num2} = <c:out value="${num1+num2}"/></h2>
	</body>
</html>