<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<% 
	// 세션을 초기화 합니다.
	session.invalidate();
	
	// Login페이지로 돌아갑니다.
	response.sendRedirect("Login.jsp");	
%>
</body>
</html>