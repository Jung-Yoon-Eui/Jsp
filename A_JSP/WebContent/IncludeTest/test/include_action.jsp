<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include action.jsp</title>
</head>
<body>
	<h3>include_action.jsp에서 footer.jsp 호출</h3>
	<hr/>
	include_action.jsp에서 출력한 메시지 임.<hr/>
	
	<jsp:include page="footer.jsp">
		<jsp:param name="email" value="test@test.net"/>
		<jsp:param name="tel" value="000-0000-0000"/>
	</jsp:include>
</body>
</html>