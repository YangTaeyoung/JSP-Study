<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Param 액션태그 사용</title>
	</head>
	<body>
		여기는 ActionTagParamFrom2.jsp 페이지입니다.<br/>
		ActionTagParamFrom2.jsp의 Subject 파라미터 값: <%=request.getParameter("subject") %><hr/>
		<jsp:include page="ActionTagParamTo2.jsp">
			<jsp:param name="subject" value="ActionTagParamex"/>
		</jsp:include>		
		<!-- http://localhost:8084/Chap09/ActionTagParamFrom2.jsp?subject=temp을 쳐보자. 따로 파라미터를 입력하더라도, 덮어쓰게 된다. -->
	</body>
</html>