<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import ="core.Member" %>
<jsp:useBean id="member1" class="core.Member"/>
<% Member member2 = new Member(); %>
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
		<c:set target="<%=member1%>" property="name" value="양태영1"/>
		<c:set var="mem2" value="<%=member2%>"/>
		<c:set target="${mem2}" property="name" value="양태영2"/>
		
		<h2>member1: <c:out value="${member1.name}"/></h2>
		<h2>member2: <c:out value="${mem2.name}"/></h2>
	</body>
</html>