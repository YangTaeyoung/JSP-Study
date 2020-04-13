<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>useBean액션태그 사용</title>
	</head>
	<body>
		<jsp:useBean id="myMember" class="beans.Member"/>
		<%
			myMember.setId("Okjsp");
			myMember.setPassword("Okpassword");
			
		%>
		ID: <%=myMember.getId()%><br/>
		PW: <%=myMember.getPassword() %>
	</body>
</html>