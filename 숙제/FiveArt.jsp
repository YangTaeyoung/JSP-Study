<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!
	public int plus(int a, int b)
	{
		return a+b;
	}
	public int minus(int a, int b)
	{
		return a-b;
	}
	public int multi(int a, int b)
	{
		return a*b;
	}
	public int divi(int a, int b)
	{
		return a/b;
	}
	public int rest(int a, int b)
	{
		return a%b;
	}

%>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>오칙연산하기</title>
	</head>
	<body>
		<h1>10과 3의 오칙 연산결과</h1>
		10 과 3의 덧셈 결과는 <%=plus(10,3)%>입니다.<br/>
		10 과 3의 덧셈 결과는 <%=minus(10,3)%>입니다.<br/>
		10 과 3의 덧셈 결과는 <%=multi(10,3)%>입니다.<br/>
		10 과 3의 덧셈 결과는 <%=divi(10,3)%>입니다.<br/>
		10 과 3의 덧셈 결과는 <%=rest(10,3)%>입니다.<br/>
	</body>
</html>