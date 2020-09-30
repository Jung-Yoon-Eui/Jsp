<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward 2page</title>
</head>
<body>
<h2>Forward 2page</h2><hr/>
<form name=form2 action=ForwardPage3.jsp method=post>
<table border=1>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="tel"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="확인" name="b3">
			<input type="reset" value="취소" name="b4">
		</td>
	</tr>
</table>
</form>
<% String names = request.getParameter("userName"); %>
<% session.setAttribute("userName", names); %>
</body>
</html>