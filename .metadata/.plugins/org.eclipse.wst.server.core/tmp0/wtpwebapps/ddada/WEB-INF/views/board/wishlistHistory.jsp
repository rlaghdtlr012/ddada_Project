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
  <title>내 관심 강좌</title>
</head>
<script>
</script>
<body>
	<br>
    <h4 class="myDD_category" style="text-align:left;">내 관심 강좌 ></h4>
    <br>
    
    <div class="card text-center" style="width: 500px;">
	  	<div class="card-body">
	  		<img src="${contextPath}/resources/Image/hh.jpg"
        			 style="width:150px; height:200px; margin-right:10px; float:left;">
		    <h5 class="card-title">SQLD 강좌 이름</h5>
		    <p class="card-text" style="font-size: 16px;">기간 : 2022.03.10 ~ 2022.04.12</p>
		    <p class="card-text" style="font-size: 16px;">강사 : ______</p>
            <p class="card-text" style="font-size: 16px;">교재 : ____</p>
                	
		    <br><br><br><br>
		   	<a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; width:220px;">수강 하기</a>
			<a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-style:solid; width:220px;">관심 내역 삭제</a>
		</div>
		</div>
		<!-- <a href="#" class="btn btn-primary" style="display:inline-block; background-color: #e2e2e2; color:black; border:1px; border-style:solid; width:220px;">수강 하기</a>
		<a href="#" class="btn btn-primary" style="display:inline; background-color: #e2e2e2; color:black; border:1px; border-style:solid; width:220px; margin:8px;">리뷰 작성</a>-->
</body>
</html>