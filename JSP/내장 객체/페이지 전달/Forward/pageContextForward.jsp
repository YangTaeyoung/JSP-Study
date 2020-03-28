<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>내장 객체의 포워딩</title>
	</head>
	<body>
		포워딩 수행 전 메시지입니다.<br/>
		<!-- 위와 아래의 내용은 출력되지 않음. 내부적으로 없앰 -->
		<% out.println( "하나 <br/>"); %>
		<% out.println( "둘 <br/>"); %>
		<% out.println( "셋 <br/>"); %>
		
		<!-- 페이지 주소는 바뀌지 않음 권한을 전부 넘겨주므로-->
		포워딩을 사용합니다.!<br/>
		<%
			pageContext.forward("pageContextForwarded.jsp");
		%>
		포워딩 수행 후 메시지입니다!<br/>
		
		<!-- 메세지가 출력되지 않음. -->>
		<% out.println( "하나 <br/>"); %>
		<% out.println( "둘 <br/>"); %>
		<% out.println( "셋 <br/>"); %>
		
	</body>
</html>