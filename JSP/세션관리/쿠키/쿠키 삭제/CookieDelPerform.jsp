<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>쿠키의 삭제</title>
	</head>
	<body>
		<h3>생성된 "DelCookie"쿠키의 값을 확인합니다. </h3>
		<%
			Cookie[] cookies = request.getCookies();
			int count = 0;
			if(cookies != null && cookies.length>0)
			{
				for(int i = 0; i < cookies.length; i++)
				{
					if(cookies[i].getName().equals("DelCookie"))
					{
		%>
						<h3>
							쿠키의 이름: <%=cookies[i].getName() %>
							쿠키의 값: <%=cookies[i].getValue() %>
						</h3><hr/>				
						<h3>DelCookie를 삭제합니다.</h3>
		<%
						cookies[i].setMaxAge(0);
						response.addCookie(cookies[i]);
					}
				}
			}
		%>
						<h3>[DelCookie]삭제가 완료되었습니다.</h3>
		<form action="CookieDelChk.jsp">
			<input type="submit" value="쿠키 삭제 확인">
		</form>
	</body>
</html>