<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<table border = "1">
			<%
				for(int i = 0; i <= 9; i++ )
				{
			%>
					<tr>
					<%
					for(int j = 1; j <= 9; j++)
					{
						if(i == 0)
						{
						%>
							<td><%=j%>단</td>
						<% 
						}
						else
						{
						%>
						<td><%=j%> × <%=i%> = <%=j*i%></td>
						<%
						}
						
					}
					%>
					</tr>
			<% 
				}
				
			%>
		</table>
	</body>
</html>