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
  <title>수강 내역</title>
</head>
<script>
</script>
<body>
<br>
<h4 class="myDD_category" style="text-align:left;">수강 내역 ></h4>
<br>
<table class="table caption-top">
	<thead>
		<tr style="text-align:center;">
	      	<th scope="col">강좌 번호</th>
	      	<th scope="col">강좌 이름</th>
	      	<th scope="col">강사 이름</th>
	      	<th scope="col">결제 날짜</th>
	      	<th scope="col">금액</th>
	      	<th scope="col">수강 상태</th>
		</tr>
	</thead>
	<c:forEach var="takeLecture" items="${takeLectureList}" varStatus="takeLectureNum" >
<%-- 		<c:if test="${member.id == takeLecture.ID}"> --%>
			<tbody>
				<tr style="text-align:center;">
					<th scope="row">${takeLecture.LEC_NUM}</th>
			      	<td>${takeLecture.LEC_NAME}</td>
			      	<td>${takeLecture.INSTR_NAME}</td>
			      	<td>${takeLecture.LEC_STARTDATE}</td>
			      	<td>${takeLecture.LEC_FEE}</td>
			      	<td>
					    <c:choose>
						<c:when test="${ takeLecture.LEC_PROGRESS eq 100 }">
								완강
						</c:when>
						<c:when test="${ takeLecture.LEC_PROGRESS > 0 or takeLecture.LEC_PROGRESS < 100}">
						      	수강 중
						</c:when>
						<c:otherwise>
						      	수강 전
						</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</tbody>
<%-- 		</c:if> --%>
	</c:forEach>
</table>
</body>
</html>