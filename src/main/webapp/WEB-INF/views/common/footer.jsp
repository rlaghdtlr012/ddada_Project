<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored="false"
 %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>하단 부분</title>
  <style>
    .footerP {
     font-size:20px;
     text-align:center;
    }
  </style>
</head>
<body>
  <div class = footerP>
	<h2 style = "margin : 0px auto; text-align : center;"><b> 고객센터 </b></h2>
	<p> (수강문의 및 고객상담) </p>
	<br>
	<p>평일 9:00 ~ 17:50</p>
	<p>1588-0000</p>
	<p>서울특별시 서초구 효령로 176 211호 <a href="${contextPath}/board/mapForm.do">♥지도♥</a></p>
  </div>
</body>
</html>