<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<script type="text/javascript">

function login() {
	var f = document.logins;
	var userName = logins.userName.value;
	
	// 로그인 name 확인. 
	
	//admin 일 때, 관리자 모드 접속
	if(userName == "admin"){
		f.action = "Admin.jsp";
		f.submit();
	//admin이 아닐 때, 사용자 모드 접속
	}else{
		f.action = "Select.jsp";
		f.submit();
	}
}
</script>
</head>
<body>
<h2>로그인 하세요.</h2>

<form name="logins" method="post" >
	<input type="text" name="userName">
	<input type="button" value="로그인" onclick="login()">
</form>
</body>
</html>
