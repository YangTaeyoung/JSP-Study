<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>페이지 이동</title>
	</head>
	<body>
		<%
			String move = request.getParameter("move");
		%>
		<h3>PageMovingRedirect.jsp 입니다!</h3>
		<p>이동 방식을 지정할 move 파라미터의 값이 "<%=move%>"로 지정되었을 때 현재 페이지가 나타납니다.</p>
		
	</body>
</html>