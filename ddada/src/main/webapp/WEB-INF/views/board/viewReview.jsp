<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%> 

<head>
   <meta charset="UTF-8">
   <title>리뷰 조회</title>
   <style>
     #tr_file_upload {
       display:none;
     }
     #tr_btn_modify {
       display:none;
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
	
	.modRate {
    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    direction: rtl; /* 이모지 순서 반전 */
    border: 0; /* 필드셋 테두리 제거 */
	}
	.modRate input[type=radio]{
	     display: none;  /* 라디오박스 감춤 */
	}
	.modRate label{
	    font-size: 1.3em; /* 이모지 크기 */
	    color: transparent; /* 기존 이모지 컬러 제거 */
	    text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
	}
	.modRate label:hover{
	    text-shadow: 0 0 0 rgb(235, 201, 5); /* 마우스 호버 */
	}
	.modRate label:hover ~ label{
	    text-shadow: 0 0 0 rgb(235, 201, 5); /* 마우스 호버 뒤에오는 이모지들 */
	}
	.modRate input[type=radio]:checked ~ label{
	    text-shadow: 0 0 0 rgb(235, 201, 5); /* 마우스 클릭 체크 */
	}
   </style>
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script> 
   <script type="text/javascript" >
     function backToList(obj){
	    obj.action="${contextPath}/board/listReview.do";
	    obj.submit();
     }
 
	 function fn_enable(obj){
		 document.getElementById("i_title").disabled=false;
		 document.getElementById("i_content").disabled=false;
		 document.getElementById("tr_btn_modify").style.display="block";
		 document.getElementById("star_rate").style.display="none";
		 document.getElementById("modifyRate").style.display="block";
/* 		 document.getElementById("tr_file_upload").style.display="block"; */
		 document.getElementById("tr_btn").style.display="none";
	 }
	 
	 function fn_modify_article(obj){
		 obj.action="${contextPath}/board/modReview.do";
		 obj.submit();
	 }
	 
	 function fn_remove_article(url, REVIEW_NO)
	 {
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var REVIEW_NOInput = document.createElement("input");
	     REVIEW_NOInput.setAttribute("type","hidden");
	     REVIEW_NOInput.setAttribute("name","reviewNO"); // controller의 requestParam의 매개변수 이름과 같으니까 해결됨,,,
	     REVIEW_NOInput.setAttribute("value", REVIEW_NO);
		 
	     form.appendChild(REVIEW_NOInput);
	     document.body.appendChild(form);
	     form.submit();
	 
	 }
	 
	 function fn_reply_form(url, parentNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var parentNOInput = document.createElement("input");
	     parentNOInput.setAttribute("type","hidden");
	     parentNOInput.setAttribute("name","parentNO");
	     parentNOInput.setAttribute("value", parentNO);
		 
	     form.appendChild(parentNOInput);
	     document.body.appendChild(form);
		 form.submit();
	 }
	 
	 function readURL(input) {
	     if (input.files && input.files[0]) {
	         var reader = new FileReader();
	         reader.onload = function (e) {
	             $('#preview').attr('src', e.target.result);
	         }
	         reader.readAsDataURL(input.files[0]);
	     }
	 }  
 </script>
