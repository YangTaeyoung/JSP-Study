<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<% 
			int rowNum;
			Connection conn = null;
			PreparedStatement pstmt = null;		
			ResultSet rs =null;
			
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer_info?characterEncoding=UTF-8&serverTimezone=UTC","jspbook","jspbook");
				pstmt = conn.prepareStatement("SELECT * FROM student WHERE DEPARTMENT_ID = ? AND STUDENT_ID LIKE ?;");
				
				pstmt.setString(1, "M001");
				pstmt.setString(2, "2014%");
				
				rs = pstmt.executeQuery();
				
				out.println("<table border='1'>");
				while(rs.next())
				{
					out.println("<tr>");
					for(int i = 1; i <=5;i++)
						out.println("<td>"+rs.getString(i) + "</td>");
					out.println("</tr>");
				}
				out.println("</table>");
				
			}
			finally
			{
				if(pstmt != null)
				{
					try
					{
						pstmt.close();
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
	</body>
</html>