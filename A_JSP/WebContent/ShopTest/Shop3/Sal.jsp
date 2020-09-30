<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
span{color: perple}
</style>
<meta charset="UTF-8">
<title>계산</title>
</head>
<body>
<h2><%= session.getAttribute("userName") %>님의 장바구니</h2><hr>
<%
	//"productList"에 저장된 arraylist product의 값을 arraylist pro로 불러옵니다.
	ArrayList<String> pro = (ArrayList<String>)application.getAttribute("productList");

	//"numProducts"에 저장된 arraylist numProduct의 값을 arraylist numPro로 불러옵니다.
	ArrayList<Integer> numPro = (ArrayList<Integer>)session.getAttribute("numProducts");
	
	try{
	
		for(int i=0; i<pro.size(); i++){
			
			if(numPro.get(i) != 0){	// numPro의 index값이 0이 아닌 = 상품을 1개 이상 추가한 상품과 상품의 개수를 출력합니다.
%>
				<%=pro.get(i)%> : <%=numPro.get(i)%>개 <br>
<%			
			}
		}
	}catch(Exception e){
		e.printStackTrace();
	}

%>
<hr>
	<input type="button" value="전체 삭제" onclick="location.href='User_AllDel.jsp'">
<hr>
<input type="button" value="로그아웃" onclick="location.href='Logout.jsp'">
</body>
</html>