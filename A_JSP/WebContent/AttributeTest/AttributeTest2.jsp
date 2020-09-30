<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pag3</title>
</head>
<body>
<h2><b>영역과 속성 테스트</b></h2>
<% 
	String email = request.getParameter("userEmail");
	String adr = request.getParameter("userAdr");
	String sell = request.getParameter("userSell");
	session.setAttribute("userEmail", email);
	session.setAttribute("userAdr", adr);
	session.setAttribute("userSell", sell);
%>
<%=application.getAttribute("userName") %>님의 정보가 모두 저장 되었습니다.<br/><br/>
<a href = "AttributeTest3.jsp">확인하러 가기</a>
</body>
</html>