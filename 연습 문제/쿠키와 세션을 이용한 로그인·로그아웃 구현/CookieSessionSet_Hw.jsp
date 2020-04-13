<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>쿠키를 이용한 세션관리</title>
	</head>
	<body>
		<%
			String flag = request.getParameter("flag");
			String rememberId = request.getParameter("rememberId");
			String rememberPw = request.getParameter("rememberPw");
			Cookie cookieRememberId;
			Cookie cookieRememberPw;
			Cookie cookieId;
			Cookie cookiePw;
			Cookie cookieLoginStatus;
			if(flag!= null && flag.equals("1"))
			{
				cookieRememberId = new Cookie("rememberId","temp");
				cookieRememberPw = new Cookie("rememberPw", "temp");
			}
			else if(flag!= null && flag.equals("2"))
			{
				cookieRememberId = new Cookie("rememberId","keep");
				cookieRememberPw = new Cookie("rememberPw", "temp");
			}
			else if(flag!= null && flag.equals("3"))
			{
				cookieRememberId = new Cookie("rememberId","keep");
				cookieRememberPw = new Cookie("rememberPw", "keep");
			}
			else
			{
				cookieRememberId = new Cookie("rememberId","temp");
				cookieRememberPw = new Cookie("rememberPw", "temp");
			}
			
			cookieId = new Cookie("id",session.getAttribute("ID")+"");
			cookiePw = new Cookie("pw",session.getAttribute("PW")+"");
			cookieLoginStatus = new Cookie("loginStatus","login");
			
			response.addCookie(cookieId);
			response.addCookie(cookiePw);
			response.addCookie(cookieRememberId);
			response.addCookie(cookieRememberPw);
			response.addCookie(cookieLoginStatus);
			
	
			response.sendRedirect("http://localhost:8084/Chap08_HW/CookieSessionChk_Hw.jsp");
		%>
	</body>
</html>