<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 담기 page</title>
<script type="text/javascript">

	// + 버튼을 누르면 텍스트 박스(num)의 값이 1씩 증가합니다. 
	function plus() {
		var click = document.getElementById("num");
		var num = click.value*1;	// num을 int 타입으로 지정
		var numPlus = num+1;
		click.value = numPlus;
	}
	
	// - 버튼을 누르면 텍스트 박스(num)의 값이 1씩 감소합니다. 
	function minus() {
		var click = document.getElementById("num");
		var num = click.value*1;	// num을 int 타입으로 지정
		var numMinus = num-1;
		click.value = numMinus;
	}
</script>
</head>
<body>

<%= session.getAttribute("userName") %> 님이 로그인 중입니다.

<input type="button" value="로그아웃" onclick="location.href='Logout.jsp'"><hr/>

<form action="Popup.jsp" method=post>

			<select name="select">
<%
	try{	
			// 로그인시 입력한 id를 받아 String타입의 name에 저장합니다.
			String name = request.getParameter("userName");
			
			// 세션 영역에 name을 "userName"으로 저장합니다.
			session.setAttribute("userName", name);
			
			// "productList"에 저장된 arraylist product의 값을 arraylist pro로 불러옵니다.
			ArrayList<String> pro = (ArrayList<String>)application.getAttribute("productList");
			
			// arraylist pro의 크기를 int타입의 size에 저장합니다.
			int size = pro.size();
	
			
			// 선택한 상품의 갯수를 담을 Integer타입 arraylist numProduct를 생성합니다.
			ArrayList<Integer> numProduct = new ArrayList<Integer>(Collections.nCopies(size, 0));
			
			// 세션 영역에 arraylist numProduct를 "numProducts"에 저장합니다.
			session.setAttribute("numProducts", numProduct);

			
			// 등록된 상품을 선택할 수 있는 드롭다운 박스를 출력합니다.
			for(int i=0; i<pro.size(); i++){
%>
				<option><%= pro.get(i)%></option>
<%
			}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
			</select>

			<input type="button" value="-" onclick="minus()"/>
			<input type="text" style=width:25px; id="num" name="num" value="1"/>
			<input type="button" value="+" onclick="plus()"/>
	
		<input type="submit" value="추가"><br>
		
	<a href="Sal.jsp">계산하기</a>
</form>
</body>
</html>