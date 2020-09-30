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
<form action="Admin3.jsp" name="c">
<%
	try{
		ArrayList<String> pro = (ArrayList<String>)application.getAttribute("productList");
		
		String[] removeChk = request.getParameterValues("chk");
		
				for(int i=pro.size()-1; i==0; i--){
					
					pro.remove(pro.indexOf(removeChk[i]));
					
				}
		application.setAttribute("productList", pro);
			
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<script type="text/javascript">
	alert('삭제 되었습니다.');
	c.submit();
</script>
</form>
</body>
</html>