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
  <style>
   .cls1 {text-decoration:none; color:black;}
   .cls1:hover {
	    color:  #6ca8d8;
	    text-decoration: none;
	}
   .cls2 {text-align:center; font-size:30px;}
   .table {
    width: 80%;
    }
    .table td, .table th {
    vertical-align: middle;
    }
    .rate {
	    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
	    border: 0; /* 필드셋 테두리 제거 */
	}
	.rate input[type=radio]{
	     display: none;  /* 라디오박스 감춤 */
	}
	.rate label{
	    font-size: 1.5em; /* 이모지 크기 */
	    color: transparent; /* 기존 이모지 컬러 제거 */
	    text-shadow: 0 0 0 rgb(235, 201, 5); /* 새 이모지 색상 부여 */
	}
  </style>
  <meta charset="UTF-8">
  <title>리뷰 내역</title>
</head>
<script>
	function fn_articleForm(isLogOn,articleForm,loginForm){
	  if(isLogOn != '' && isLogOn != 'false'){
	    location.href=articleForm;
	  }else{
	    alert("로그인 후 글쓰기가 가능합니다.")
	    location.href=loginForm+'?action=/board/articleForm.do';
	  }
	}
</script>
<body>
<br>
<h4 class="myDD_category" style="text-align:left;">리뷰 내역 ></h4>
<br>
<c:choose>
  <c:when test="${userReviewList == null}" >
    <b><span style="font-size:9pt;">등록된 리뷰가 없습니다.</span></b>
  </c:when>
  <c:when test="${userReviewList != null }" >
	<table class="table caption-top" width=120%>
		<thead>
			<tr style="text-align:center;">
				<th scope="col">평점</th>
		      	<th scope="col">강좌 이름</th>
		      	<th scope="col">리뷰 제목</th>
		      	<th scope="col">작성일</th>
			</tr>
		</thead>
		<c:forEach  var="review" items="${userReviewList}" varStatus="reviewNum" >
			<tr align="center">
				<td width="15%" id="star_rate">
			     <fieldset class="rate" style="margin:0px;">
				   <c:choose>
					   <c:when test="${review.RATING == 5}">
					       <input type="radio" value="5" id="rate1" style="margin-left:5px;" disabled />
					       <label for="rate1" style="margin-left:6px; margin-top:12px;">★★★★★</label>
					   </c:when>
					   <c:when test="${review.RATING == 4}">
						   <input type="radio" value="4" id="rate2" disabled />
						   <label for="rate2" style="margin-left:6px; margin-top:12px;">★★★★☆</label>
					   </c:when>
					   <c:when test="${review.RATING == 3}">
						   <input type="radio" value="3" id="rate3" style="margin-left:5px;" disabled />
						   <label for="rate3" style="margin-left:6px; margin-top:12px;">★★★☆☆</label>
					   </c:when>
					   <c:when test="${review.RATING == 2}">
						   <input type="radio" value="2" id="rate4" style="margin-left:5px;" disabled />
						   <label for="rate4" style="margin-left:6px; margin-top:12px;">★★☆☆☆</label>
					   </c:when>
					   <c:when test="${review.RATING == 1}">
						   <input type="radio" value="1" id="rate5" style="margin-left:5px;" disabled />
						   <label for="rate5" style="margin-left:6px; margin-top:12px;">★☆☆☆☆</label>
					   </c:when>
				   </c:choose>
				  </fieldset>
			     </td>
				<td width="15%">${review.LEC_NAME}</td>
				<td width="25%">
				     <a class='cls1' href="${contextPath}/board/viewReview.do?reviewNO=${review.REVIEW_NO}">${review.REVIEW_TITLE}</a>
				</td>
				<td  width="10%">${review.REVIEW_DATE}</td> 
			</tr>
	    </c:forEach>
	</table>
</c:when>
</c:choose>
</body>
</html>