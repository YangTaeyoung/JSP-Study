<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>쿠키의 삭제</title>
	</head>
	<body>
		<h3>Cookie 클래스를 사용하여 쿠키를 생성합니다.</h3>
		<%
			Cookie cookie = new Cookie("DelCookie","ThisCookiewillbeDeleted");
			response.addCookie(cookie);
		%>
		<h4>쿠키 생성이 완료되었스빈다.</h4>
		<h3>생성된 쿠키의 구성 요소들으르 출력합니다.</h3>
		<h4>
			쿠키의 이름: <%=cookie.getName() %>
			쿠키의 값: <%=cookie.getValue() %>
		</h4>
		<form action="CookieDelPerform.jsp" method ="post">
			<input type="submit" value="쿠키 삭제 페이지">
		</form>
	</body>
</html>