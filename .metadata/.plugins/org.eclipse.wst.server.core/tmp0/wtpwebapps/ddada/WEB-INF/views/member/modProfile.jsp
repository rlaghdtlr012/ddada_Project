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
  <title>내 설정</title>
</head>
<script>
</script>
<body>
    <br>
    <h4 class="myDD_category" style="text-align:left;">프로필 설정 ></h4>
    <br>
    <div class="card text-center" style="width: 600px;">
	  	<div class="card-body" style="margin-top:20px; margin-left:20px;">
	  	  <c:choose>
	        <c:when test="${ isLogOn == true && studentProfile !=null }">
			    <h5 class="card-title">${studentProfile.STUDENT_NAME} 님</h5>
			    <br>
			    <p class="card-text" style="font-size: 16px;"> 아이디 : ${studentProfile.STUDENT_ID}</p>
			    <br>
			    <p class="card-text" style="font-size: 16px;">비밀번호 : ********
<!-- 			    	<a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
								position:relative; right: 200px; width:50px; height: 30px; font-size:14px;display:inline; float:right;">수정</a> -->
				</p>
	            <br>
	            <p class="card-text" style="font-size: 16px;">휴대전화 : ${studentProfile.STUDENT_PHONE}
<!-- 	            	<a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
								position:relative; right: 200px; width:50px; height: 30px; font-size:14px;display:inline; float:right;">수정</a> -->
				</p>
	            <br>
	            <p class="card-text" style="font-size: 16px;">이메일 주소 : ${studentProfile.STUDENT_EMAIL}
<!-- 	            	<a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
								position:relative; right: 200px; width:50px; height: 30px; font-size:14px;display:inline; float:right;">수정</a> -->
				</p>
	            <br>
	            <p class="card-text" style="font-size: 16px;">주소 : ${studentProfile.STUDENT_ADDR}
<!-- 	                <a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
								position:relative; right: 200px; width:50px; height: 30px; font-size:14px;display:inline; float:right;">수정</a> -->
				</p>
			    <br>
		    </c:when>
		  </c:choose>
		</div>
		<div style="display:inline-block; margin-bottom:10px; margin-right:30px;">
			<a href="${contextPath}/member/modMemberForm.do?id=${studentProfile.STUDENT_ID}" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
						position:relative; right: -170px; width:130px;">회원 정보 수정</a>
			<a href="${contextPath}/member/removeMember.do?id=${studentProfile.STUDENT_ID}" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
						position:relative; right: -180px; width:100px;">회원 탈퇴</a>
		</div>
	</div>
	
	<br>
</body>
</html>