<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function test() {
var td = document.getElementById("test");
var n = Number(td.innerHTML);
td.innerHTML = n + 1;
}
</script>
</head>
<body>

<input type="button" value="push" onclick="test()" />

<table border="1">
	<tr>
		<td id="test"></td>
	</tr>
</table>

</body>
</html>
