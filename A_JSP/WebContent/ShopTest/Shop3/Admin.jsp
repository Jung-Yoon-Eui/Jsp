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
<hr>
<%
	// 등록할 상품을 담을 String 타입 arraylist product를 생성합니다.
	ArrayList<String> product = new ArrayList<String>();

	// 어플리케이션 영역에 arraylist product를 "productList"에 저장합니다.
	application.setAttribute("productList", product);
%>
<form action="Admin2.jsp" method=post>
	<input type="text" value="상품을 입력하세요." name="products"/>
	<input type="submit" value="등록">
	<input type="button" value="상품 목록 확인" onclick="location.href='Admin3.jsp'"/>
</form><hr>
	<input type="button" value="관리자 모드 종료" onclick="location.href='Login.jsp'"/>
</body>
</html>
