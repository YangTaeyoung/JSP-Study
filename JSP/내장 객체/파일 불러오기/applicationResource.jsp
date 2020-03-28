<%@page import="java.io.FileWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="org.apache.tomcat.jni.Buffer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>application 내장 객체의 서버 자원 정보</title>
	</head>
	<body>
		<h3>절대 경로를 활용하여 applicationResource.txt 사용</h3>
		<%
			String path1 = "C:\\Users\\apxkf\\OneDrive - 인하대학교\\Java\\workspace\\Chap06\\WebContent\\applicationResource.txt";
		%>
		<h5><%=path1%></h5>
		<% 
			BufferedReader bf1 = new BufferedReader(new FileReader(path1));
			String txtMsg1;
			
			try
			{
				do
				{
					txtMsg1 = bf1.readLine();
					if(txtMsg1 != null)
					{ 
						out.println( txtMsg1+"<br/>");
					}
				}
				while(txtMsg1 !=null);	
			}
			catch(Exception e)
			{
				out.println(e.getMessage());
			}
			finally
			{
				try
				{
					bf1.close();	
				}
				catch(Exception e)
				{
					out.println(e.getMessage());
				}
			}
		%><hr/>
		<h3>application 내장 객체의 getRealPath()메서드를 활용하여 applicationResource.txt 사용</h3>
		<%
			String path2 = application.getRealPath("/applicationResource.txt");
		%>
		<h5><%=path2 %></h5>
		<%
		BufferedReader bf2 = new BufferedReader(new FileReader(path2));
		String txtMsg2;
		try
		{
			do
			{
				txtMsg2 = bf2.readLine();
				if(txtMsg2 != null) out.println(txtMsg2+"<br/>");
			}
			while(txtMsg2 !=null);	
		}
		catch(Exception e)
		{
			out.println(e.getMessage());
		}
		finally
		{
			try
			{
				bf2.close();	
			}
			catch(Exception e)
			{
				out.println(e.getMessage());
			}
		}
		%>
	</body>
</html>