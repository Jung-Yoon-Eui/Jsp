<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
<table border="1">
	<tr>
		<th bgcolor="red"></th>
	<% 
			for(int i=2; i<10; i++){
	%>
		<th bgcolor="red"><%=i %></th>
	<%
			}
	%>
	</tr>
	
<% 
	for(int i=1; i<10; i++){
%>
	<tr>
		<th bgcolor="red" style="width: 40px"><%=i %></th>
<%
		for(int j=2; j<10; j++){
			
%>
		<td align="center"><%=j+"x"+i+"="+(i*j) %></td>
<%			
		}
%>
	</tr>
<%
	}
%>

</table>
</body>
</html>