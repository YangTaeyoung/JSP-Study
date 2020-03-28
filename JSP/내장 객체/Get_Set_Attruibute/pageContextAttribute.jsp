<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext 내장객체의 데이터 공유</title>
</head>
<body>
	setAttribute()메서드 실행<br/>
	<%
		pageContext.setAttribute("testAttribute", "Hello.pageContext()!");
	%>
	getAttribute()메서드를 이용해 공유된 데이터 불러오기<br/>
	현재 testAttribute의 속성값:
	<%= pageContext.getAttribute("testAttribute")%>
	<hr/>
	getAttrubute()메서드를 통해 공유된 참조 변수에 대입하기<br/>
	현재 testAttribute의 속성값:
	<%
		Object attribute1 = pageContext.getAttribute("testAttribute");
		out.print((String) attribute1 + "<hr/>");
	%>
	<p>removeAttribute()메서드를 통해 공유된 데이터의 속성 값 제거하기<p/>
	현재 testAttribute의 속성값
	<%
		pageContext.removeAttribute("testAttribute");
		Object attribute2 = pageContext.getAttribute("testAttribute");
		out.print((String) attribute2 + "<hr/>");
	%>
</body>
</html>