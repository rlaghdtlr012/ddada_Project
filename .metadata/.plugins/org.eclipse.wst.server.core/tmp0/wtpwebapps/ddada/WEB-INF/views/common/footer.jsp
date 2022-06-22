<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored="false"
 %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>하단 부분</title>
  <style>
    .footerP {
     font-size:20px;
     text-align:center;
    }
    
    .ulFooter {
     /* color : #ffffff; */
     font-size : 10px;
    }
    

  </style>
</head>


<body>
  <div>
<div class = "footerP">
<h4 style = "text-align : center;"> <b> 고객센터 </b> </h4>
<h6> (수강문의 및 고객상담) </h6>
<br>
<h6>평일 9:00 ~ 17:50</h6>
<h6>1588-0000</h6>
<h6>서울특별시 서초구 효령로 176 211호 <a href="${contextPath}/board/mapForm.do">♥지도♥</a></h6>
</div>


<hr>

  
<div class="ulFooterCollapse" id="ulFooterBar" style="margin-left: 10px; text-align : center">

        <ul class="ulFooter" style = "list-style:none ; wordspacing : 10px ">
          <li class="ulFooter-item" style="display:inline;">
            <a class="ulFooter-link" href="#" data-toggle="pill" style="color:#ffffff; font-size:15px"> &nbsp; 회사소개 &nbsp;</a>
          </li> 
          <li class="ulFooter-item" style="display:inline;">
            <a class="ulFooter-link" href="#" data-toggle="pill" style="color:#ffffff; font-size:15px""> &nbsp; 인재채용 &nbsp; </a>
          </li>
          <li class="ulFooter-item" style="display:inline;">
            <a class="ulFooter-link" href="#" data-toggle="pill" style="color:#ffffff; font-size:15px""> &nbsp; 제휴제안 &nbsp; </a>
          </li>
          <li class="ulFooter-item" style="display:inline;">
            <a class="ulFooter-link" href="#" data-toggle="pill" style="color:#ffffff; font-size:15px""> &nbsp; 이용약관 &nbsp; </a>
          </li>
          <li class="ulFooter-item" style="display:inline;">
            <a class="ulFooter-link" href="#" data-toggle="pill" style="color:#ffffff; font-size:15px""> &nbsp; 개인정보처리방침 &nbsp; </a>
          </li>
          <li class="ulFooter-item" style="clear:both;">
            <a class="ulFooter-link" data-toggle="pill" style="color:#ffffff;">@COPYRIGHT 2022. 초코짱. ALL RIGHT RESERVED</a>
          </li>
        </ul>
  </div>

 </div>
 

 

</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>하단 부분</title>
</head>
<body>
<div style="line-height:8px;">
	<h2> <b> 고객센터 </b> </h2>
	<p> (수강문의 및 고객상담) </p>
	<br>
	<p>평일 9:00 ~ 17:50</p>
	<p>1588-0000</p>
	<p>서울특별시 서초구 효령로 176 211호 <a href="${contextPath}/board/mapForm.do">♥지도♥</a></p>
</div>
</body>
</html> --%>