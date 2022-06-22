<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
  request.setCharacterEncoding("UTF-8");
%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
   integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
   crossorigin="anonymous">

<title>강좌 Ddada</title>

<style>
a.btn_b4 {
} 
/* .btn_b5 {
   background: #81BEF7;
   color: #fff;
   width: 100px;
   border-radius: 10px;
} */
#hz{
   float: left;
   
}
.select_box{
   width : 100%;
   text-align : left;
}
/* .bt_select {

   text-align : right;
} */
li {
   list-style: none;
}
hr {
    border: none;
    height: 1.5px;
    color: #6ca8d8; 
    background-color: #6ca8d8; 
}
</style>
<script>
	$(function(){
	    var responseMessage = "<c:out value="${message}" />";
	    if(responseMessage != ""){
	        alert(responseMessage)
	    }
	}) 
</script>
</head>
<body>
<div class = "select_box">
<h3 style="line-height:50px;">강좌 > </h3>
   <select id="hz" onchange="homzzang(this)">
	  <option value="all1">전체</option>
      <option value="OS1">운영체제</option>
      <option value="information1">정보기술</option>
      <option value="DataBase1">DataBase</option>
      <option value="network1">네트워크</option>   
      <option value="hacking1">해킹&정보보안</option>         
      <option value="cloud1">클라우드</option>
      <option value="etc1">기타</option>
   </select>
</div>
<script type="text/javascript">   
   $(document).ready(function(){
      $("#hz").change(function() {
         var selectVal = $('#hz option:selected').val();
         if (selectVal == "all1") {
        	 $("#OS,#information,#network,#hacking,#DataBase,#cloud,#etc").show();
         } else if(selectVal == "OS1") {
            $("#OS").show();
            $("#information,#network,#hacking,#DataBase,#cloud,#etc,#all").hide();
         } else if(selectVal == "information1") {
            $("#information").show();
            $("#OS,#network,#hacking,#DataBase,#cloud,#etc,#all").hide();
         } else if (selectVal == "DataBase1") {
            $("#DataBase").show();
            $("#information,#OS,#network,#hacking,#cloud1,#etc,#all").hide();
         } else if(selectVal == "network1") {
            $("#network").show();
            $("#information,#OS,#hacking,#DataBase,#cloud,#etc,#all").hide();
         } else if (selectVal == "hacking1") {
            $("#hacking").show();
            $("#information,#OS,#network,#DataBase,#cloud,#etc,#all").hide();         
         } else if(selectVal == "cloud1") {
            $("#cloud").show();
            $("#information,#OS,#network,#DataBase,#hacking,#etc,#all").hide();
         } else if(selectVal == "etc1") {
            $("#etc").show();
            $("#information,#OS,#network,#DataBase,#hacking,#cloud,#all").hide();
         }
      });      
   });
   
