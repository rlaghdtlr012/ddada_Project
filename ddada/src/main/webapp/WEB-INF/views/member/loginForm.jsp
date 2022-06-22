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
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>로그인 페이지</title>
	
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<%-- <link rel="stylesheet" href="${contextPath}/resources/bs_classroom.css"> --%>
	<link rel="stylesheet" href="${contextPath}/resources/loginForm.css">

	<!-- jQuery 관련 > 자바스크립트 관련 순으로 작성 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
</head>
<body>
<%-- <form name="frmLogin" method="post"  action="${contextPath}/member/loginTest.do">
	   <table border="1"  width="80%" align="center" >
	      <tr align="center">
	         <td>아이디</td>
	         <td>비밀번호</td>
	      </tr>
	      <tr align="center">
	         <td>
		    <input type="text" name="id" value="" size="20">
		 </td>
	         <td>
		    <input type="password" name="pwd" value="" size="20">
		 </td>
	      </tr>
	      <tr align="center">
	         <td colspan="2">
	            <input type="submit" value="로그인" > 
	            <input type="reset"  value="다시입력" > 
	         </td>
	      </tr>
	   </table>
</form> --%>

<form name="frmLogin" method="post"  action="${contextPath}/member/loginTest.do">
<div class="wrapper fadeInDown">
	<div id="formContent">
		<!-- Tabs Titles -->
		<br>
		
    	<!-- Icon -->
    	<div class="fadeIn first" >
      		<img src="${contextPath}/resources/Image/ddada3.png" id="icon" alt="User Icon" />
    	</div>
    	
    	<!-- Login Form -->
    	<form>
	      <br>
	      <input type="text" id="login" class="fadeIn second" name="STUDENT_ID" value="" placeholder="Ddada 아이디 입력">
	      <input type="password" id="password" class="fadeIn third" name="STUDENT_PWD" value="" placeholder="Ddada 비밀번호 입력">
	      <input type="submit" class="fadeIn fourth" value="Log In">
	
	
	      <input type = "checkbox" id="autoLogin" class="fadeIn fifth" name="autoLogin" value="autoLogin" >
	      자동 로그인
    	</form>
    	
    	<!-- Remind Passowrd -->
    	<div id="formFooter">
      		<a class="underlineHover" href="#"> Forgot Password? </a>
    	</div>
    </div>
</div>
</form>

<c:choose>
	<c:when test="${result=='loginFailed'}">
	  <script>
	    window.onload=function() {
	      alert("아이디나 비밀번호가 틀립니다.다시 로그인 하세요!");
	    }
	  </script>
	</c:when>
</c:choose>  
</body>
</html>
