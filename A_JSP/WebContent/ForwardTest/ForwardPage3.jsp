<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward 3page</title>
</head>
<body>
<h2>Forward 3page</h2><hr/>

<table border=1>
	<tr>
		<td>이름</td>
		<td><%= session.getAttribute("userName") %></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><%= request.getParameter("tel") %></td>
	</tr>
</table>
</body>
</html>