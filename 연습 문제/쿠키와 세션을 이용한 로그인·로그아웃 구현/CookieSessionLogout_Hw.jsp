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
			Cookie[] cookies = request.getCookies();
			String loginStatus = null;
			String rememberId = null;
			String rememberPw = null;
			String id = null;
			String pw = null;
			if(cookies != null && cookies.length >0)
			{
				for(int i = 0; i<cookies.length; i++)
				{
					if(cookies[i].getName().equals("loginStatus"))
					{
						loginStatus = cookies[i].getName();
						cookies[i].setValue("logout");
						cookies[i].setMaxAge(0);
						response.addCookie(cookies[i]);
					}
					if(cookies[i].getName().equals("rememberId"))
					{
						rememberId = cookies[i].getValue();
					}
					if(cookies[i].getName().equals("id"))
					{
						id = cookies[i].getValue();
					}
					if(cookies[i].getName().equals("rememberPw"))
					{
						rememberPw = cookies[i].getValue();
					}
					if(cookies[i].getName().equals("pw"))
					{
						pw = cookies[i].getValue();
					}
				}
			}
		%>
		<h3>[<%=id %>]님 정상적으로 로그아웃되셨습니다.<br/>
		이용해주셔서 감사합니다.</h3>
		<%
			if(rememberId != null && rememberId.equals("temp"))
			{
				if(cookies != null && cookies.length>0)
				{
					for(int i = 0; i < cookies.length; i++)
					{
						if(cookies[i].equals("id"))
						{
							cookies[i].setMaxAge(0);
							response.addCookie(cookies[i]);
						}
					}
				}
			}
			if(rememberId != null && rememberPw.equals("temp"))
			{
				if(cookies != null && cookies.length>0)
				{
					for(int i = 0; i < cookies.length; i++)
					{
						if(cookies[i].equals("pw"))
						{
							cookies[i].setMaxAge(0);
							response.addCookie(cookies[i]);
						}
					}
				}
			}
			pageContext.include("SessionRememberLogin.jsp");
		%>
		
	</body>
</html>