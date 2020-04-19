<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>회원가입 페이지</title>
		<style>
			*{
				padding: 0;
				margin: 0;
			}
			h3{
				color:red;
			}
			#suc
			{
				color:black;
			}
		</style>
	</head>
	<body>
		<% 
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String pwChk = request.getParameter("pwChk");
			String name = request.getParameter("name");
			String birth = request.getParameter("birth");
			String tel = request.getParameter("tel");
			String add = request.getParameter("add");
			String email = request.getParameter("email");
			Connection conn = null;
			PreparedStatement pstmt = null;
			int rowNum;
			if(pw.equals(""))
			{
		%>
				<h3>[비밀번호]란를 입력하지 않으셨습니다. 회원가입 페이지로 이동합니다.</h3>
		<%		
				pageContext.include("Join.Jsp");
			}
			else if(pwChk.equals(""))
			{
		%>
				<h3>[비밀번호 확인]란를 입력하지 않으셨습니다. 회원가입 페이지로 이동합니다.</h3>
		<%		
				pageContext.include("Join.Jsp");
			}
			else if(!pw.equals(pwChk))
			{
		%>
				<h3>입력하신 비밀번호가 일치하지 않습니다. 회원가입 페이지로 이동합니다.</h3>
		<%		
				pageContext.forward("Join.jsp");
			}
			else
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC","jspbook","jspbook");
				pstmt = conn.prepareStatement("INSERT INTO CUSTOMER_INFO(CUSTOMER_ID, CUSTOMER_PW, CUSTOMER_NAME, CUSTOMER_EMAIL, CUSTOMER_TEL, CUSTOMER_ADD, CUSTOMER_BIRTH) VALUES(?, ?, ?, ?, ?, ?, STR_TO_DATE(?, '%Y-%m-%d'))");
				pstmt.setString(1, id);
				pstmt.setString(2, pw);
				pstmt.setString(3, name);
				pstmt.setString(4, email);
				pstmt.setString(5, tel);
				pstmt.setString(6, add);
				pstmt.setString(7, birth);
				try
				{
					rowNum = pstmt.executeUpdate();
			
		%>
					<h3 id="suc">회원가입이 완료되었습니다. 메인페이지로 이동합니다.</h3>
		<%
					pageContext.include("Main.jsp");
				}
				catch(SQLException e)
				{
					out.println(e.getMessage());
		%>
					<h3>아이디가 중복되었습니다. 다시 입력해주세요</h3>
		<% 
					pageContext.include("Join.jsp");
				}
				finally
				{
					if(pstmt!= null)
					{
						pstmt.close();
					}
					if(conn != null)
					{
						conn.close();
					}
				}
			}
		%>
	</body>
</html>