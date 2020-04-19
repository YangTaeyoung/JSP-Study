<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>스크립틀릿 사용</title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
		</style>
	</head>
	<body>
		<%
			out.println("Hello, Scriptlet");
		%>
		<table border="1">
		<%
			for(int i =1; i <=5;i++)
			{
		%>	
			<tr><td><%=i%></td></tr>
		<% 
			}
		%>
		</table>
	</body>
</html>