</head>
<body>
	<br>
    <h4 class="myDD_category" style="text-align:left;">리뷰 조회 > </h4>
    <br>
  <form name="frmReview" method="post" action="${contextPath}" enctype="multipart/form-data">
  <input type="hidden" name="REVIEW_NO" value="${review.REVIEW_NO}"  />
  <table  border=0  align="center">
  <tr>
   <td width="150" align="center" bgcolor="#cde9ff">
      작성자 아이디
   </td>
   <td style="text-align:left;">
    <input type=text value="${student.STUDENT_ID}" name="STUDENT_ID" style="margin-left:5px;" disabled />
   </td>
  </tr>
  
  <tr>
   <td width="150" align="center" bgcolor="#cde9ff">
      강좌 이름
   </td>
   <td style="text-align:left;">
    <input type=text value="${review.LEC_NAME}" style="margin-left:5px;" disabled />
   </td>
  </tr>
  
  <!-- 별점 테스트 -->
  <tr>
   <td width="150" align="center" bgcolor="#cde9ff">
      별점
   </td>
   <td id="star_rate" style="text-align:left; align-items:center; margin-top:4px;">
     <fieldset class="rate" style="margin:0px;">
	   <c:choose>
		   <c:when test="${review.RATING == 5}">
		       <input type="radio" value="5" id="rate1" style="margin-left:5px;" disabled />
		       <label for="rate1" style="margin-left:6px;">★★★★★</label>
		   </c:when>
		   <c:when test="${review.RATING == 4}">
			   <input type="radio" value="4" id="rate2" disabled />
			   <label for="rate2" style="margin-left:6px;">★★★★☆</label>
		   </c:when>
		   <c:when test="${review.RATING == 3}">
			   <input type="radio" value="3" id="rate3" style="margin-left:5px;" disabled />
			   <label for="rate3" style="margin-left:6px;">★★★☆☆</label>
		   </c:when>
		   <c:when test="${review.RATING == 2}">
			   <input type="radio" value="2" id="rate4" style="margin-left:5px;" disabled />
			   <label for="rate4" style="margin-left:6px;">★★☆☆☆</label>
		   </c:when>
		   <c:when test="${review.RATING == 1}">
			   <input type="radio" value="1" id="rate5" style="margin-left:5px;" disabled />
			   <label for="rate5" style="margin-left:6px;">★☆☆☆☆</label>
		   </c:when>
	   </c:choose>
	 </fieldset>
   </td>
   
   <td id="modifyRate" colspan=2  align="left" style="display:none; align-items:center; margin-top:6px;">     	
	    <fieldset class="modRate">
	        <input type="radio" value="5" id="rate1" data-rating="5"><label for="rate1">⭐</label>
	        <input type="radio" value="4" id="rate2" data-rating="4"><label for="rate2">⭐</label>
	        <input type="radio" value="3" id="rate3" data-rating="3"><label for="rate3">⭐</label>
	        <input type="radio" value="2" id="rate4" data-rating="2"><label for="rate4">⭐</label>
	        <input type="radio" value="1" id="rate5" data-rating="1"><label for="rate5">⭐</label>
	    </fieldset>
	    <input id="click-rating" type="hidden" name="RATING" />
	</td>
  </tr>
  
  <tr>
    <td width="150" align="center" bgcolor="#cde9ff">
      제목 
   </td>
   <td style="text-align:left;">
    <input type=text value="${review.REVIEW_TITLE}"  name="REVIEW_TITLE"  id="i_title" style="margin-left:5px;" disabled />
   </td>   
  </tr>
  
  <tr>
    <td width="150" align="center" bgcolor="#cde9ff">
      내용
   </td>
   <td style="text-align:left;">
    <textarea rows="20" cols="60" name="REVIEW_CONTENT" id="i_content" style="margin-left:5px;" disabled />${review.REVIEW_CONTENT}</textarea>
   </td>  
  </tr>
  
  <tr>
	   <td width="150" align="center" bgcolor="#cde9ff">
	      등록일자
	   </td>
	   <td style="text-align:left;">
	    <input type=text value="${review.REVIEW_DATE}" style="margin-left:5px;" disabled />
	   </td>   
  </tr>
  
  <tr   id="tr_btn_modify"  align="center"  >
	   <td colspan="2"   >
	       <input type=button value="수정반영하기"   onClick="fn_modify_article(frmReview)"  >
           <input type=button value="취소"  onClick="backToList(frmReview)">
	   </td>   
  </tr>
    
  <tr id="tr_btn">
   <td colspan="2" align="center">
       <c:if test="${student.STUDENT_ID == review.STUDENT_ID }">
	      <input type=button value="수정하기" onClick="fn_enable(this.form)">
	      <input type=button value="삭제하기" onClick="fn_remove_article('${contextPath}/board/removeReview.do', ${review.REVIEW_NO})">
	      <%-- <input type=button value="삭제하기" onClick="fn_remove_article('${contextPath}/board/removeReview.do?reviewNo=${review.REVIEW_NO}', ${review.REVIEW_NO})"> --%>
	    </c:if>
	    <input type=button value="리스트로 돌아가기"  onClick="backToList(this.form)">
	    <%-- <input type=button value="답글쓰기"  onClick="fn_reply_form('${contextPath}/board/replyForm.do', ${article.articleNO})"> --%>
   </td>
  </tr>
 </table>
 </form>
 <script>
  $("input[type=radio]").on('click', function() {
	  	console.log("왜 안돼");
	  	
		var rating = $(this).val();
		console.log(rating);
		
		var Myelement = document.forms['frmReview']['RATING'];
		Myelement.setAttribute('value', rating);

		console.log(Myelement.value);
	});
</script>
</body>
</html>