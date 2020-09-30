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
<form action="Admin3.jsp" name="cA">
<%
try{
	//"productList"에 저장된 arraylist product의 값을 arraylist pro로 불러옵니다.
	ArrayList<String> pro = (ArrayList<String>)application.getAttribute("productList");

	// arraylist pro에 저장된 값을 모두 지웁니다.
	pro.clear();
	
	// arraylist pro의 값을 "productList"(arraylist product)에 저장합니다.
	application.setAttribute("productList", pro);
	
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