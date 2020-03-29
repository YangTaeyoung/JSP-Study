<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>가입 페이지</title>
	</head>
	<body>
		<h3>작성하신 내용은 아래와 같습니다.</h3>
		<% 
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			String name = request.getParameter("name");
			String sex= request.getParameter("sex");
			String id = request.getParameter("id");
			String addr = request.getParameter("addr");
			String[] hobby = request.getParameterValues("hobby");
			String tel = request.getParameter("tel");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String passchk = request.getParameter("passchk");
		
			if(password.equals(passchk))
			{
		%>
			<p>이름: <%=name%></p><hr/>
			<p>성별: <%=sex%></p><hr/>
			<p>아이디: <%=id%></p><hr/>
			<p>주소: <%=addr%></p><hr/>
			<p>전화번호: <%=tel%></p><hr/>
			<p>이메일주소: <%=email%></p><hr/>
			     취미: 		<%
			 				if(hobby == null)
			 				{
			 					out.println("[선택한 취미가 없습니다.]");
			 				}
			 				else
			 				{
			 			%>
						<table border = "1" style="border-collapse:collapse;">
			 			<% 
				 				for(int i = 0; i < hobby.length;i++)
				 				{
				 					out.println("<tr><td>"+ hobby[i]+"</td></tr>");
				 				}
			 			%>
						</table>
						<%	
							}
						%>	
		<%
			}
			else
			{
				out.println("<p>비밀번호가 틀렸습니다.</p>");
			}
		%>
		
	</body>
</html>