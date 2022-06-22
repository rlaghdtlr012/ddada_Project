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
  <meta charset="UTF-8">
<title>헤더</title>
</head>
<body>
<!--class="navbar navbar-expand-lg navbar-light" : 내비게이션 바 (header) -->
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color:rgb(205, 233, 255)">
      
      <!-- class="navbar-toggler" : 창의 크기가 작아질 때, 로고 옆에 뜨는 메뉴 축약 버튼 -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- :Ddada. 로고  -->
      <a href="${contextPath}/main.do"><img src="${contextPath}/resources/images/ddada.png" width="130" height="50"/></a>
      <!-- class="collapse navbar-collapse" : header의 카테고리 -->
      <div class="collapse navbar-collapse" id="navbarTogglerDemo03" style="margin-left: 10px;">
        <!-- <li>내의 <a>태그의 class="nav-link active"를 통해 카테고리가 선택되었음을 표시 -->
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="#" data-toggle="pill">강좌 Ddada</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${contextPath}/member/certificateInfo.do" >자격증 Ddada</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" data-toggle="pill">나의 Ddada</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" data-toggle="pill">도서 Ddada</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" data-toggle="pill">커뮤니티 Ddada</a>
          </li>
        </ul>

        <!-- class="form-inline my-2 my-lg-0" : header의 검색 영역-->
        <form class="form-inline my-2 my-lg-0">
        
          <input class="form-control mr-sm-2" type="search"
                 placeholder="찾고 싶은 강의 및 키워드를 입력해주세요."
                 aria-label="Search" style="width: 340px;">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
                  style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
                  Search</button>
        </form>
         <!-- header 밑의 로그인, 로그아웃 등의 영역 -->
	    <ul class="nav nav-pills" style="float: right;">
	      <li class="nav-item">
	      	<c:choose>
	          <c:when test="${isLogOn == true  && member!= null}">
	          	<a class="nav-link" href="${contextPath}/member/logout.do">로그아웃</a>
	          </c:when>
	          <c:otherwise>
		        <a class="nav-link" href="${contextPath}/member/loginForm.do">로그인</a>
		      </c:otherwise>
		    </c:choose>
	      </li>
	      <li class="nav-item">
	      	<c:choose>
	          <c:when test="${isLogOn == true  && member!= null}">
	          	<a class="nav-link" href="${contextPath}/main.do">회원가입못해용</a>
	          </c:when>
	          <c:otherwise>
		        <a class="nav-link" href="${contextPath}/member/memberForm.do">회원가입</a>
		      </c:otherwise>
		    </c:choose>
	      </li>
	     <!--  <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
	          마이 페이지</a>
	        <div class="dropdown-menu">
	          <a class="dropdown-item" href="#" data-toggle="pill">Action</a>
	          <a class="dropdown-item" href="#" data-toggle="pill">Another action</a>
	          <a class="dropdown-item" href="#" data-toggle="pill">Something else here</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#" data-toggle="pill">Separated link</a>
	        </div>
	      </li> -->
	    </ul>
      </div>
    </nav>
   
       <!-- <a href="#"><h3>로그인</h3></a>
       <c:choose>
          <c:when test="${isLogOn == true  && member!= null}">
            <h3>환영합니다. ${member.name }님!</h3>
            <a href="${contextPath}/member/logout.do"><h3>로그아웃</h3></a>
          </c:when>
          <c:otherwise>
	        <a href="${contextPath}/member/loginForm.do"><h3>로그인</h3></a>
	      </c:otherwise>
	   </c:choose>  
	   -->
</body>
</html>