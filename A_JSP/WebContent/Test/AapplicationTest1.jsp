<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	서버 정보 : <%=application.getServerInfo() %><br/>
	서블릿 API 버전 정보 : <%=application.getMajorVersion()+"."+application.getMajorVersion()%> <br/>
	파일 실제 경로 :	<%=application.getRealPath("AppTest.jsp")%><br/>
<hr/>
<%
	application.setAttribute("username", "홍길동");
	application.setAttribute("count", 1);
		
%>
<a href="AapplicationTest2.jsp">확인</a>
</body>
</html>