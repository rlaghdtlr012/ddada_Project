<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>헤더</title>
</head>
<body>
<%-- 	<!-- 내비게이션 바 (header) -->
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color:rgb(205, 233, 255)">
      
	   <!-- 창의 크기가 작아질 때, 로고 옆에 뜨는 메뉴 축약 버튼 -->
	   <div class="fixed-top">
	      <div class="collapse" id="navbarToggleExternalContent">
			    <div class="bg-light p-4">
			      <h5 class="text-white h4">Collapsed content</h5>
			      <span class="text-muted">Toggleable via the navbar brand.</span>
			    </div>
		  </div>
	      
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent"
	      aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation" style="float:right; margin-top:25px;">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	   </div>
    
      <!-- :Ddada. 로고  -->
      <a class="navbar-brand" href="${contextPath}/main.do" style="font-size: 45px; font-weight: bolder; margin-top:-10px; margin-left: 10px;">
        <img src="${contextPath}/resources/Image/ddada_logo.png" style="width:150px; height:50px;"></a>
      
      <!-- class="collapse navbar-collapse" : header의 카테고리 -->
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin-left: 12px;">
        <!-- <li>내의 <a>태그의 class="nav-link active"를 통해 카테고리가 선택되었음을 표시 -->
        <div class="navbar-nav">
        	<a class="nav-link" href="${contextPath}/member/loginForm.do">강좌 Ddada</a>
	        <a class="nav-link" href="#">자격증 Ddada</a>
	        <a class="nav-link active" href="#">나의 Ddada</a>
	        <a class="nav-link" href="${contextPath}/member/loginForm.do">도서 Ddada</a>
	        <a class="nav-link" href="#">커뮤니티 Ddada</a>
	    </div>

        <!-- class="form-inline my-2 my-lg-0" : header의 검색 영역-->
        <form class="form-inline my-2 my-lg-0" style="margin-left: 180px;">
          <input class="form-control mr-sm-2" type="search"
                 placeholder="찾고 싶은 강의 및 키워드를 입력해주세요."
                 aria-label="Search" style="width: 340px;">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
                  style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
                  Search</button>
        </form>
        
     	<div class="nav-item" id="userForm" style="float: right; margin:0px;">
	      	<c:choose>
	          <c:when test="${isLogOn == true  && student != null}">
	          <div style="margin-right:50px;">
		        <h3 style="font-size:20px;">${student.STUDENT_NAME} 님</h3>
	            <a href="${contextPath}/member/logout.do" style="font-size:18px;">로그아웃</a>
	          </div>
	          </c:when>
	          <c:otherwise>
		        <a href="${contextPath}/member/loginForm.do" style="font-size:18.5px;">로그인</a>
		        <a href="${contextPath}/member/memberForm.do" style="margin-left:10px; font-size:18px;">회원가입</a>
		      </c:otherwise>
		    </c:choose>
		    
   		</div>
      </div>
    </nav>
--%>

	<nav class="navbar navbar-expand-lg navbar-light" style="background-color: rgb(205, 233, 255);">
	    <!-- :Ddada. 로고  -->
      	<a class="navbar-brand" href="${contextPath}/main.do" style="font-size: 45px; font-weight: bolder; margin-top:-10px; margin-left: 10px;">
        <img src="${contextPath}/resources/Image/ddada_logo.png" style="width:150px; height:50px;"></a>
        
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	
	    <div class="collapse navbar-collapse" id="navbarColor03">
	      <ul class="navbar-nav mr-auto">
	        <!-- <li class="nav-item active">
	          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
	        </li> -->
	        <li class="nav-item">
	          <a class="nav-link" href="${contextPath}/lecture.do">강좌 Ddada</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="${contextPath}/board/certificateInfo.do">자격증 Ddada</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="${contextPath}/board/takeClassList.do">나의 Ddada</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="${contextPath}/member/mainPractice2.do">도서 Ddada</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="${contextPath}/board/notice.do">커뮤니티 Ddada</a>
	        </li>
	      </ul>
	      
<!-- 	      <form class="form-inline">
	        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	        <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
	      </form> -->
	      
	      <!-- class="form-inline my-2 my-lg-0" : header의 검색 영역-->
          <form class="form-inline my-2 my-lg-0" style="margin-left: 180px;">
	          <input class="form-control mr-sm-2" type="search"
	                 placeholder="찾고 싶은 강의 및 키워드를 입력해주세요."
	                 aria-label="Search" style="width: 340px;">
	          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
	                  style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
	                  Search</button>
          </form>
          
          <div class="nav-item" id="userForm" style="float: right; margin:0px;">
	      	<c:choose>
	          <c:when test="${isLogOn == true  && student != null}">
	          <div style="margin-right:50px;">
		        <h3 style="font-size:20px;">${student.STUDENT_NAME} 님</h3>
	            <a href="${contextPath}/member/logout.do" style="font-size:18px;">로그아웃</a>
	          </div>
	          </c:when>
	          <c:otherwise>
		        <a href="${contextPath}/member/loginForm.do" style="font-size:18.5px;">로그인</a>
		        <a href="${contextPath}/member/memberForm.do" style="margin-left:10px; font-size:18px;">회원가입</a>
		      </c:otherwise>
		    </c:choose>
   		  </div>
	    </div>
  	</nav>


<script>
$(function ()
{
    var url = window.location.pathname;
    
    console.log(url);
    
    var urlRegExp = new RegExp(url.replace(/\/$/, '') + "$");  
    $('.nav-link').each(function ()
    {
    	if (urlRegExp.test(this.href.replace(/\/$/, '')))
    	{
        	$(this).css('color', 'black');
        }
     });
});
</script>
</body>
</html>