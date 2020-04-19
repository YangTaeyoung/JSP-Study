<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title> 메인 페이지 </title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
		</style>
		<script type="text/javascript">
			function goJoin() {
				window.open("Join.jsp", "address");
			}
		</script>
	</head>
	<body>
	<%
		if(session.getAttribute("ID") == null) 
		{
	%>
			<form action="LoginSet.jsp" method="post">
				<table border="1" style="border-collapse: collapse;">
					<tr>
						<th>아이디</th>
						<td>&nbsp;<input style="width: 95%;" type="text" name="id" value=${cookie.rememberId.value =="keep"? cookie.id.value : ""}></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>&nbsp;<input style="width: 95%;" type="text" name="pw" value=${cookie.rememberPw.value =="keep"? cookie.pw.value : ""}></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="radio" name="flag" value="1" ${(cookie.flag.value == "1"||cookie.flag.value == "")? "checked=\"checked\"":""}>기억하지 않음
							<input type="radio" name="flag" value="2" ${cookie.flag.value == "2"? "checked=\"checked\"":""}>아이디 기억
							<input type="radio" name="flag" value="3" ${cookie.flag.value == "3"? "checked=\"checked\"":""}>아이디 및 비밀번호 기억
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input style="width: 100%;" type="submit" value="로그인">
						</td>
					</tr>
					<tr>
						<td colspan="2"><button style="width: 100%;" onclick="goJoin()">회원가입</button></td>
					</tr>
				</table>
			</form>
	<%
		}
		else
		{
	%>
		<h3>메인페이지 입니다. 이미 로그인 중입니다.</h3>
		<hr/>
	<% 
			pageContext.include("LoginChk.jsp");
		}
	%>
			
	</body>
</html>