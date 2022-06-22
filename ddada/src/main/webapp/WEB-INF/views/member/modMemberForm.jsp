<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정창</title>
<link rel="stylesheet" href="${contextPath}/resources/modMemberForm.css">
</head>
<body>
<form name="frmModProfile" method="post" action="${contextPath}/member/modMember.do" enctype="multipart/form-data">
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
				<h3 class="text_center"><b>${student.STUDENT_NAME}</b> 님의 회원 정보 수정창</h3>
				<input type="hidden" name="STUDENT_ID" value="${student.STUDENT_ID }" />
				<br>
				
				<p class="category-profile">비밀번호
		   		<input type="password" name="STUDENT_PWD" value="${student.STUDENT_PWD }" /></p>
			    <p class="category-profile">전화번호
			    <input type="text" name="STUDENT_PHONE" value="${student.STUDENT_PHONE }" /></p>
			    <p class="category-profile">이메일
			    <input type="text" name="STUDENT_EMAIL" value="${student.STUDENT_EMAIL }" /></p>
			    <p class="category-profile">주소
			    <input type="text" name="STUDENT_ADDR" value="${student.STUDENT_ADDR }" /></p>
			    
			    <input type="submit" value="수정 하기">
			</form>
		</div>
</div>
</form>

<%-- 	<form method="post"   action="${contextPath}/member/modMember.do" enctype="multipart/form-data">
	<h1  class="text_center">${student.STUDENT_NAME} 님의 회원 정보 수정창</h1>
	<table align="center">
 	   <tr>
	      <!-- <td width="200"><p align="right">아이디</td> -->
	      <td width="400"><input type="hidden" name="STUDENT_ID" value="${student.STUDENT_ID }" /></td>
	   </tr>
	   <tr>
	      <td width="200"><p align="right">비밀번호</td>
	      <td width="400"><input type="password" name="STUDENT_PWD" value="${student.STUDENT_PWD }" /></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">휴대전화</td>
	       <td width="400"><p><input type="text" name="STUDENT_PHONE" value="${student.STUDENT_PHONE }" /></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">이메일 주소</td>
	       <td width="400"><p><input type="text" name="STUDENT_EMAIL" value="${student.STUDENT_EMAIL }" /></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">주소</td>
	       <td width="400"><p><input type="text" name="STUDENT_ADDR" value="${student.STUDENT_ADDR }" /></td>
	    </tr>
 	    <tr>
	       <td width="200"><p>&nbsp;</p></td>
	       <td width="400">
		       <input type="submit" value="수정하기">
		       <input type="reset" value="다시입력">
	       </td>
	    </tr>
	</table>
	</form> --%>
	<script>
	// 사이드바를 통해 주소로 이동한 후에는,
	// 주소 뒤에 데이터를 넘겨 이동하는 것이 대부분이기 때문에
	// 사이드바에 현재 카테고리 위치를 계속해서 표시하기 위한 작업을 해준다.
	$(function ()
	{
	    var url = "/myapp/member/modProfile.do";
	    
	    console.log(url); // /myapp/board/takeClassList.do
	    
	    var urlRegExp = new RegExp(url.replace(/\/$/, '') + "$");  
	    $('.child-category').each(function ()
	    {
	    	if (urlRegExp.test(this.href.replace(/\/$/, '')))
	    	{
	    		$(this).parent().css('color', 'black');
	        	$(this).css('color', 'black');
	        }
	     });
	});
	</script>
</body>
</html>