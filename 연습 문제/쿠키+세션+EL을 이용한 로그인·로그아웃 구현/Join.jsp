<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title> 회원가입 페이지 </title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
		</style>
	</head>
	<body>
		<form action="JoinSet.jsp" method="post">
			<table border="1" >
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="text" name="pw"></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="text" name="pwChk"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input style="width:97%;" type="date" name="birth"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="tel" name="tel"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="add"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td colspan="2"><input style="width:100%;" type="submit" value="회원가입"></td>
				</tr>
			</table>
		</form>
	</body>
</html>