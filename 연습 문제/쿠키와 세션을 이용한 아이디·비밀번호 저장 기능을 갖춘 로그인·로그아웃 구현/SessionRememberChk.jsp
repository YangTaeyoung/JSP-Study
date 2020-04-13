<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title></title>
	</head>
	<body>
		<h3>[<%=session.getAttribute("ID") %>]님 환영합니다.</h3>
		당신의 세션 아이디는 [<%=session.getId()%>]입니다.
		<table>
			<tr>
				<td>
					<form action="SessionRememberQuit.jsp" method="post">
						<input type="submit" value="로그아웃">
					</form>
				</td>
				<td>
					<form action="SessionRememberLogin_1.jsp" method="post">
						<input type="submit" value="첫 화면으로">
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>