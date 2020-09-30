<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward action.jsp</title>
</head>
<body>
	<h3>Forward_action.jsp에서 footer.jsp 호출</h3>
	<hr/>
		
	<jsp:forward page="footer.jsp">
		<jsp:param name="email" value="test@test.net"/>
		<jsp:param name="tel" value="000-0000-0000"/>
	</jsp:forward>
</body>
</html>