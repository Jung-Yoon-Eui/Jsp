<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page2</title>
</head>
<body>
<h2><b>영역과 속성 테스트</b></h2>
<% 
	String name = request.getParameter("userName");
	String id = request.getParameter("userId");
	application.setAttribute("userName", name);
	application.setAttribute("userId", id);
%>
	<%=application.getAttribute("userName") %>님 반갑습니다.<br/>
	<%=application.getAttribute("userName") %>님의 아이디는<%=application.getAttribute("userId") %> 입니다.<br/>

<form action= "AttributeTest2.jsp">
<table border=1 style="border-collapse: collapse">
<tr>
	<td colspan="2"> Session 영역에 저장 할 내용들 </td>
</tr>
<tr>
	<td> e-mail 주소 </td>
	<td> <input type="text" name="userEmail"></td>
</tr>
<tr>
	<td> 집 주소</td>
	<td> <input type="text" name="userAdr"> </td>
</tr>
<tr>
	<td> 전화 번호</td>
	<td> <input type="text" name="userSell"> </td>
</tr>
<tr>
	<td colspan="2"> <input type="submit"></td>
</tr>
</table>
</form>
</body>
</html>