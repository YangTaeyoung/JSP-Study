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
		<%
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String flag = request.getParameter("flag");
			String rememberId = null;
			String rememberPw = null;
			if(flag.equals("1") || flag.equals(""))
			{
				flag = "1";
				rememberId="temp";
				rememberPw="temp";
			}
			else if(flag.equals("2"))
			{
				rememberId="keep";
				rememberPw="temp";
			}
			else if(flag.equals("3"))
			{
				rememberId="keep";
				rememberPw="keep";

				
			}
			
			// 쿠키 저장
			Cookie cookieId = new Cookie("id", id);
			Cookie cookiePw = new Cookie("pw", pw);
			Cookie cookieflag = new Cookie("flag",flag);
			Cookie cookieRememberId = new Cookie("rememberId", rememberId);
			Cookie cookieRememberPw = new Cookie("rememberPw", rememberPw);
			response.addCookie(cookieId);
			response.addCookie(cookiePw);
			response.addCookie(cookieflag);
			response.addCookie(cookieRememberId);
			response.addCookie(cookieRememberPw);
			
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC","jspbook","jspbook");
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery("SELECT CUSTOMER_ID, CUSTOMER_PW FROM CUSTOMER_INFO WHERE CUSTOMER_ID='"+id+"'");
			if(rs.next())
			{
				if(!pw.equals(rs.getString(2))) // 비밀번호 불일치시
				{
		%>
					<h3>아이디와 비밀번호가 일치하지 않습니다. 메인페이지로 이동합니다.</h3>
		<%
					pageContext.include("Main.jsp");
				}
				else // 로그인 되었을 시
				{
					session.setAttribute("ID", id);
					pageContext.forward("LoginChk.jsp");
				}
			}
			else // 아이디가 없을 시
			{
		%>
				<h3>아이디와 비밀번호가 일치하지 않습니다. 메인페이지로 이동합니다.</h3>
		<%
				pageContext.include("Main.jsp");
			}
		
			// SQL 종료
			if(rs!=null)
				rs.close();
			if(stmt != null)
				stmt.close();
			if(conn != null)
				conn.close();
		%>
	</body>
</html>