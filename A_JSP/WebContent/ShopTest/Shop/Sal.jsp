<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%-- <%@ page import="java.util.Enumeration" %> --%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
span{
	color: red
}
</style>
<meta charset="UTF-8">
<title>계산</title>
</head>
<body>
<span>
<%= session.getAttribute("userName") %>님의 장바구니<hr/>
</span>
<%
	ArrayList arr = (ArrayList)session.getAttribute("lists");

	for(int i=0; i<arr.size(); i++){
%>
		<%= arr.get(i)%>
<% 
	}
%>
<input type="button" value="로그아웃" onclick="location='Logout.jsp'">

<%-- <%	 --%>
<!-- 	session.getAttribute("select"); -->
<!-- 	Enumeration e = session.getAttributeNames(); -->
	
<!-- 	while(e.hasMoreElements()){ -->
		
<!-- 		String sel = (String)e.nextElement();   -->
<!-- 		String value = (String)session.getAttribute(sel); -->
	
<!-- 		out.println(sel +":"+ value); -->
<!-- 	} -->
<!-- %> -->
</body>
</html>