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
  <title>결제 내역</title>
</head>
<script>
</script>
<body>
<br>
<h4 class="myDD_category" style="text-align:left;">결제 내역 ></h4>
<br>
            <table class="table caption-top">
			  <thead>
			    <tr style="text-align:center;">
			      <th scope="col">도서 번호</th>
			      <th scope="col">도서 명</th>
			      <th scope="col">도서 가격</th>
			      <th scope="col">출판사</th>
			      <th scope="col">결제 날짜</th>
			    </tr>
			  </thead>
	    	  <c:forEach var="userPurchase" items="${userPurchaseList}" varStatus="userPurchaseNum" >
	    	  <c:if test="${student.STUDENT_ID == userPurchase.STUDENT_ID}">
				  	<tbody>
					    <tr style="text-align:center;">
					      <th scope="row">${userPurchase.BOOK_NUM}</th>
					      <td>${userPurchase.BOOK_NAME}</td>
					      <td>${userPurchase.BOOK_PRICE}</td>
					      <td>${userPurchase.BOOK_COMPANY}</td>
					      <td>${userPurchase.BOOK_DATE}</td>
					    </tr>
				  	</tbody>
			  </c:if>
			  </c:forEach>
			</table>
</body>
</html>