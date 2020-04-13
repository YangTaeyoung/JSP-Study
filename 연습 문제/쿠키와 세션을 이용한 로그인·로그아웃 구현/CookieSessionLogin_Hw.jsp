<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>쿠키를 이용한 세션관리</title>
		<%	
			Cookie[] cookies = request.getCookies();
			String loginStatus = null;
			String flag = null;
			String rememberId = null;
			String rememberPw = null;
			String id = null;
			String pw = null;
			if(cookies != null && cookies.length>0)
			{
				for(int i = 0; i < cookies.length; i++)
				{
					if(cookies[i].getName().equals("rememberId") && cookies[i].getValue().equals("keep"))
					{
						rememberId = cookies[i].getValue();
					}
					if(cookies[i].getName().equals("id"))
					{
						id =cookies[i].getValue();			
					}
					if(cookies[i].getName().equals("rememberPw") && cookies[i].getValue().equals("keep"))
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
	</head>
	<body>
		<form action="CookieSessionSet_Hw.jsp" method="post">
			아이디와 비밀번호를 입력하십시오<hr/>
			<table border ="1">
				<tr>
					<td align="center">아이디</td>
					<td><input type="text" name="id" value="<%= rememberId!=null&&rememberId.equals("temp")?"":id %>"></td>
				</tr>
				<tr>
					<td align="center">비밀번호</td>
					<td><input type="password" name="pw" value="<%= rememberPw==null && rememberPw.equals("temp")?"": pw %>"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="radio" name="flag" value="1" <%=((rememberId == null && rememberPw == null)?  "checked=\"checked\"": "" ) %> />아이디 저장하지 않음</td>
				</tr>
				<tr>
					<td colspan="2"><input type="radio" name="flag" value="2" <%=((rememberId != null && rememberId.equals("keep") && rememberPw == null) ?  "checked=\"checked\"": "") %>/>아이디 기억</td>
				</tr>
				<tr>
					<td colspan="2"><input type="radio" name="flag" value="3" <%=((rememberId != null && rememberId.equals("keep") && rememberPw != null && rememberPw.equals("keep")) ?  "checked=\"checked\"": "") %>/>아이디 및 비밀번호 기억 기억</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="로그인"></td>
				</tr>
			</table>
		</form>
	</body>
</html>