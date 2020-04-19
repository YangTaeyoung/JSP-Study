<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>로그인 상태</title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
		</style>
	</head>
	<body>
		<h3>
			${sessionScope.ID}님 환영합니다.<br/>
			당신의 세션아이디: <%=session.getId()%>
		</h3>
		<hr/>
		<table>
			<tr>
				<td>
					<form action="MyInfo.jsp" method="post">
						<input type="submit" value="내 정보 확인">
					</form>
				</td>
				<td>
					<form action="Logout.jsp" method="post">
						<input type="submit" value="로그아웃">
					</form>
				</td>
				<td>
					<form action="Main.jsp" method="post">
						<input type="submit" value="메인 페이지">
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>