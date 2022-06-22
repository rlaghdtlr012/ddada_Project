<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form	method="POST" action="${contextPath }/member/adminUpdat.do">
	
		<table border="1" align="center" width="80%">
			<tr align="center">
				<th>회원 아이디</th>
				<th>회원 비밀번호</th>
				<th>회원 이름</th>
				<th>회원 폰번호</th>
				<th>회원 이메일</th>
				<th>회원 주소</th>
			</tr>
			<tr align="center">
				<td><input type="text"  name="STUDENT_ID" value="${StudentVO.STUDENT_ID}"></td>
				<td><input type="text"  name="STUDENT_PWD" value="${StudentVO.STUDENT_PWD}"></td>
				<td><input type="text"  name="STUDENT_NAME" value="${StudentVO.STUDENT_NAME}"></td>
				<td><input type="tel"  name="STUDENT_PHONE" value="${StudentVO.STUDENT_PHONE}"></td>
				<td><input type="email"  name="STUDENT_EMAIL" value="${StudentVO.STUDENT_EMAIL}"></td>
				<td><input type="text"  name="STUDENT_ADDR" value="${StudentVO.STUDENT_ADDR}"> </td>
			</tr>
		</table>
		
		<input type="submit" value="수정"/>
		
	</form>
</body>
</html>