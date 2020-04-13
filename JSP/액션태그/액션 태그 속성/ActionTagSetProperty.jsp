<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>setProperty 액션태그 사용</title>
	</head>
	<body>
		<jsp:useBean id ="myMember" class="beans.Member"/>
		<jsp:setProperty property="id" name="myMember" value="OKJSP"/>
		<jsp:setProperty property="password" name="myMember" value="OKPassword"/>
		
		ID:<%=myMember.getId() %><br/>
		PW:<%=myMember.getPassword() %>
	</body>
</html>