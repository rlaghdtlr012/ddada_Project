<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page isErrorPage = "true" %>  --%>

<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<title> 500 에러 페이지 </title>
</head>

<body>

<!-- 오류페이지에는 경로 설정을 절대경로로 해야 함. -->

 <img src = "${pageContext.request.contextPath}/resources/Image/오류페이지.png">
 
   <br>
   
 <a href="${pageContext.request.contextPath}/main.do">
   <image src = "${pageContext.request.contextPath}/resources/Image/오류페이지2.png">
 </a>
 
 
</body>

</html>