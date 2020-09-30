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
	try{
		// 선택한 상품 select를 String타입의 sel에 저장합니다.
		String sel = request.getParameter("select");
		
		// 세션 영역에 sel을 "select"로 저장합니다.
		session.setAttribute("select", sel);
		
		// 선택한 상품의 개수 num을 int타입의 n에 저장합니다.
		int n = Integer.parseInt(request.getParameter("num"));	// getParameter는 String 타입으로 넘어오기 때문에 형 변환 해줍니다.
		
		// 세션 영역에 n을 "num"로 저장합니다.
		session.setAttribute("num", n);
	
		
		// "productList"에 저장된 arraylist product의 값을 arraylist pro로 불러옵니다.
		ArrayList<String> pro = (ArrayList<String>)application.getAttribute("productList");
		
		// "numProducts"에 저장된 arraylist numProduct의 값을 arraylist numPro로 불러옵니다.
		ArrayList<Integer> numPro = (ArrayList<Integer>)session.getAttribute("numProducts");
	
		
		// arraylist pro에 선택한 상품(select)이 저장된 index번호를 int타입 index에 저장합니다.
		int index = pro.indexOf(session.getAttribute("select"));
	
		//  arraylist numPro를 '선택한 상품이 arraylist pro에 저장된 index'와 같은 index의 값을 수정합니다.
		// '기존에 있던 값 + 새로 추가한 값'으로.
		numPro.set(index , numPro.get(index)+ n );
		
	}catch(Exception e){
		e.printStackTrace();
	}
 %>
<script> 
	alert('<%= session.getAttribute("select") %>이(가) <%= session.getAttribute("num") %>개 추가 되었습니다.');
	history.go(-1);
</script>

</body>
</html>