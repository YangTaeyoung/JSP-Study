<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>forward 액션태그 사용</title>
	</head>
	<body>
		포워딩 수행 전 메시지입니다.<br/>
		하나<br/>
		둘<br/>
		셋<br/>
		
		포워딩을 사용합니다.
		<jsp:forward page="ActionTagForwarded.jsp"/>
		포워딩 수행 후 메시지입니다.<br/>
		하나<br/>
		둘<br/>
		셋<br/>
	</body>
</html>