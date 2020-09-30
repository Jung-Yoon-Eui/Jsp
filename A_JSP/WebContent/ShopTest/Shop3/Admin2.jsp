<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 모드</title>
</head>
<body>
<%
	try{
		// Admin에서 등록한 상품을 받아옵니다.
		String p = request.getParameter("products");
		application.setAttribute("products", p);
		
		// "productList"에 저장된 arraylist product의 값을 arraylist pro로 불러옵니다.
		ArrayList<String> pro = (ArrayList<String>)application.getAttribute("productList");
		
		// arraylist pro에 등록한 상품을 추가합니다.
		pro.add(p);
		
		// arraylist pro에 추가된 값을 "productList"(arraylist product)에 저장합니다.
		application.setAttribute("productList", pro);
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<script type="text/javascript">
	
	// 추가된 상품을 팝업으로 알린 뒤 이전 페이지로 돌아갑니다.
	alert('<%=application.getAttribute("products")%>이(가) 추가 되었습니다.');
	history.go(-1);
</script>
</body>
</html>
