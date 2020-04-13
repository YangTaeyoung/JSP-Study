<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<jsp:useBean id ="myMember" class="beans.Member"/>
		<jsp:setProperty property="id" name="myMember" value="OKJSP"/>
		<jsp:setProperty property="password" name="myMember" value="OKPassword"/>
		
		ID: <jsp:getProperty property="id" name="myMember"/><br/>
		PW: <jsp:getProperty property="password" name="myMember"/>
		
	</body>
</html>