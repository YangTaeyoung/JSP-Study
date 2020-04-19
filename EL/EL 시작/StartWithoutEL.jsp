<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
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
		<%=request.getParameter("data")%>
	</body>
</html>