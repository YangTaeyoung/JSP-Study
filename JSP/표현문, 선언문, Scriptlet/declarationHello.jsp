<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!
	String hello = "Hello, ";
	String world = "World!";
	public int add(int a, int b)
	{
		return a+b;
	}
%>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Declaration 예제</title>
	</head>
	<body>
		<% int num = add(2,3); %>
		<%=num%>번 반복합니다,<br/>
		<%
			for(int i = 0; i <num; i++)
			{
			
		%>
			<%=hello%><%=world%><br/>
		<%
		
			}
		%>
	</body>
</html>