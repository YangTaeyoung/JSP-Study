<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="MethodTest.InstanceMethod"%>
<%
	InstanceMethod instanceMethod = new InstanceMethod();
	request.setAttribute("usingMethod", instanceMethod);
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title></title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
		</style>
	</head>
	<body>
		<h3>instanceMethod 객체의 setData 메서드 사용<br/>
		${usingMethod.setData(10)}
		메서드 호출 완료</h3><hr/>
		<h3>
			instanceMethod 객체의 getData 메서드 사용<br/>
			메서드 호출 결과: ${usingMethod.getData()}
		</h3>
		<h3>
			instanceMethod 객체의 다중 입력 파라미터를 사용하는 getAddData 메서드 사용<br/>
			메서드 호출 결과: ${usingMethod.getAddData(usingMethod.getData(),3)}
		</h3>
		<h3>
			instanceMethod 객체의 다중 압력 파라미터를 사용하는 getAddData 메서드 이용 <br/>
			메서드 호출 결과: ${usingMethod.getArrayData(usingMethod.getData(),3)}
		</h3>
		<h3>
			instanceMethod 객체의 다중 압력 파라미터를 사용하는 getAddData 메서드 이용 <br/>
			0번 인덱스 값 : ${usingMethod.getArrayData(usingMethod.getData(),3)[0]}<br/>
			1번 인덱스 값 : ${usingMethod.getArrayData(usingMethod.getData(),3)[1]}<br/>
			2번 인덱스 값 : ${usingMethod.getArrayData(usingMethod.getData(),3)[2]}<br/>
			
		</h3>
	</body>
</html>