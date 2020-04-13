<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Param 액션태그 사용</title>
	</head>
	<body>
		여기는 ActionTagParamTo.jsp 페이지입니다.<hr/>
		<%= request.getParameter("hello") %>
		<%= request.getParameter("pageName") %>
	</body>
</html>