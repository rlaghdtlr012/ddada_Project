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
   .cls1 {text-decoration:none;}
   .cls2 {text-align:center; font-size:30px;}
   #playLEC {height:100%; min-height:100%; overflow:hidden !important; touch-action:none;  overflow-y: hidden;}
   .progress-bar {
	    background-color: #6ca8d8;
	    margin-bottom: 0px;
	}
	.average-progress-bar {
	    background-color: rgb(255, 0, 0);
	    margin-bottom: 0px;
	}
 </style>
  <meta charset="UTF-8">
  <title>수강 중인 강좌</title>
  <link rel="stylesheet" href="${contextPath}/resources/takeClassList.css">
  <link rel="stylesheet" href="${contextPath}/resources/bs_classroom.css">
</head>
<script>
	function fn_articleForm(isLogOn,articleForm,loginForm){
	  if(isLogOn != '' && isLogOn != 'false'){
	    location.href=articleForm;
	  }/* else{
	    alert("로그인 후 글쓰기가 가능합니다.")
	    location.href=loginForm+'?action=/board/articleForm.do';
	  } */
	}
</script>
<body>
	<br>
    <h3 class="myDD_category" style="text-align:left;">수강 중인 강좌 ></h3>
    <br>
    <c:choose>
    <c:when test="${takeLectureList != null}">
    <c:forEach  var="takeLecture" items="${takeLectureList}" varStatus="takeLectureNum" >
    <div class="card text-center" style="width: 1050px; height:420px; margin-bottom:20px;">

	  	<div class="card-body">
	  		<div class="take-lecture-image" style="display:inline; float:left;">
        		<img src="${contextPath}/resources/Image/${takeLecture.LEC_IMAGE}"
        			 style="width:438px; height:288px; margin-top:20px; margin-bottom:20px; margin-right:50px;">
        		<a href="#open" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid;
		   		   width:440px; display:block;" onClick="scrollDisable(); fn_lecInfo('${takeLecture.LEC_NAME}');">수강 하기</a>
        	</div>
        	<div style="margin-top:30px; margin-left:50px; text-align : left;">
			    <h5 class="card-title" style="font-size:25px;">${takeLecture.LEC_NAME}</h5>
			    <br>
			    <p class="card-text" style="font-size: 16px;">기간 : ${takeLecture.LEC_STARTDATE} ~ ${takeLecture.LEC_ENDDATE}</p>
			    <p class="card-text" style="font-size: 16px;">강사 : ${takeLecture.INSTR_NAME}</p>
			    
			    <div style="display:block;">
			    	<div style="display:inline-block;">
					    <div class="progress" style="width:190px; height: 8px;">
			            	<div class="progress-bar" id="tmp" role="progressbar" style="width:${takeLecture.LEC_PROGRESS}%;" aria-valuemin="0" aria-valuemax="100"></div>
			            </div>
			            <p class="card-text" style="font-size: 13px; margin-left: 3px;">진도율 : ${takeLecture.LEC_PROGRESS}% </p>
		            </div>
		            <c:if test="${ takeLecture.LEC_PROGRESS == 100 }">
			   		   <a href="${contextPath}/board/reviewForm.do?LEC_NAME=${takeLecture.LEC_NAME}" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid;
			   		   width:100px; height:15px; display:inline; margin-left:10px; position:relative; top:-5px;">리뷰 작성</a>
		            </c:if>
	            </div>
				
 				<c:forEach  var="avg" items="${avgLecProgress}" varStatus="avgLecProgressNum" >
	    			<c:if test="${takeLecture.LEC_NUM == avg.LEC_NUM}">
						<div style="float:none; display:block;">
				            <div class="progress" style="width:190px; height: 8px;">
				            	<div class="average-progress-bar" role="progressbar" style="width: ${avg.AVG_LEC_PROGRESS}%;" aria-valuemin="0" aria-valuemax="100"></div>
				            </div>
				            <p class="card-text" style="font-size: 13px; margin-left: 3px;">수강생의 평균 진도율 : ${avg.AVG_LEC_PROGRESS}%</p>
			            </div>
		            </c:if>
	            </c:forEach>
	            
	            <p class="card-text" style="font-size: 16px;">교재 : ${takeLecture.BOOK_NAME}</p>
	            <p class="card-text" style="font-size: 16px;">성적 : ${takeLecture.LEC_SCORE}</p>
	            
	            <br>
	            
	            <p class="card-text" style="font-size:18px;">일정 알림 받기 설정</p>
	            <div class="form-check form-switch" style="margin-left:490px;">
	              <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
	              <label class="form-check-label" for="flexSwitchCheckChecked">문자로 알림 받기</label>
	            </div>
	            <div class="form-check form-switch" style="margin-left:490px;">
	              <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDisabled" checked>
	              <label class="form-check-label" for="flexSwitchCheckDisabled">카톡으로 알림 받기</label>
	            </div>
          </div>
		</div>
	</div>
	</c:forEach>
	</c:when>
	</c:choose>
	
	
	<%-- <br>
	<h5>취합을 위해, ddada DB에 있는 테이블 형식과 똑같은 이름과 컬럼으로 만들어 구현</h5>
	<h6>(현재 로그인한 수강생의 수강 중인 강좌 정보)</h6>
	<table border="1"  align="center"  width="80%">
	    <tr align="center"   bgcolor="lightblue">
	      <td><b>강좌 번호</b></td>
	      <td><b>강좌 이름</b></td>
	      <td><b>강사 번호</b></td>
	      <td><b>강사 이름</b></td>
	      <td><b>강좌 가격</b></td>
	      <td><b>강좌 기간</b></td>
	      <td><b>강좌 시작일</b></td>
	      <td><b>강좌 종료일</b></td>
	      <td><b>강좌 진도율</b></td>
	      <td><b>강좌 성적</b></td>
	      <td><b>교재 번호</b></td>
	      <td><b>교재 이름</b></td>
	      <td><b>강좌 사진 파일명</b></td>
	      <td><b>회원 아이디</b></td>
	   	</tr>
	   
		<c:forEach var="takeLecture" items="${takeLectureList}" >     
		   <tr align="center">
		      <td>${takeLecture.LEC_NUM}</td>
		      <td>${takeLecture.LEC_NAME}</td>
		      <td>${takeLecture.INSTR_NUM}</td>
		      <td>${takeLecture.INSTR_NAME}</td>
		      <td>${takeLecture.LEC_FEE}</td>
		      <td>${takeLecture.LEC_DATE}</td>
		      <td>${takeLecture.LEC_STARTDATE}</td>
		      <td>${takeLecture.LEC_ENDDATE}</td>
		      <td>${takeLecture.LEC_PROGRESS}</td>
		      <td>${takeLecture.LEC_SCORE}</td>
		      <td>${takeLecture.BOOK_NUM}</td>
		      <td>${takeLecture.BOOK_NAME}</td>
		      <td>${takeLecture.LEC_IMAGE}</td>
		      <td>${takeLecture.STUDENT_ID}</td>
		    </tr>
		</c:forEach>   
	</table> --%>
	
	<div class="white_content" id="open">
	 <div id="lecInfo">
	    <div style="margin-left:50px;">
	    	<br>
            <div id="playLEC_NAME" style="display:block; float:left;">
            	<h2 id="lecname_str" style="display:block;"></h2>
            </div>
            <br><br>
            <img src="${contextPath}/resources/Image/playLEC.PNG"
        			 style="width:1750px; height:710px; display:block; text-align:center;">
        	<br><br>
        	<div style="text-align:center;">
           	<a href="#close" onClick="scrollAble(); fn_lecInfo_remove();"
              	   style="background-color: white; color: black; text-align: center; text-decoration:none; border: solid 2px #6ca8d8; border-radius: 5px;
              	   width: 500px; height: 50px; font-size: 20px;
              	   padding-left:50px; padding-right:50px; padding-top:10px; padding-bottom:10px;">강의 종료</a>
    		</div>
        </div>
        	
       	<!-- <div style="text-align:center;">
           	<a href="#close" onClick="scrollAble(); fn_lecInfo_remove();"
              	   style="background-color: white; color: black; text-align: center; text-decoration:none; border: solid 2px #6ca8d8; border-radius: 5px;
              	   width: 500px; height: 50px; font-size: 20px;
              	   padding-left:50px; padding-right:50px; padding-top:10px; padding-bottom:10px;">강의 종료</a>
    	</div> -->
	  </div>
	</div>
<script>
	function scrollDisable(){
	    $('html, body').attr('id', 'playLEC');
	}
	function scrollAble(){
	    $('html, body').removeAttr('id', 'playLEC');
	}
/* 	function lecInfo(String name){
		console.log(name);
		document.getElementById("playLEC_NAME").append("<h4>"+name+"</h4>");
	} */
</script>
<script>
function fn_lecInfo(name){
	/* document.getElementById("playLEC_NAME").append(name+" > "); */
	document.getElementById("lecname_str").append(name+" > ");
}

function fn_lecInfo_remove(){
	/* var parent = document.getElementById("playLEC_NAME");
	var child = document.getElementById("lecname_str");
	parent.removeChild(child); */
	$("#lecname_str").empty();
}
</script>
</body>
</html>