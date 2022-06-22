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
  <title>내 관심 자격증</title>
</head>
<script>
</script>
<body>
	<br>
    <h4 class="myDD_category" style="text-align:left;">내 관심 자격증 ></h4>
    <br>
<%--     
    <div class="card text-center" style="width: 500px;">
	  	<div class="card-body">
	  		<img src="${contextPath}/resources/Image/hh.jpg"
        			 style="width:150px; height:200px; margin-right:10px; float:left;">
		    <h5 class="card-title">빅데이터 분석 기사</h5>
		    <p class="card-text" style="font-size: 16px;">접수 기간 : 2022.03.10 ~ 2022.04.12</p>
		    <p class="card-text" style="font-size: 16px;">시험일 : ______</p>
                	
		    <br><br><br><br><br>
		    <div style="display:inline;">
			   	<a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; width:240px; display:inline-block">접수 하기</a>
				<a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-style:solid; width:240px;">관심 내역 삭제</a>
			</div>
		</div>
	</div> --%>
	
	<div class="card" style="width: 24rem; margin-bottom:20px;">
	  <div class="card-body">
	    <h5 class="card-title" style="display:inline;">빅데이터 분석 기사</h5>
	    <h6 class="card-subtitle mb-2 text-muted" style="display:inline; margin-left:5px; position:relative; top:-1px;">D-28</h6>
	    <p class="certificate_info" style="font-size: 14px; margin-top:8px;">접수 기간 : 2022.03.10 ~ 2022.04.12</p>
		<p class="certificate_info" style="font-size: 14px;">시험일 : ______</p>
		<a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; width:160px; height:25px; display:inline-block; padding:0px;">접수 하기</a>
		<a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; width:160px; height:25px; display:inline-block; padding:0px;">관심 내역 삭제</a>
	 </div>
	</div>
	
	<div class="card" style="width: 24rem;">
	  <div class="card-body">
	    <h5 class="card-title" style="display:inline;">SQLD</h5>
	    <h6 class="card-subtitle mb-2 text-muted" style="display:inline; margin-left:5px; position:relative; top:-1px;">D-28</h6>
	    <p class="certificate_info" style="font-size: 14px; margin-top:8px;">접수 기간 : 2022.03.30 ~ 2022.04.29</p>
		<p class="certificate_info" style="font-size: 14px;">시험일 : ______</p>
		<a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; width:160px; height:25px; display:inline-block; padding:0px;">접수 하기</a>
		<a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; width:160px; height:25px; display:inline-block; padding:0px;">관심 내역 삭제</a>
	 </div>
	</div>
</body>
</html>