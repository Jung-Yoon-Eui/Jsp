<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>import 속성 test</title>
</head>
<body>
<h2>현재는 <%=new SimpleDateFormat().format(new Date()) %> 입니다.</h2>
</body>
</html>