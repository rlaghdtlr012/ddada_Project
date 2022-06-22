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
<title>리뷰 작성</title>
<style>
.rate {
    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    direction: rtl; /* 이모지 순서 반전 */
    border: 0; /* 필드셋 테두리 제거 */
}
.rate input[type=radio]{
     display: none;  /* 라디오박스 감춤 */
}
.rate label{
    font-size: 1.3em; /* 이모지 크기 */
    color: transparent; /* 기존 이모지 컬러 제거 */
    text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
}
.rate label:hover{
    text-shadow: 0 0 0 rgb(235, 201, 5); /* 마우스 호버 */
}
.rate label:hover ~ label{
    text-shadow: 0 0 0 rgb(235, 201, 5); /* 마우스 호버 뒤에오는 이모지들 */
}
.rate input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgb(235, 201, 5); /* 마우스 클릭 체크 */
}
</style>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
   function readURL(input) {
      if (input.files && input.files[0]) {
	      var reader = new FileReader();
	      reader.onload = function (e) {
	        $('#preview').attr('src', e.target.result);
          }
         reader.readAsDataURL(input.files[0]);
      }
  }  
  function backToList(obj){
    obj.action="${contextPath}/board/listReview.do";
    obj.submit();
  }
  
  var cnt=1;
  function fn_addFile(){
	  $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"' />");
	  cnt++;
  }  

</script>
 <title>리뷰 작성</title>
</head>
<body>
<br>
<h4 class="myDD_category" style="text-align:left;">리뷰 작성 ></h4>
<br>
  <form name="reviewForm" method="post" action="${contextPath}/board/addNewReview.do" enctype="multipart/form-data">
    <table border="0" align="left">
      <tr>
      	<td align="right"> 작성자 : </td>
		<!-- session에 정의한 member -->
		<td colspan=2  align="left"><input type="text" size="20" maxlength="100" value="${student.STUDENT_ID}" readonly/> </td>
	  </tr>

	  <tr>
      	<td align="right"> 강좌 이름 : </td>
      	<td colspan=2  align="left">
      	<input type="text" name="LEC_NAME" size="40" maxlength="300"  value="${takeLectureName}" readonly/> </td>
	  </tr>
	  
	  <!-- 별점 기능 테스트 -->
	  <tr>
      	<td align="right"> 평점 : </td>
      	<td colspan=2  align="left" style="display:flex; align-items:center; margin-top:6px;">
      	
		    <fieldset class="rate">
		        <input type="radio" name="rating" value="5" id="rate1" data-rating="5"><label for="rate1">⭐</label>
		        <input type="radio" name="rating" value="4" id="rate2" data-rating="4"><label for="rate2">⭐</label>
		        <input type="radio" name="rating" value="3" id="rate3" data-rating="3"><label for="rate3">⭐</label>
		        <input type="radio" name="rating" value="2" id="rate4" data-rating="2"><label for="rate4">⭐</label>
		        <input type="radio" name="rating" value="1" id="rate5" data-rating="1"><label for="rate5">⭐</label>
		    </fieldset>
		    <input id="click-rating" type="hidden" name="RATING" />
		</td>
      	<%-- <input type="text" name="LEC_NAME" size="40" maxlength="300"  value="${takeLectureName}" readonly/></td> --%>
	  </tr>
	  
	  <tr>
		<td align="right">리뷰 제목 : </td>
		<td colspan="2"><input type="text" size="66"  maxlength="500" name="REVIEW_TITLE" /></td>
	  </tr>
	  
	  <tr>
		<td align="right" valign="top"><br>리뷰 내용 : </td>
		<td colspan=2><textarea name="REVIEW_CONTENT" rows="10" cols="65" maxlength="4000"></textarea> </td>
      </tr>
      
<!--  <tr>
		<td align="right">이미지 파일 첨부 :  </td>
		<td><input type="file" name="imageFileName"  onchange="readURL(this);" /></td>
		<td><img id="preview" src="#"   width=200 height=200/></td>
	  </tr>
	  
	  <tr>
		 여러 파일을 첨부하고 싶을 때 ..
		<td align="right">여러 이미지 파일 첨부 :  </td>
		<td align="left"> <input type="button" value="파일 추가" onClick="fn_addFile()"/></td>
	  </tr>
	  
	  <tr>
	  	<td></td>
	  </tr>
	  
	  <tr>
	      <td colspan="4"><div id="d_file"></div></td>
	  </tr> -->
	  
	  <tr>
	    <td align="right"> </td>
	    <td colspan="2">
	      <input type="submit" style="background-color: #cde9ff;" value="리뷰 쓰기" />
	      <input type=button style="background-color: #cde9ff;" value="목록 보기"onClick="backToList(this.form)" />
	    </td>
      </tr>
      
    </table>
  </form>
  <script>
  $("input[type=radio]").on('click', function() {
	  	console.log("왜 안돼");
	  	
		var rating = $(this).val();
		console.log(rating);
		
		var Myelement = document.forms['reviewForm']['RATING'];
		Myelement.setAttribute('value', rating);

		console.log(Myelement.value);
	});
</script>
</body>
</html>
