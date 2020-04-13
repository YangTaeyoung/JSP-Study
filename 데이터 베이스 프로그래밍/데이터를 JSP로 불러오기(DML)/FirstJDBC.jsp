<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>JDBC 첫 실행</title>
	</head>
	<body>
		<%
		//JDBC 드라이버 로딩
		//  Class.forName("com.mysql.jdbc.Driver");
			Class.forName("com.mysql.cj.jdbc.Driver");
	
			//JDBC URL 및 계정과 비밀번호를 지정하여 Connection 인스턴스를 통해 데이터베이스에 접속
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC","jspbook","jspbook");
			
			// SQL문을 살행하기 위한 Statement 인스턴스 획둑
			Statement stmt = conn.createStatement();
			
			// statement 인스턴스를 통해 실행한 SQL문의 결과를 ResultSet에 반환
			ResultSet rs = stmt.executeQuery("SELECT * FROM STUDENT");
			
			// 반환된 결과를 while과 반복문을 통해 출력
			out.println("<table border='1'>");
			while(rs.next())
			{
				out.println("<tr>");
				for(int i = 1; i <=5;i++)
					out.println("<td>"+rs.getString(i) + "</td>");
				out.println("</tr>");
			}
			out.println("</table>");
			// 반환된 데이터의 사용이 종료되면 close()를 통해 각각의 인스턴스 종료
			rs.close();
			stmt.close();
			conn.close();
		%>
	</body>
</html>