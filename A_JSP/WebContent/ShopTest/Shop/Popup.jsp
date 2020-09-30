<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 담기 확인</title>
</head>
<body>
<%	
		String sel = request.getParameter("select");
		session.setAttribute("select", sel);
		
		ArrayList arr = (ArrayList)session.getAttribute("lists");
		
		arr.add(sel);
		
		session.setAttribute("lists", arr);

 %>
<script> 
	alert('<%= session.getAttribute("select") %>이(가) 추가 되었습니다.');
	history.go(-1);
</script>

</body>
</html>