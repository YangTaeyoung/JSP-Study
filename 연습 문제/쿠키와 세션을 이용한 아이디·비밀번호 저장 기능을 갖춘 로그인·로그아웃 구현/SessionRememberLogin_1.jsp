<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>로그인 화면</title>
	
	</head>
		<%
			Cookie[] cookies = request.getCookies();
			String rememberId= null;
			String id = null;
			String rememberPw = null;
			String pw = null;
			String flag = null;
			if(cookies != null && cookies.length > 0)
			{
				for(int i = 0; i < cookies.length; i++)
				{
					if(cookies[i] != null && cookies[i].getName().equals("rememberId"))
					{
						rememberId = cookies[i].getValue();
						break;
					}
				}
				for(int i = 0; i < cookies.length ;i++)
				{
					if(cookies[i] != null && cookies[i].getName().equals("id"))
					{
						id = cookies[i].getValue();
						break;
					}
				}
				for(int i = 0; i < cookies.length; i++)
				{
					if(cookies[i] != null && cookies[i].getName().equals("rememberPw"))
					{
						rememberPw = cookies[i].getValue();
						break;
					}
				}
				for(int i = 0; i < cookies.length; i++)
				{
					if(cookies[i] != null && cookies[i].getName().equals("pw"))
					{
						pw = cookies[i].getValue();
						break;
					}
				}
				for(int i = 0; i < cookies.length; i++)
				{
					if(cookies[i] != null && cookies[i].getName().equals("flag"))
					{
						flag = cookies[i].getValue();
						break;
					}
				}
			}
		%>
	<body>
	
		<%
			out.println(flag + rememberId + rememberPw);
			
			if(session.getAttribute("ID") == null)
			{
		%>
				<form action="SessionRememberSet_1.jsp" method="post">
					<table border="1">
						<tr>
							<td align="center">아이디</td>
							<td><input type="text" name="id" value=<%=((rememberId == null || rememberId.equals("temp"))? "": id )%>></td>
						</tr>
						<tr>
							<td align="center">비밀번호</td>
							<td><input type="password" name="pw" value=<%=((rememberPw == null || rememberPw.equals("temp")) ? "": pw)%>></td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="radio" name="flag" value="1"
								 <%=((flag == null || (flag != null && flag.equals("1")))? "checked=\"checked\"":"")%>>
								 아이디, 비밀번호 기억 안함 <br/>
								<input type="radio" name="flag" value="2"
							 	<%=((flag != null && flag.equals("2"))? "checked=\"checked\"":"")%>>
							 	아이디 기억<br/>
							 	<input type = "radio" name="flag" value="3" 
							 	<%=((flag != null && flag.equals("3"))? "checked=\"checked\"":"")%>>
							 	아이디, 비밀번호 기억
							 </td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="로그인"></td>
						</tr>
					</table>
				</form>
		<%
			}
			else
			{
		%>
				<h3><%= session.getAttribute("ID")%>님 환영합니다.</h3>
				<table>
					<tr>
						<td>
							<form action="SessionRememberChk.jsp" method="post">
								<input type="submit" value="로그인 정보 확인">
							</form>
						</td>
					</tr>
					<tr>
						<td>
							<form action="SessionRememberQuit.jsp" method="post">
								<input type="submit" value="로그아웃">
							</form>
						</td>
					</tr>
				</table>
		<% 				
			}
		%>

	</body>
</html>