<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>제어문을 사용한 Scriptlet 예제</title>
	</head>
	<body>
		<%
			int num = Integer.parseInt(request.getParameter("num"));
			String hello = "Hello!, ";
			String world = "World!";
			
			for(int i = 1; i<= num; i++)
			{
				out.print("<h" + i + ">" + hello + world + "</h" + i + ">");
				if (i == num)
				{
					%>
					<h1>스크립틀 내 for문의 마지막 수행입니다.</h1>
					<% 
				}
				else
				{
					%>
					<h1>스크립틀 내 for문 수행중입니다.</h1>
					<% 
				}
			}
		%>
	
		
	</body>
</html>