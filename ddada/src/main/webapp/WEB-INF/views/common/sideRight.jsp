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

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>메인 사이드 바</title>
    <link rel="stylesheet" href="${contextPath}/resources/bs_classroom.css">
    <!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
       
    </script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
    <!-- <script src="bootstrap.min.js"></script> -->

    <style>
       @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');

       #sidebar-right {

         background-color: #f1f2f3;
         border : 5px solid #808080;
         padding-bottom : 50%;
         src:url('BMJUA.ttf');
         font-family : 'JUA' ; 
         }
         
     </style>
         

</head>

<body>
<!--    <div class="row" style="margin-top: 70px;"> -->
      <div class="col-3" style="margin-top: 70px; max-width: 250px; ">
        <div class="user" style="margin-left: 15px;">
         <!--  <a href="#" style="color: #6ca8d8; font-size:10pt; text-decoration:underline;
                        font-weight:lighter; line-height: 10mm; text-align: left;">가장 최근에 들었던 강의로 이동
          </a>  -->   
          <p style="color: rgb(0, 0, 0); line-height: 8mm; font-size:13pt; text-align: left; font-weight: bold;">
          
          
          
           <div class="nav-item"> <!-- style="float: right; "-->
            <c:choose>
            
             <c:when test="${isLogOn == true  && student != null}">
              <h3 style="font-size:20px;">${student.STUDENT_NAME} 님,</h3>
              <h3> 안녕하세요! </h3>
             <%--   <a href="${contextPath}/member/logout.do" style="font-size:13px;">로그아웃</a> --%>
             </c:when>
             
             <c:otherwise>
               <a href="${contextPath}/member/loginForm.do" > <h3 style="font-size:30px; text-align:center;">로그인을<br>해주세요.</h3> </a>
               
            </c:otherwise>
            
          </c:choose>
           
         </div>
         
          
         
          
          
          
<!--           
          <p style="color: rgb(255, 255, 255); font-size:7pt; text-align: left;">
            <mark style="background-color: rgb(255, 255, 255); color:#ff0000; font-size: 15px; line-height: 5mm;">
              D-15 정보 처리 기사
            </mark></p>
        </div> -->
        
        <hr>
        
       <div style = "align : center;">
         <iframe src="https://calendar.google.com/calendar/embed?height=500&wkst=1&bgcolor=%23ffffff&ctz=Asia%2FSeoul&showTitle=0&showNav=0&showPrint=0&showTabs=0&showCalendars=0&showTz=0&src=ZmM0aHYzdG80NjY4cnNuYmI5cWYzZGppZjhAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&src=NzBtM3NpYmJjOG9tZWRlNDdsdWpvZ3I3MWtAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&src=azRjdDdhNG0xNGduYm5tNnBvc2p0N3FoaWdAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&src=MWlqZTA4OGYxaHYyYnA4b2VlMmM4djZvNzBAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&src=cjkyYm9tMzY0cjZycHRuNTYxc2M1Nmczb2dAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&src=YWRkcmVzc2Jvb2sjY29udGFjdHNAZ3JvdXAudi5jYWxlbmRhci5nb29nbGUuY29t&color=%23E67C73&color=%23F6BF26&color=%233F51B5&color=%23F4511E&color=%238E24AA&color=%2333B679" style="border:solid 1px #777" width="180" height="500" frameborder="0" scrolling="no"></iframe>
         <iframe src="https://calendar.google.com/calendar/embed?height=500&wkst=2&bgcolor=%23ffffff&ctz=Asia%2FSeoul&showTitle=0&showNav=0&showPrint=0&showTabs=0&showCalendars=0&showTz=0&title=ddadaRealCalendar&mode=AGENDA&src=ZmM0aHYzdG80NjY4cnNuYmI5cWYzZGppZjhAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&src=NzBtM3NpYmJjOG9tZWRlNDdsdWpvZ3I3MWtAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&src=azRjdDdhNG0xNGduYm5tNnBvc2p0N3FoaWdAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&src=MWlqZTA4OGYxaHYyYnA4b2VlMmM4djZvNzBAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&src=cjkyYm9tMzY0cjZycHRuNTYxc2M1Nmczb2dAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&src=YWRkcmVzc2Jvb2sjY29udGFjdHNAZ3JvdXAudi5jYWxlbmRhci5nb29nbGUuY29t&color=%23E67C73&color=%23F6BF26&color=%233F51B5&color=%23F4511E&color=%238E24AA&color=%2333B679" style="border: 1px solid #808080;" width="180" height="300" frameborder="0" scrolling="no"></iframe>
      </div> 

      </div>
     </div>
</body>


</html>