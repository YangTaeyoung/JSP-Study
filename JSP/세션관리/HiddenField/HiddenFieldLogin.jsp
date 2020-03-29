<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Hidden Field 방식을 이용한 세션관리</title>
	</head>
	<body>
		<form action="HiddenFieldLoginChk.jsp" method="post">
			<table border ="1" style="border-collapse: collapse">
				<tr>
					<td align="center">아이디</td>
					<td><input type="text" name = "id"/></td>
				</tr>
				<tr>
					<td align="center">비밀번호</td>
					<td><input type="password" name = "pwd"/></td>
				</tr>
				<tr>
					<td colspan ="2" align="right">
						<input type = "submit" value="로그인"/>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>