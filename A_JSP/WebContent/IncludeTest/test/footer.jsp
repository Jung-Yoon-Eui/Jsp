<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer.jsp</title>
</head>
<body>
		여기는 footer.jsp! <br/> request 스코프를 타고 옴! <br/>
		<%= request.getParameter("email") %>,
		<%= request.getParameter("tel") %>
</body>
</html>