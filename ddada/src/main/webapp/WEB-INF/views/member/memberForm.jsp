<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 페이지</title>
<link rel="stylesheet" href="${contextPath}/resources/loginForm.css">
</head>
<body>
<%-- <form method="post"   action="${contextPath}/member/addMember.do">
<h1  class="text_center">회원 가입창</h1>
<table  align="center">
   <tr>
      <td width="200"><p align="right">아이디</td>
      <td width="400"><input type="text" name="id"></td>
   </tr>
   <tr>
      <td width="200"><p align="right">비밀번호</td>
      <td width="400"><input type="password" name="pwd"></td>
    </tr>
    <tr>
       <td width="200"><p align="right">이름</td>
       <td width="400"><p><input type="text" name="name"></td>
    </tr>
    <tr>
       <td width="200"><p align="right">전화 번호</td>
       <td width="400"><p><input type="text" name="phone"></td>
    </tr>
    <tr>
       <td width="200"><p align="right">이메일</td>
       <td width="400"><p><input type="text" name="email"></td>
    </tr>
    <tr>
       <td width="200"><p align="right">주소</td>
       <td width="400"><p><input type="text" name="address"></td>
    </tr>
    <tr>
       <td width="200"><p>&nbsp;</p></td>
       <td width="400"><input type="submit" value="가입하기"><input type="reset" value="다시입력"></td>
    </tr>
</table>
</form> --%>

<form name="frmSignIn" method="post" action="${contextPath}/member/addMember.do">
<div class="wrapper fadeInDown">
	<div id="formContent">
		<!-- Tabs Titles -->
		<br>
		
    	<!-- Icon -->
    	<div class="fadeIn first" >
      		<img src="${contextPath}/resources/Image/ddada3.png" id="icon" alt="User Icon" />
      		<h1>회원 가입</h1>
    	</div>
    	
    	<!-- Login Form -->
    	<form>
	      <br>
	      <input type="text" id="login" class="fadeIn second" name="STUDENT_ID" value="" placeholder="Ddada 아이디 입력">
	      <input type="password" id="password" class="fadeIn second" name="STUDENT_PWD" value="" placeholder="Ddada 비밀번호 입력">
	      <input type="text" id="login" class="fadeIn second" name="STUDENT_NAME" value="" placeholder="Ddada 이름 입력">
	      <input type="text" id="login" class="fadeIn second" name="STUDENT_PHONE" value="" placeholder="Ddada 전화 번호 입력">
	      <input type="text" id="login" class="fadeIn second" name="STUDENT_EMAIL" value="" placeholder="Ddada 이메일 입력">
	      <input type="text" id="login" class="fadeIn second" name="STUDENT_ADDR" value="" placeholder="Ddada 주소 입력">
	      <input type="submit" class="fadeIn third" value="Sign In">
    	</form>
    </div>
</div>
</form>
</body>
