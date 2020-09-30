<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 담기 page</title>
</head>
<body>
<% 
	String name = request.getParameter("userName");
	session.setAttribute("userName", name);
	
	ArrayList list = new ArrayList();
	session.setAttribute("lists", list);
%>
<%= session.getAttribute("userName") %> 님이 로그인 중입니다.
<hr/>

<form action="Popup.jsp" method=post>

	<select name="select">
		<option selected>사과</option>
		<option>레몬</option>
		<option>자몽</option>
		<option>포도</option>
	</select>
	
	<select name="num">
		<option selected>1개</option>
		<option>2개</option>
		<option>3개</option>
		<option>5개</option>
		<option>6개</option>
		<option>7개</option>
		<option>8개</option>
		<option>9개</option>
		<option>10개</option>
	</select>
	
	<input type="submit" value="추가"><br/>
	<a href="Sal.jsp">계산하기</a>
</form>

<hr/>
<input type="button" value="로그아웃" onclick="location='logout.jsp'">

</body>
</html>