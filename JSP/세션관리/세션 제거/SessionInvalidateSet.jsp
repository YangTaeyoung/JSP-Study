<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>세션의 종료</title>
	</head>
		<%
			session.setAttribute("ID", "TestID");
			session.setAttribute("Grade", "관리자");
		%>
	<body>
		현재 접속하신 ID는 [<%=session.getAttribute("ID") %>]입니다.<br/>
		[<%=session.getAttribute("Grade")%>]권한으로 접속 중 입니다.<hr/>
		현재 세션 아이디는 <h2><%=session.getId() %></h2>입니다.<hr/>
		<form action="SessionInvalidatePerform.jsp">
			<input type="submit" value="세션 종료">
		</form>
	</body>
</html>