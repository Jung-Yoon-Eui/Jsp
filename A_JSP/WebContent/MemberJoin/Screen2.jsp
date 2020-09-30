<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="BeansTask" class="MemberJoin_Beans.Beans_ver2" scope="page"/>
<jsp:setProperty name="BeansTask" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
	<table border="1" style="border-collapse: collapse">
		<tr>
			<th colspan="2" bgcolor="skyblue">회원 기본 정보</th>
		</tr>
		<tr>
			<th>아이디</th>
			<td><jsp:getProperty name="BeansTask" property="idid"/></td>
		</tr>
		<tr>
			<th>비밀 번호</th>
			<td><jsp:getProperty name="BeansTask" property="pw"/></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><jsp:getProperty name="BeansTask" property="mail"/></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><jsp:getProperty name="BeansTask" property="name1"/></td>
		</tr>
		<tr>
			<th colspan="2" bgcolor="skyblue">개인 신상 정보</th>
		</tr>
		<tr>
			<th>주소</th>
			<td>
				<jsp:getProperty name="BeansTask" property="postcode"/>
				<jsp:getProperty name="BeansTask" property="address"/>
				<jsp:getProperty name="BeansTask" property="detailAddress"/>
				<jsp:getProperty name="BeansTask" property="extraAddress"/>
			</td>
		</tr>
		<tr>
			<th>생일</th>
			<td>
				<jsp:getProperty name="BeansTask" property="year"/> 년
				<jsp:getProperty name="BeansTask" property="month"/> 월
				<jsp:getProperty name="BeansTask" property="day"/> 일
			</td>
		</tr>
		<tr>
			<th>관심 분야</th>
			<td>
			<% 
				try{
					for(String str : BeansTask.getChk()){
						out.println(str);
					}
				}catch(Exception e){
					out.println("잘못된 요청입니다.");	
				}
			 %>	
			</td>
		</tr>
		<tr>
			<th>자기 소개</th>
			<td><jsp:getProperty name="BeansTask" property="my_intro"/></td>
		</tr>
	</table>
</body>
</html>