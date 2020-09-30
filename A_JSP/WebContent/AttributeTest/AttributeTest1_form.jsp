<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form/page1</title>
</head>
<body>
<h2><b>영역과 속성 테스트</b></h2>
<form action= "AttributeTest1.jsp">
<table border=1 style="border-collapse: collapse">
<tr>
	<td colspan="2"> Application 영역에 저장 할 내용들 </td>
</tr>
<tr>
	<td> 이름 </td>
	<td> <input type="text" name="userName"></td>
</tr>
<tr>
	<td> 아이디</td>
	<td> <input type="text" name="userId"> </td>
</tr>
<tr>
	<td colspan="2"> <input type="submit"></td>
</tr>
</table>
</form>
</body>
</html>