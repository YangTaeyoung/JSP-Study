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
			String flag = request.getParameter("flag");
			String rememberId = null;
			String rememberPw = null;
			
			if(flag != null)
			{
				if(flag.equals("1"))
				{
					rememberId = "temp";
					rememberPw = "temp";
				}
				else if(flag.equals("2"))
				{
					rememberId = "keep";
					rememberPw = "temp";
				}
				else if(flag.equals("3"))
				{
					rememberId = "keep";
					rememberPw = "keep";
				}
			}
			else
			{
				rememberId = "temp";
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
			Cookie cookieFlag = new Cookie("flag", flag);
			
			response.addCookie(cookieRememberId);
			response.addCookie(cookieId);
			response.addCookie(cookieRememberPw);
			response.addCookie(cookiePw);
			response.addCookie(cookieFlag);
			pageContext.forward("SessionRememberChk.jsp");
		%>
	</body>
</html>