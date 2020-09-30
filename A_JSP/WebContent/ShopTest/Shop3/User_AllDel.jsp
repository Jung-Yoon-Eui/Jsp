<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록 삭제</title>
</head>
<body>
<form action="Sal.jsp" name="cA">
<%
	try{
		//"numProducts"에 저장된 arraylist numProduct의 값을 arraylist numPro로 불러옵니다.
		ArrayList<Integer> numPro = (ArrayList<Integer>)session.getAttribute("numProducts");

		// arraylist numPro에 저장된 값을 모두 지웁니다.
		numPro.clear();
		
		// 세션 영역에 arraylist numProduct를 "numProducts"에 저장합니다.
		session.setAttribute("numProducts", numPro);
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<script type="text/javascript">
	alert('삭제 되었습니다.');
	cA.submit();
</script>
</form>
</body>
</html>