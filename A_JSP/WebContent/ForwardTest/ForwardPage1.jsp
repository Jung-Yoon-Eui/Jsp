<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward 1page</title>
</head>
<body>
<h2>Forward 1page</h2><hr/>
<form name=form1 action=ForwardPage2.jsp method=post>
<table border=1>
	<tr>
		<td>이름</td>
		<td><input type="text" name="userName"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="확인" name="b1">
		</td>
	</tr>
</table>
</form>

<form name=form2 action="Response_sendRedirect_Test.jsp" method=post>
<table border=1>
	<tr>
		<td>response.sendRedirect</td>
		<td><input type="text" name="userName"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="확인" name="b1">
		</td>
	</tr>
</table>
</form>
</body>
</html>