</script>
   <!-- 카테고리 -->
   
    <div class="row" style="margin-top: 70px;">
      <div class="col-9" style="margin-top: -30px;">
         <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="all" align="left">			  
               <c:forEach items="${list}" var = "list">
                     <a href="${contextPath}/Information1.do?lec_num=${list.lec_num}" ><h4> ${list.lec_name}</h4></a><br>
                     <hr style="margin-top: -20px;">
                     <img src="${contextPath}/resources/Image/${list.INSTR_IMG}"
                     height="140px" width="199px" border=0 hspace=30 alt="이미지가 없습니다" align="left" >
                     <ul>
                        <li style = "margin-bottom:5px;">분류: ${list.cert_name}<br> </li>         
                        <li style = "margin-bottom:5px;">강사명 : ${list.instr_name} 선생님<br></li>
                        <li style = "margin-bottom:5px;">강의 기간 : ${list.lec_date}일 <br></li>
                        <li style = "margin-bottom:5px;">강의 비용 : <fmt:formatNumber value="${list.lec_fee }" pattern="#,###" />원<br></li>
                        <li style = "margin-bottom:5px;">교재 : ${list.book_name} <br></li>                     
                     </ul>
                       <form id="frmOS1" method="post" action="${contextPath}/insertOSLecture.do" style="text-align:center;">
						<input type="hidden" name="lec_num" value="${list.lec_num}" /> 
						<input type="hidden" name="lec_name" value="${list.lec_name}" /> 
						<input type="hidden" name="instr_num" value="${list.instr_num}" /> 
						<input type="hidden" name="instr_name" value="${list.instr_name}" /> 
						<input type="hidden" name="lec_fee" value="${list.lec_fee}" /> 
						<input type="hidden" name="lec_date" value="${list.lec_date}" /> 
						<input type="hidden" name="book_num" value="${list.book_num}" />
						<input type="hidden" name="book_name" value="${list.book_name}" /> 
						<input type="hidden" name="INSTR_IMG" value="${list.INSTR_IMG}" />
						<input type="hidden" name="STUDENT_ID" value="${student.STUDENT_ID}" />
						<input type="IMAGE" id="but1"  src="${contextPath}/resources/Image/book.png" style="width:60px; height:75px; margin-top : -80px; "  align="right" value="Submit">
					</form>
					<a class = "btn_b4" href = "/myapp/board/takeClassList.do">
						<input type="IMAGE" id="but1"  src="${contextPath}/resources/Image/book.png" style="width:60px; height:75px; margin-top : -80px; "  align="right" value="Submit">
					</a>
					<input type="IMAGE" value="button"  onclick="window.open('${contextPath}/video.do?lec_num=${list.lec_num}','window_name',
      'width=900,height=650,location=no,status=no,scrollbars=yes');"
                  src="${contextPath}/resources/Image/play.png" style="width:60px; height:65px; margin-top : -70px; margin-right : 70px;" align="right">  
                 	 <hr>
               </c:forEach>  
            </div>
            <div  class="tab-pane" id="OS" align="left">
               <c:forEach items="${list}" var = "list">
                  <c:if test="${list.subject_name eq '운영체제' }">
                     <a href="${contextPath}/Information1.do?lec_num=${list.lec_num}" ><h4> ${list.lec_name}</h4></a><br>
                     <hr style="margin-top: -20px;">
                     <img src="${contextPath}/resources/Image/${list.INSTR_IMG}"
                     height="140px" width="199px" border=0 hspace=30 alt="이미지가 없습니다" align="left" >
                     <ul>
                        <li style = "margin-bottom:5px;">분류: ${list.cert_name}<br> </li>         
                        <li style = "margin-bottom:5px;">강사명 : ${list.instr_name} 선생님<br></li>
                        <li style = "margin-bottom:5px;">강의 기간 : ${list.lec_date}일 <br></li>
                        <li style = "margin-bottom:5px;">강의 비용 : <fmt:formatNumber value="${list.lec_fee }" pattern="#,###" />원<br></li>
                        <li style = "margin-bottom:5px;">교재 : ${list.book_name} <br></li>                     
                     </ul>
					<form id="frmOS1" method="post" action="${contextPath}/insertOSLecture.do" style="text-align:center;">
						<input type="hidden" name="lec_num" value="${list.lec_num}" /> 
						<input type="hidden" name="lec_name" value="${list.lec_name}" /> 
						<input type="hidden" name="instr_num" value="${list.instr_num}" /> 
						<input type="hidden" name="instr_name" value="${list.instr_name}" /> 
						<input type="hidden" name="lec_fee" value="${list.lec_fee}" /> 
						<input type="hidden" name="lec_date" value="${list.lec_date}" /> 
						<input type="hidden" name="book_num" value="${list.book_num}" />
						<input type="hidden" name="book_name" value="${list.book_name}" /> 
						<input type="hidden" name="INSTR_IMG" value="${list.INSTR_IMG}" />
						<input type="hidden" name="STUDENT_ID" value="${student.STUDENT_ID}" />
						<input type="IMAGE" id="but1"  src="${contextPath}/resources/Image/book.png" style="width:60px; height:75px; margin-top : -80px; "  align="right" value="Submit">
					</form>
					<input type="IMAGE" value="button"  onclick="window.open('${contextPath}/video.do?lec_num=${list.lec_num}','window_name',
      'width=900,height=650,location=no,status=no,scrollbars=yes');"
                  src="${contextPath}/resources/Image/play.png" style="width:60px; height:65px; margin-top : -70px; margin-right : 70px;" align="right">  
                 	 <hr>
                 </c:if>
               </c:forEach>  
            </div>
            <div class="tab-pane" id="information" align="left">
                  <c:forEach items="${list}" var = "list">
                     <c:if test="${list.subject_name eq '정보기술' }">
                        <a href="${contextPath}/Information1.do?lec_num=${list.lec_num}" ><h4>${list.lec_name}</h4></a><br> 
                        <hr style="margin-top: -20px;">
                     <img src="${contextPath}/resources/Image/${list.INSTR_IMG}"
                     height="140px" width="199px" border=0 hspace=30 alt="이미지가 없습니다" align="left" >
                     <ul>
                        <li style = "margin-bottom:5px;">분류: ${list.cert_name}<br> </li>         
                        <li style = "margin-bottom:5px;">강사명 : ${list.instr_name} 선생님<br></li>
                        <li style = "margin-bottom:5px;">강의 기간 : ${list.lec_date}일 <br></li>
                        <li style = "margin-bottom:5px;">강의 비용 : <fmt:formatNumber value="${list.lec_fee }" pattern="#,###" />원<br></li>
                        <li style = "margin-bottom:5px;">교재 : ${list.book_name} <br></li>                     
                     </ul>
                       <form id="frmOS1" method="post" action="${contextPath}/insertOSLecture.do" style="text-align:center;">
						<input type="hidden" name="lec_num" value="${list.lec_num}" /> 
						<input type="hidden" name="lec_name" value="${list.lec_name}" /> 
						<input type="hidden" name="instr_num" value="${list.instr_num}" /> 
						<input type="hidden" name="instr_name" value="${list.instr_name}" /> 
						<input type="hidden" name="lec_fee" value="${list.lec_fee}" /> 
						<input type="hidden" name="lec_date" value="${list.lec_date}" /> 
						<input type="hidden" name="book_num" value="${list.book_num}" />
						<input type="hidden" name="book_name" value="${list.book_name}" /> 
						<input type="hidden" name="INSTR_IMG" value="${list.INSTR_IMG}" />
						<input type="hidden" name="STUDENT_ID" value="${student.STUDENT_ID}" />
						<input type="IMAGE" id="but1"  src="${contextPath}/resources/Image/book.png" style="width:60px; height:75px; margin-top : -80px; "  align="right" value="Submit">
					</form>
					<input type="IMAGE" value="button"  onclick="window.open('${contextPath}/video.do?lec_num=${list.lec_num}','window_name',
      'width=900,height=650,location=no,status=no,scrollbars=yes');"
                  src="${contextPath}/resources/Image/play.png" style="width:60px; height:65px; margin-top : -70px; margin-right : 70px;" align="right"> 
                        <hr>
                     </c:if>
               </c:forEach>
            </div>
            <div class="tab-pane" id="DataBase" align="left">
            <c:forEach items="${list}" var = "list">
                  <c:if test="${list.subject_name eq 'DataBase' }">
                     <a href="${contextPath}/Information1.do?lec_num=${list.lec_num}" ><h4>${list.lec_name}</h4></a><br>
                     <hr style="margin-top: -20px;">
                     <img src="${contextPath}/resources/Image/${list.INSTR_IMG}"
                     height="140px" width="199px" border=0 hspace=30 alt="이미지가 없습니다" align="left" >
                     <ul>
                        <li style = "margin-bottom:5px;">분류: ${list.cert_name}<br> </li>         
                        <li style = "margin-bottom:5px;">강사명 : ${list.instr_name} 선생님<br></li>
                        <li style = "margin-bottom:5px;">강의 기간 : ${list.lec_date}일 <br></li>
                        <li style = "margin-bottom:5px;">강의 비용 : <fmt:formatNumber value="${list.lec_fee }" pattern="#,###" />원<br></li>
                        <li style = "margin-bottom:5px;">교재 : ${list.book_name} <br></li>                     
                     </ul>
                        
                       <form id="frmOS1" method="post" action="${contextPath}/insertOSLecture.do" style="text-align:center;">
						<input type="hidden" name="lec_num" value="${list.lec_num}" /> 
						<input type="hidden" name="lec_name" value="${list.lec_name}" /> 
						<input type="hidden" name="instr_num" value="${list.instr_num}" /> 
						<input type="hidden" name="instr_name" value="${list.instr_name}" /> 
						<input type="hidden" name="lec_fee" value="${list.lec_fee}" /> 
						<input type="hidden" name="lec_date" value="${list.lec_date}" /> 
						<input type="hidden" name="book_num" value="${list.book_num}" />
						<input type="hidden" name="book_name" value="${list.book_name}" /> 
						<input type="hidden" name="INSTR_IMG" value="${list.INSTR_IMG}" />
						<input type="hidden" name="STUDENT_ID" value="${student.STUDENT_ID}" />
						<input type="IMAGE" id="but1"  src="${contextPath}/resources/Image/book.png" style="width:60px; height:75px; margin-top : -80px; "  align="right" value="Submit">
					</form>
					<input type="IMAGE" value="button"  onclick="window.open('${contextPath}/video.do?lec_num=${list.lec_num}','window_name',
      'width=900,height=650,location=no,status=no,scrollbars=yes');"
                  src="${contextPath}/resources/Image/play.png" style="width:60px; height:65px; margin-top : -70px; margin-right : 70px;" align="right"> 
                        <hr>
                     </c:if>
               </c:forEach>
            </div>
            <div class="tab-pane" id="network" align="left">
            <c:forEach items="${list}" var = "list">
                  <c:if test="${list.subject_name eq '네트워크' }">
                  <a href="${contextPath}/Information1.do?lec_num=${list.lec_num}" ><h4>${list.lec_name}</h4></a><br>
                  <hr style="margin-top: -20px;">
                     <img src="${contextPath}/resources/Image/${list.INSTR_IMG}"
                     height="140px" width="199px" border=0 hspace=30 alt="이미지가 없습니다" align="left" >
                     <ul>
                        <li style = "margin-bottom:5px;">분류: ${list.cert_name}<br> </li>         
                        <li style = "margin-bottom:5px;">강사명 : ${list.instr_name} 선생님<br></li>
                        <li style = "margin-bottom:5px;">강의 기간 : ${list.lec_date}일 <br></li>
                        <li style = "margin-bottom:5px;">강의 비용 : <fmt:formatNumber value="${list.lec_fee }" pattern="#,###" />원<br></li>
                        <li style = "margin-bottom:5px;">교재 : ${list.book_name} <br></li>                     
                     </ul>
                      <form id="frmOS1" method="post" action="${contextPath}/insertOSLecture.do" style="text-align:center;">
						<input type="hidden" name="lec_num" value="${list.lec_num}" /> 
						<input type="hidden" name="lec_name" value="${list.lec_name}" /> 
						<input type="hidden" name="instr_num" value="${list.instr_num}" /> 
						<input type="hidden" name="instr_name" value="${list.instr_name}" /> 
						<input type="hidden" name="lec_fee" value="${list.lec_fee}" /> 
						<input type="hidden" name="lec_date" value="${list.lec_date}" /> 
						<input type="hidden" name="book_num" value="${list.book_num}" />
						<input type="hidden" name="book_name" value="${list.book_name}" /> 
						<input type="hidden" name="INSTR_IMG" value="${list.INSTR_IMG}" />
						<input type="hidden" name="STUDENT_ID" value="${student.STUDENT_ID}" />
						<input type="IMAGE" id="but1"  src="${contextPath}/resources/Image/book.png" style="width:60px; height:75px; margin-top : -80px; "  align="right" value="Submit">
					</form>
					<input type="IMAGE" value="button"  onclick="window.open('${contextPath}/video.do?lec_num=${list.lec_num}','window_name',
      'width=900,height=650,location=no,status=no,scrollbars=yes');"
                  src="${contextPath}/resources/Image/play.png" style="width:60px; height:65px; margin-top : -70px; margin-right : 70px;" align="right"> 
                        <hr>
                     </c:if>
               </c:forEach>
            </div>
            <div class="tab-pane" id="hacking" align="left">
            <c:forEach items="${list}" var = "list">
                  <c:if test="${list.subject_name eq '해킹 및 정보보안' }">
                  <a href="${contextPath}/Information1.do?lec_num=${list.lec_num}" ><h4>${list.lec_name}</h4></a><br>
                  <hr style="margin-top: -20px;">
                     <img src="${contextPath}/resources/Image/${list.INSTR_IMG}"
                     height="140px" width="100px" border=0 hspace=30 alt="이미지가 없습니다" align="left" >
                     <ul>
                        <li style = "margin-bottom:5px;">분류: ${list.cert_name}<br> </li>         
                        <li style = "margin-bottom:5px;">강사명 : ${list.instr_name} 선생님<br></li>
                        <li style = "margin-bottom:5px;">강의 기간 : ${list.lec_date}일 <br></li>
                        <li style = "margin-bottom:5px;">강의 비용 : <fmt:formatNumber value="${list.lec_fee }" pattern="#,###" />원<br></li>
                        <li style = "margin-bottom:5px;">교재 : ${list.book_name} <br></li>                     
                     </ul>         
                      <form id="frmOS1" method="post" action="${contextPath}/insertOSLecture.do" style="text-align:center;">
						<input type="hidden" name="lec_num" value="${list.lec_num}" /> 
						<input type="hidden" name="lec_name" value="${list.lec_name}" /> 
						<input type="hidden" name="instr_num" value="${list.instr_num}" /> 
						<input type="hidden" name="instr_name" value="${list.instr_name}" /> 
						<input type="hidden" name="lec_fee" value="${list.lec_fee}" /> 
						<input type="hidden" name="lec_date" value="${list.lec_date}" /> 
						<input type="hidden" name="book_num" value="${list.book_num}" />
						<input type="hidden" name="book_name" value="${list.book_name}" /> 
						<input type="hidden" name="INSTR_IMG" value="${list.INSTR_IMG}" />
						<input type="hidden" name="STUDENT_ID" value="${student.STUDENT_ID}" />
						<input type="IMAGE" id="but1"  src="${contextPath}/resources/Image/book.png" style="width:60px; height:75px; margin-top : -80px; "  align="right" value="Submit">
					</form>
					<input type="IMAGE" value="button"  onclick="window.open('${contextPath}/video.do?lec_num=${list.lec_num}','window_name',
      'width=900,height=650,location=no,status=no,scrollbars=yes');"
                  src="${contextPath}/resources/Image/play.png" style="width:60px; height:65px; margin-top : -70px; margin-right : 70px;" align="right"> 
                        <hr>
                     </c:if>
               </c:forEach>
            </div>
            <div class="tab-pane" id="cloud" align="left">
               <c:forEach items="${list}" var = "list">
                  <c:if test="${list.subject_name eq '클라우드' }">
                  <a href="${contextPath}/Information1.do?lec_num=${list.lec_num}" ><h4>${list.lec_name}</h4></a><br>
                  <hr style="margin-top: -20px;">
                     <img src="${contextPath}/resources/Image/${list.INSTR_IMG}"
                     height="140px" width="199px" border=0 hspace=30 alt="이미지가 없습니다" align="left" >
                     <ul>
                        <li style = "margin-bottom:5px;">분류: ${list.cert_name}<br> </li>         
                        <li style = "margin-bottom:5px;">강사명 : ${list.instr_name} 선생님<br></li>
                        <li style = "margin-bottom:5px;">강의 기간 : ${list.lec_date}일 <br></li>
                        <li style = "margin-bottom:5px;">강의 비용 : <fmt:formatNumber value="${list.lec_fee }" pattern="#,###" />원<br></li>
                        <li style = "margin-bottom:5px;">교재 : ${list.book_name} <br></li>                     
                     </ul>
                       <form id="frmOS1" method="post" action="${contextPath}/insertOSLecture.do" style="text-align:center;">
						<input type="hidden" name="lec_num" value="${list.lec_num}" /> 
						<input type="hidden" name="lec_name" value="${list.lec_name}" /> 
						<input type="hidden" name="instr_num" value="${list.instr_num}" /> 
						<input type="hidden" name="instr_name" value="${list.instr_name}" /> 
						<input type="hidden" name="lec_fee" value="${list.lec_fee}" /> 
						<input type="hidden" name="lec_date" value="${list.lec_date}" /> 
						<input type="hidden" name="book_num" value="${list.book_num}" />
						<input type="hidden" name="book_name" value="${list.book_name}" /> 
						<input type="hidden" name="INSTR_IMG" value="${list.INSTR_IMG}" />
						<input type="hidden" name="STUDENT_ID" value="${student.STUDENT_ID}" />
						<input type="IMAGE" id="but1"  src="${contextPath}/resources/Image/book.png" style="width:60px; height:75px; margin-top : -80px; "  align="right" value="Submit">
					</form>
					<input type="IMAGE" value="button"  onclick="window.open('${contextPath}/video.do?lec_num=${list.lec_num}','window_name',
      'width=900,height=650,location=no,status=no,scrollbars=yes');"
                  src="${contextPath}/resources/Image/play.png" style="width:60px; height:65px; margin-top : -70px; margin-right : 70px;" align="right"> 
                        <hr>   
                     </c:if>
               </c:forEach>
            </div>
            <div class="tab-pane" id="etc" align="left">
               <c:forEach items="${list}" var = "list">
                  <c:if test="${list.subject_name eq '기타' }">
                  <a href="${contextPath}/Information1.do?lec_num=${list.lec_num}" ><h4>${list.lec_name}</h4></a><br>
                  <hr style="margin-top: -20px;">
                     <img src="${contextPath}/resources/Image/${list.INSTR_IMG}"
                     height="140px" width="199px" border=0 hspace=30 alt="이미지가 없습니다" align="left" >
                     <ul>
                        <li style = "margin-bottom:5px;">분류: ${list.cert_name}<br> </li>         
                        <li style = "margin-bottom:5px;">강사명 : ${list.instr_name} 선생님<br></li>
                        <li style = "margin-bottom:5px;">강의 기간 : ${list.lec_date}일 <br></li>
                        <li style = "margin-bottom:5px;">강의 비용 : <fmt:formatNumber value="${list.lec_fee }" pattern="#,###" />원<br></li>
                        <li style = "margin-bottom:5px;">교재 : ${list.book_name} <br></li>                     
                     </ul>
                      <form id="frmOS1" method="post" action="${contextPath}/insertOSLecture.do" style="text-align:center;">
						<input type="hidden" name="lec_num" value="${list.lec_num}" /> 
						<input type="hidden" name="lec_name" value="${list.lec_name}" /> 
						<input type="hidden" name="instr_num" value="${list.instr_num}" /> 
						<input type="hidden" name="instr_name" value="${list.instr_name}" /> 
						<input type="hidden" name="lec_fee" value="${list.lec_fee}" /> 
						<input type="hidden" name="lec_date" value="${list.lec_date}" /> 
						<input type="hidden" name="book_num" value="${list.book_num}" />
						<input type="hidden" name="book_name" value="${list.book_name}" /> 
						<input type="hidden" name="INSTR_IMG" value="${list.INSTR_IMG}" />
						<input type="hidden" name="STUDENT_ID" value="${student.STUDENT_ID}" />
						<input type="IMAGE" id="but1"  src="${contextPath}/resources/Image/book.png" style="width:60px; height:75px; margin-top : -80px; "  align="right" value="Submit">
					</form>
					<input type="IMAGE" value="button"  onclick="window.open('${contextPath}/video.do?lec_num=${list.lec_num}','window_name',
      'width=900,height=650,location=no,status=no,scrollbars=yes');"
                  src="${contextPath}/resources/Image/play.png" style="width:60px; height:65px; margin-top : -70px; margin-right : 70px;" align="right"> 
                        <hr>
                     </c:if>
               </c:forEach>
            </div>
            
         </div>
      </div>
   </div>
</body>
</html>