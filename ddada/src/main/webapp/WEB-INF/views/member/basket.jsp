<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/resources/bs_classroom.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
</head>
<body>
   
   <h3>장바구니></h3>
   <form method = "post" action = "${contextPath}/member/payment.do">
   <table class="table">
     <thead>
       <tr>
         <th scope="col">#</th>
         <th scope="col">책이름</th>
         <th scope="col">가격</th>
         <th scope="col">출판사</th>
         <th scope="col">강의</th>
         <th scope="col">사진</th>

       </tr>
     </thead>
     <tbody>
       <tr>
         <th scope="row">1</th>
         <td>${selectTake.BOOK_NAME}</td>
         <td>${selectTake.BOOK_PRICE}</td>
         <td>${selectTake.BOOK_COMPANY}</td>
         <td>${selectTake.LEC_NAME}</td>
         <td><img src ="${contextPath}/resources/Image/${selectTake.BOOK_IMAGE}"   width = "135px" height = "100px" ></td>
         
       </tr>
       
     </tbody>
   </table>
   </form>
</body>
</html>