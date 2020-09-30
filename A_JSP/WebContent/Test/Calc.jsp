<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿을 사용한 계산기 구현</title>
</head>
<body>
<h2>계산기</h2><hr/>
<!-- 계산 버튼 클릭시 서블릿 호출 -->
<form name=form1 action=../CalcServlet method=post>
	
	<input type="text" name="num1">
	
	<select name="operator">
		<option selected>+</option>
		<option>-</option>
		<option>*</option>
		<option>/</option>
	</select>
	
	<input type="text" name="num2">

	<input type="submit" value="계산" name="b1">
	<input type="reset" value="다시입력" name="b2">
</form>
</body>
</html>