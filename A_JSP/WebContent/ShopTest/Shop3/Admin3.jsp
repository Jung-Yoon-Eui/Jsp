<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 모드</title>
</head>
<body>
<h2>관리자 페이지 입니다.</h2>

	<h3>상품 목록</h3>
<form>
<%
	//"productList"에 저장된 arraylist product의 값을 arraylist pro로 불러옵니다.
	ArrayList<String> pro = (ArrayList<String>)application.getAttribute("productList");
	
	// arraylist pro에 저장된 값을 차례대로 출력합니다.
	for(int i=0; i<pro.size(); i++){
%>
		<input type="checkbox" name="chk" value=<%=i %> />[ <%= pro.get(i)%> ]<br>
<%
	}
%>
	<br>
	<input type="button" value="전체 삭제" onclick="location.href='Admin_AllDel.jsp'"><hr>
	<input type="button" value="관리자 모드 종료" onclick="location.href='Login.jsp'"/>
</form>
</body>
</html>
