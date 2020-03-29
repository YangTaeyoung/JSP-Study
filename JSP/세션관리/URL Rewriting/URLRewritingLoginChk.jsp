<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>URL Rewriting 방식을 이용한 세션관리</title>
	</head>
	<body>
		<%
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");		
			if(id == null || pwd == null || id.trim().equals("") || pwd.trim().equals(""))
			{
				out.println("<b>아이디와 비밀번호는 반드시 입력되어야 합니다.</b><hr/>");
				pageContext.include("URLRewritingLogin.jsp");
			}
			else
			{
		%>
			로그인에 성공하였습니다.<br/>
			[<%=id%>]님 환영합니다.<hr/>
			<a href = "URLRewritingPwCHk.jsp?id=<%=id%>&pwd=<%=pwd%>">[비밀번호 확인]</a>
		<% 
			}
		%>
		
	</body>
</html>