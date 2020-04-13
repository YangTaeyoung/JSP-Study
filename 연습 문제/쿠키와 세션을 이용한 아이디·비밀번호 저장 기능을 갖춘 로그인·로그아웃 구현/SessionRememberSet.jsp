<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>구성 요소 설정 페이지</title>
	</head>
	<body>
		<%
			String rememberId = request.getParameter("rememberId");
			String rememberPw = request.getParameter("rememberPw");
			if(rememberId == null)
			{
				rememberId = "temp";
			}
			if(rememberPw == null)
			{
				rememberPw = "temp";
			}
			Cookie cookieRememberId = new Cookie("rememberId", rememberId);
			String id = request.getParameter("id");
			session.setAttribute("ID", id);
			Cookie cookieId = new Cookie("id", id);
			
			Cookie cookieRememberPw = new Cookie("rememberPw", rememberPw);
			String pw = request.getParameter("pw");
			session.setAttribute("PW", pw);
			Cookie cookiePw = new Cookie("pw", pw);
			
			response.addCookie(cookieRememberId);
			response.addCookie(cookieId);
			response.addCookie(cookieRememberPw);
			response.addCookie(cookiePw);
			pageContext.forward("SessionRememberChk.jsp");
		%>
	</body>
</html>