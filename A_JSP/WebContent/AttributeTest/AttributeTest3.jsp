<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pag3</title>
</head>
<body>
<h2><b>영역과 속성 테스트</b></h2>
<table border=1 style="border-collapse: collapse">
<tr>
	<td colspan="2"> Application 영역에 저장 한 내용들 </td>
</tr>
<tr>
	<td> 이름 </td>
	<td> <%=application.getAttribute("userName") %></td>
</tr>
<tr>
	<td> 아이디</td>
	<td> <%=application.getAttribute("userId") %> </td>
</tr>
</table>
<br/>
<table border=1 style="border-collapse: collapse">
<tr>
	<td colspan="2"> Session 영역에 저장 한 내용들 </td>
</tr>
<%	
	Enumeration e = session.getAttributeNames();
	
	while(e.hasMoreElements()){	// e의 값의 개수만큼 반복
								// hasMoreElements() : 읽어올 요소가 남아있는지 확인. 있으면 true, 없으면 false.
		String attName = (String)e.nextElement(); // nextElement() : 다음 요소를 읽어 옴.
		String value = (String)session.getAttribute(attName);
%>
	<tr>
		<td>
			<%=attName %>
		</td>
		<td>
			<%=value %>
		</td>
	</tr>
<%	
	}
%>
</table>
</body>
</html>