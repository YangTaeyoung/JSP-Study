<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>세션의 종료, 로그아웃 준비.</title>
	</head>
	<body>
		<%
			session.invalidate();
			Cookie [] cookies = request.getCookies();
			String rememberId = null;
			String id = null;
			String rememberPw = null;
			String pw = null;
			String flag = null;
			for(int i = 0; i < cookies.length; i++)
			{
				if(cookies[i].getName() != null && cookies[i].getName().equals("rememberId"))
				{
					rememberId = cookies[i].getValue();
					out.println(rememberId + "실행1");
					break;
				}
			}
			for(int i = 0; i<cookies.length; i++)
			{
				if(cookies[i].getName() != null && cookies[i].getName().equals("id"))
				{
					id = cookies[i].getValue();
					out.println(id+"실행2");
					break;
				}
			}
			for(int i = 0; i < cookies.length; i++)
			{
				if(cookies[i].getName() != null && cookies[i].getName().equals("rememberPw"))
				{
					rememberPw = cookies[i].getValue();
					out.println(rememberPw+"실행3");
					break;
				}
			}
			for(int i = 0; i < cookies.length; i++)
			{
				if(cookies[i].getName() != null && cookies[i].getName().equals("pw"))
				{
					pw = cookies[i].getValue();
					out.println(pw+"실행4");
					break;
				}	
			}
			for(int i = 0; i < cookies.length; i++)
			{
				if(cookies[i].getName() != null && cookies[i].getName().equals("flag"))
				{
					flag = cookies[i].getValue();
					out.println(flag + "실행5");
					break;
				}
			}
			
			
			out.println(rememberId + rememberPw);
			
			if(rememberId != null && rememberPw != null && rememberPw.equals("temp") && rememberId.equals("temp"))
			{
				for(int i = 0; i < cookies.length; i++)
				{
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
					
				}
				out.println("a1");
			}
			else if(rememberId!= null && rememberPw != null && rememberPw.equals("temp") && rememberId.equals("keep"))
			{
				
				for(int i = 0; i < cookies.length; i++)
				{
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
				Cookie cookieId = new Cookie("id",id);
				response.addCookie(cookieId);
				out.println("a2");
			}
			else if(rememberId!= null && rememberPw != null && rememberPw.equals("keep") && rememberId.equals("keep"))
			{
				
				for(int i = 0; i < cookies.length; i++)
				{
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
				Cookie cookieId = new Cookie("id",id);
				Cookie cookiePw = new Cookie("pw",pw);
				response.addCookie(cookieId);
				response.addCookie(cookiePw);
				out.println("a3");
			}
			Cookie cookieRememberId = new Cookie("rememberId", rememberId);
			Cookie cookieRememberPw = new Cookie("rememberPw", rememberPw);
			Cookie cookieFlag = new Cookie("flag", flag);
			response.addCookie(cookieRememberId);
			response.addCookie(cookieRememberPw);
			response.addCookie(cookieFlag);
			// sendRedirect가 아니면 쿠키가 살아있기 때문에 꼭 sendredirect로 보내자
			response.sendRedirect("http://localhost:8084/Chap08_HW/SessionRememberLogin/SessionRememberLogout.jsp");
		%>
			쿠키아이디 : <%=id %><br/>
			쿠키비번 : <%= pw%><br/>
			쿠키아이디저장여부 : <%= flag%><br/>
	</body>
</html>