<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Cookie 생성</title>
	</head>
	<body>
		<h3>"CookieTest"쿠키를 확인합니다.</h3>
		
		<%
			Cookie[] cookies = request.getCookies();
			if(cookies != null && cookies.length > 0)
			{
				for(int i =0; i < cookies.length; i++)
				{
					if(cookies[i].getName().equals("MyCookie"))
					{
		%>
						<h3>
							쿠키의 이름: <%=cookies[i].getName()%>
							쿠키의 값: <%=cookies[i].getValue() %>
						</h3>
									
		<% 
					}
				}
			}
		%>
	</body>
</html>