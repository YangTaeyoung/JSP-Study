<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title></title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
		</style>
	</head>
	<body>
		<%
			session.invalidate();
			Cookie[] cookies = request.getCookies();
			String id = null;
			String pw = null;
			String rememberId = null;
			String rememberPw = null;
			String flag = null;
			Cookie cookieId = null;
			Cookie cookiePw = null;
			Cookie cookieRememberId = null;
			Cookie cookieRememberPw = null;
			Cookie cookieFlag = null;
			
			if(cookies != null)
			{
				for(int i = 0; i < cookies.length; i++)
				{
					if(cookies[i].getName().equals("id"))
					{
						id = cookies[i].getValue();
						break;
					}
				}
				for(int i = 0; i < cookies.length; i++)
				{
					if(cookies[i].getName().equals("pw"))
					{
						pw = cookies[i].getValue();
						break;
					}
				}
				for(int i = 0; i < cookies.length; i++)
				{
					if(cookies[i].getName().equals("flag"))
					{
						flag = cookies[i].getValue();
						break;
					}
				}
				for(int i = 0; i < cookies.length; i++)
				{
					if(cookies[i].getName().equals("rememberId"))
					{
						rememberId = cookies[i].getValue();
						break;
					}
				}
				for(int i = 0; i < cookies.length; i++)
				{
					if(cookies[i].getName().equals("rememberPw"))
					{
						rememberPw = cookies[i].getValue();
						break;
					}
				}
			}
			
			// 쿠키 삭제
			for(int i = 0; i < cookies.length; i++)
			{
				cookies[i].setMaxAge(0);
			}
			
			// 쿠키 재저장
			if(flag != null)
			{
				cookieFlag = new Cookie("flag", flag);
				response.addCookie(cookieFlag);
				if(flag.equals("2"))
				{
					cookieId = new Cookie("id", id);
					response.addCookie(cookieId);
				}
				if(flag.equals("3"))
				{
					cookieId = new Cookie("id", id);
					cookiePw = new Cookie("pw", pw);
					response.addCookie(cookieId);
					response.addCookie(cookiePw);
				}
			}
			if(rememberId != null)
			{
				cookieRememberId = new Cookie("rememberId",rememberId);
			}
			if(rememberPw != null)
			{
				cookieRememberPw = new Cookie("rememberPw",rememberPw);
			}
			response.sendRedirect("http://localhost:8083/Chap11_HW/Main.jsp");
		%>
	</body>
</html>