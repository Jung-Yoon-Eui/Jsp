<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>application 예제</h2><hr/>

<% 
	Integer con = (Integer)application.getAttribute("count");

	int count1 = con.intValue()+1;
	application.setAttribute("count",count1);
	
%>
	username에 설정된 값은 : <%=application.getAttribute("username") %><br/>

	count : <%=count1 %>

</body>
</html>