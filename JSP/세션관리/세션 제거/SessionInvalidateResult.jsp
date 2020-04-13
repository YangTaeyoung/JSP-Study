<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>세션의 종료</title>
	</head>
	<body>
		세션 종료 테스트 페이지입니다.
		현재 접속하신 ID는 [<%=session.getAttribute("ID") %>]입니다.<br/>
		[<%=session.getAttribute("Grade")%>]권한으로 접속 중 입니다.<hr/>
		현재 세션 아이디는 <h2><%=session.getId() %></h2>입니다.<hr/>
	</body>
</html>