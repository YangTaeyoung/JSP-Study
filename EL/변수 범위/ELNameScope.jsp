<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	request.setAttribute("dataname", "Request Attribute");
	application.setAttribute("dataname", "Application Attribute");
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title> 데이터 이름 사용 </title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
			
		</style>
	</head>
	<body>
		<h3>request 내장 객체의 dataname 속성값: </h3>
		[<%=request.getAttribute("dataname")%>] <hr/>
		<h3>application 내장 객체의 dataname 속성값:</h3>
		[<%=application.getAttribute("dataname")%>]<hr/>
		<h3>EL에서 출력되는 dataname의 값:</h3>
		[${dataname}]
	</body>
</html>