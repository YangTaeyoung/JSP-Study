<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>세션 속성의 삭제</title>
	</head>
		<%
			session.setAttribute("ID", "TestID");
			session.setAttribute("Grade", "관리자");
		%>
	<body>
		세션의 속성 설정 페이지입니다.<hr/>
		현재 접속하신 ID는 [<%=session.getAttribute("ID") %>]입니다.<br/>
		[<%=session.getAttribute("Grade")%>]권한으로 접속 중 입니다.
		
		설정된 세션의 속성값을 삭제합니다. <hr/>
		<%
			session.removeAttribute("ID");
			session.removeAttribute("Grade");
		%>
		현재 접속하신 ID는 [<%=session.getAttribute("ID") %>]입니다.<br/>
		[<%=session.getAttribute("Grade")%>]권한으로 접속 중 입니다.
	</body>
</html>