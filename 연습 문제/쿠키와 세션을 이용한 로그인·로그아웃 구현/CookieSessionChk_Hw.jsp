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
			
			if(cookies != null && cookies.length > 0)
			{
				for(int i = 0; i < cookies.length; i++)
				{
					if(cookies[i].getName().equals("loginStatus"))
					{
						loginStatus = cookies[i].getValue();
					}
					
					if(cookies[i].getName().equals("rememberId") && cookies[i].getValue().equals("keep"))
					{
						rememberId = cookies[i].getValue();
					}
					if(cookies[i].getName().equals("rememberId") && cookies[i].getValue().equals("temp"))
					{
						rememberId = cookies[i].getValue();
					}
					if(cookies[i].getName().equals("id"))
					{
						id = cookies[i].getValue();			
					}
					if(cookies[i].getName().equals("rememberPw") && cookies[i].getValue().equals("keep"))
					{
						rememberPw = cookies[i].getValue();
					}
					if(cookies[i].getName().equals("rememberPw") && cookies[i].getValue().equals("temp"))
					{
						rememberPw = cookies[i].getValue();
					}
					if(cookies[i].getName().equals("pw"))
					{
						pw = cookies[i].getValue();			
					}
				}
			}
		
			out.println(rememberId);
			out.println(rememberPw);

			out.println(id);
			out.println(pw);
			
			if(loginStatus != null && loginStatus.equals("login") && rememberId != null && id!=null && rememberPw != null && pw != null)
			{
		%>
					<h3>
						[<%=id%>]님! 환영합니다.<br/>
						로그인 아이디 기억상태를 [<%=(rememberId.equals("temp")?"유지하지않음":"유지함")%>]으로 설정하셨습니다.<br/>
						로그인 비밀번호 기억상태를 [<%=(rememberPw.equals("temp")?"유지하지않음":"유지함")%>]으로 설정하셨습니다.
					</h3>
					<form action="CookieSessionLogout_Hw.jsp" method ="post">
						<input type="submit" value="로그아웃">
					</form>
		<%
			}
			else
			{
		%>
				<h3>로그인 하지 않으셨거나, 잘못된 접근입니다.<br/>
				로그인하여 주시기 바랍니다.</h3>
				<form action="CookieSessionLogin_Hw.jsp" method="post">
					<input type="submit" value="로그인 페이지">
				</form>
		<%
			}
		%>
		
	</body>
</html>