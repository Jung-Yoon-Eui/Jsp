<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="BeansTest" class="Test_Beans.TestBean" scope="page"/>
<jsp:setProperty name="BeansTest" property="name" value="Ye"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beans Test</title>
</head>
<body>
<b>자바 Bean사용 예제</b>
<%-- <%=BeansTest.setName("ye")%> --%>
<%-- <h5><%=BeansTest.getName() %></h5> --%>
<h5><jsp:getProperty name="BeansTest" property="name"/></h5>
</body>
</html>