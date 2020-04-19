<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
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
		<h3>${sessionScope.ID}님의 정보를 출력합니다.</h3><hr/>
		<%
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC","jspbook","jspbook");
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT CUSTOMER_NAME, CUSTOMER_BIRTH, CUSTOMER_EMAIL, CUSTOMER_ADD, CUSTOMER_TEL FROM CUSTOMER_INFO WHERE CUSTOMER_ID='"+session.getAttribute("ID")+"'");

				out.println("<table border ='1'>");
				if(rs.next())
				{
					for(int i = 1; i <= 5; i++)
					{
						out.println("<tr>");
						out.println("<td>" + rs.getString(i) + "</td>");
						out.println("</tr>");
					}	
				}
				out.println("</table>");
		%>
		<hr/>
		<table>
			<tr>
				<td>
					<form action="LoginChk.jsp" method="post">
						<input type="submit" value="돌아가기">
					</form>
				</td>
				<td>
					<form action="Logout.jsp" method="post">
						<input type="submit" value="로그아웃">
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>