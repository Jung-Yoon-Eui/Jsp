<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	table{
		background:pink;
		font-family:맑은 고딕;
		font-size:14pt;
   		height: 50px;
		width: 600px;
	}
	#a{
		width: 150px;
		height: 500px;
	}
	#b{
		color : red;
		height: 500px;
	}
</style>
<meta charset="UTF-8">
<title>템플릿</title>
</head>
<body link="black">
<% 
	String Page = request.getParameter("Pages");

	if(Page==null){
		Page = "NewItem";
	}
%>
<table border=1 style="border-collapse: collapse">
<tr>
	<td colspan="2"> <jsp:include page="Top.jsp"/> </td>
</tr>
<tr>
	<td id="a"> <jsp:include page="Left.jsp"/> </td>
	<td id="b"> <jsp:include page='<%=Page+".jsp"%>'/> </td>
</tr>
<tr>
	<td colspan="2"> <jsp:include page="Bottom.jsp"/> </td>
</tr>
</table>
</body>
</html>