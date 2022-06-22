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
 <style>
   .no-underline{
      text-decoration:none;
   }
 </style>
  <meta charset="UTF-8">
  <title>사이드 메뉴</title>
  <script>
  function counterProgramming1(){
		var dday = new Date("2022.05.23").getTime(); //디데이
		setInterval(function(){
			var now = new Date(); //현재 날짜 가져오기
			var distance = dday - now;
			var d = Math.floor(distance / (1000 * 60 * 60 * 24));
			$('#ddayProgramming1').text("D-"+d)
		});
	}
	counterProgramming1();
  </script>
</head>
<body>
	<div class="col-3" style="margin-left: 10px; max-width: 250px;">
        
        <div class="user" style="margin-left: 15px;">
          <a href="${contextPath}/member/listMembers.do" style="color: #6ca8d8; font-size:10pt; text-decoration:underline;
                        font-weight:lighter; line-height: 10mm; text-align: left;">회원정보 관리창으로 이동
          </a>
          <c:choose>
          <c:when test="${isLogOn == true  && member!= null}">
            <p style="color: rgb(0, 0, 0); line-height: 8mm; font-size:15pt; text-align: left; font-weight: bold;">${member.name}님,<br>안녕하세요!</p>
          </c:when>
          <c:otherwise>
	        <a href="${contextPath}/member/loginForm.do"><h3>로그인</h3></a>
	      </c:otherwise>
	   </c:choose>     
          <div style="color: rgb(255, 40, 40); font-size:7pt; text-align: left;">
            <h6>정보처리기사<span class="badge badge-light" id ="ddayProgramming1" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span></h6>
            </div>
        </div>

        <hr>

        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
            <a class="nav-link" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-haspopup="true" aria-selected="false">Ddada 강좌</a>
            <%-- <div class="dropdown-menu">
              <a class="dropdown-item" href="${contextPath}/member/listMembers.do">ㅁㄴㅇㅁㄴㅇ</a>
              <a class="dropdown-item" href="#v-pills-dropdown">데이터 분석 전문가</a>
              <a class="dropdown-item" href="#v-pills-dropdown">정보 처리 기사</a>
            </div> --%>
          
          
          	<a class="nav-link dropdown-toggle" id="v-pills-license-tab" data-toggle="pill" href="#v-pills-license" role="tab" aria-controls="v-pills-license" aria-selected="false">Ddada 자격증</a>
          <li class="nav-item dropdown" data-toggle="pill" aria-selected="true" aria-expanded="true">
          	 <div class="dropdown-menu">
              <a class="dropdown-item" href="${contextPath}/member/listMembers.do">ㅁㄴㅇㅁㄴㅇ</a>
              <a class="dropdown-item" href="#v-pills-dropdown">데이터 분석 전문가</a>
              <a class="dropdown-item" href="#v-pills-dropdown">정보 처리 기사</a>
             </div>
          </li>
          <a class="nav-link" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="false">나의 Ddada</a>
          <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Ddada 도서</a>
          <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Ddada 커뮤니티</a>
        </div>

      </div>
	<!--  
	<h1>사이드 메뉴</h1>
	 <!-- 
	<h1>
		<a href="#"  class="no-underline">회원관리</a><br>
	  <a href="#"  class="no-underline">게시판관리</a><br>
	  
   </h1> 
	
	<h1>
		<a href="${contextPath}/member/listMembers.do"  class="no-underline">회원관리</a><br>
		<a href="${contextPath}/member/listMembers.do"  class="no-underline">회원관리</a><br>
		<a href="${contextPath}/member/listMembers.do"  class="no-underline">회원관리</a><br>
		<a href="${contextPath}/member/listMembers.do"  class="no-underline">회원관리</a><br>
		<a href="${contextPath}/board/listArticles.do"  class="no-underline">게시판관리</a><br>
		
	</h1>
	 -->
</body>
</html>