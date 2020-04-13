<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>JDBC Insert</title>
	</head>

	<body>
		<%
			
			Connection conn = null;
			Statement stmt = null;		
			int rowNum;
			
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC","jspbook","jspbook");
				stmt = conn.createStatement(); 
				out.println("여기1");
				rowNum = stmt.executeUpdate("INSERT INTO STUDENT(STUDENT_ID, STUDENT_NAME, STUDENT_EMAIL, STUDENT_TEL, DEPARTMENT_ID) VALUES('20140007','김1아','yunakim@email.com','010-0007-1234','M001');");
				out.println("여기2");
				out.println(rowNum+"개의 행이 삽입되었습니다. <hr/>");
			}
			catch(SQLException e)
			{
				
				// 에러발생
			}
			finally
			{
				if(stmt != null)
				{
					try
					{
						stmt.close();
					}
					catch(SQLException e){}
				}
				if(conn != null)
				{
					try
					{
						conn.close();
					}
					catch(SQLException e){}
				}
			}
		%>
		<a href="http://localhost:8084/Chap10/FirstJDBC.jsp">결과 확인</a>
	</body>
</html>