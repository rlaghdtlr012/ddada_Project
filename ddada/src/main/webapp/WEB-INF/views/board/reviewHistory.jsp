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
  <title>리뷰 내역</title>
</head>
<script>
</script>
<body>
<br>
          	<h4 class="myDD_category" style="text-align:left;">리뷰 내역 ></h4>
          	<br>
            <table class="table caption-top">
<%-- 			  <caption>List of users</caption> --%>
			  <thead>
			    <tr style="text-align:center;">
			      <th scope="col">주문 번호</th>
			      <th scope="col">주문 날짜</th>
			      <th scope="col">주문 명</th>
			      <th scope="col">금액</th>
			    </tr>
			  </thead>
			  <tbody style="text-align:center;">
			    <tr>
			      <th scope="row">289537</th>
			      <td>20220222</td>
			      <td>타입 스크립트 입문</td>
			      <td>55000</td>
			    </tr>
			    <tr>
			      <th scope="row">483985</th>
			      <td>20220301</td>
			      <td>Vue.js 시작하기</td>
			      <td>50,000</td>
			    </tr>
			    <tr>
			      <th scope="row">075486</th>
			      <td>20220415</td>
			      <td>만들면서 배우는 리액트 : 기초</td>
			      <td>44,000</td>
			    </tr>
			  </tbody>
			</table>
</body>
</html>