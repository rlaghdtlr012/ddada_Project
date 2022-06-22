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
  	<title>상담 내역</title>
  	<link rel="stylesheet" href="${contextPath}/resources/bootstrap.min.css">
  	<link rel="manifest" href="/manifest-web.json">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
	<style>
	button.text-left {
		color:black;
	}
	.text-left {
		background-color:white;
	}
	.text-left:focus{
		outline: none !important;
	  	box-shadow: none !important;
	  	text-underline: none !important;
	}
	.text-left[aria-expanded=true]{
		color: #6ca8d8;
	}
	.text-left[aria-expanded=false]{
		color: black;
	}
	</style>
</head>
<body>
	<br>
    <h4 class="myDD_category" style="text-align:left;">내 문의 내역 ></h4>
    <br>

	
	<div class="accordion" id="accordionExample">
	<c:forEach var="userQA" items="${userQAList}" varStatus="userQANum" >
  	<div class="card">
	    <div class="card-header" id="heading${userQANum.index+1}">
	      <h2 class="mb-0">
	      	<button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse"
	      		    data-target="#collapse${userQANum.index+1}" aria-expanded="false" aria-controls="collapse${userQANum.index+1}">
		          [답변 완료] ${userQA.QA_REGDATE} ${userQA.QA_TITLE}
		    </button>
	      </h2>
	    </div>
    
    	<c:choose>
		<c:when test="${userQANum.index == 0}">
		    <div id="collapse${userQANum.index+1}" class="collapse" aria-labelledby="heading${userQANum.index+1}" data-parent="#accordionExample">
		      <div class="card-body">
		        ${userQA.QA_CONTENT}
		      </div>
		    </div>
	    </c:when>
	    <c:otherwise>
	    	<div id="collapse${userQANum.index+1}" class="collapse" aria-labelledby="heading${userQANum.index+1}" data-parent="#accordionExample">
		      <div class="card-body">
		        ${userQA.QA_CONTENT}
		      </div>
		    </div>
	    </c:otherwise>
	    </c:choose>
	</div>
	</c:forEach>
	</div>
	<br>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script type="text/javascript" src="${contextPath}/resources/bootstrap.js"></script> 
<script>
</script>
</body>
</html>