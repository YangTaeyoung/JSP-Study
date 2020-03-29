<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>페이지 이동</title>
	</head>
	<body>
		<h3>페이지 이동 방식을 지정합니다.</h3>
		<p>페이지 이동 방식을 GET 방식으로 지정합니다. 파라미터 이름은 "move"입니다. 파라미터의 값은 각각 아래와 같이 지정합니다.</p>
		<hr/>
		
		<%
			String move = request.getParameter("move");
		
			if(move == null)
			{
		%>
				<p>리다이렉트: "redirect" </p>
				<p>포워드: "forward" </p>
				<p>인클루드: "include" </p>
		<%
			}
			else if(move.equals("redirect"))
			{
				response.sendRedirect("PageMovingRedirect.jsp");
			}
			else if(move.equals("forward"))
			{
				pageContext.forward("PageMovingForward.jsp");
			}
			else if(move.equals("include"))
			{
				pageContext.include("PageMovingInclude.jsp");
			}
			else
			{
		%>
				<p>파라미터를 잘못 입력하셨습니다. 다시 입력해주세요.</p>				
		<% 
			}
		%>
		<hr/>
		<p>PageMoving.jsp 페이지의 마지막입니다.</p>
		
	</body>
</html>