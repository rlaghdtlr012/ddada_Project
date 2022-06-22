<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html>


<head>
	<meta charset="UTF-8">
	<title> 관리자 페이지 </title>
</head>


<body>




	<div class="row" style="margin-left:50px; margin-top: 70px;">
		<div class="col-9" style="margin-top: -35px;">
	        <ul class="nav nav-tabs" id="myTab" role="tablist">
	          <li class="nav-item" role="presentation">
	            <a class="nav-link active" id="member-tab" data-toggle="tab" href="#member" role="tab" aria-controls="member" aria-selected="true">회원 관리</a>
	          </li>
	          
	          <li class="nav-item" role="presentation">
	            <a class="nav-link" id="instructor-tab" data-toggle="tab" href="#instructor" role="tab" aria-controls="instructor" aria-selected="false">강사 관리</a>
	          </li>
	          
	          <li class="nav-item" role="presentation">
	            <a class="nav-link" id="education-tab" data-toggle="tab" href="#education" role="tab" aria-controls="education" aria-selected="false">교육 관리</a>
	          </li>
	          
	          <li class="nav-item" role="presentation">
	            <a class="nav-link" id="payment-tab" data-toggle="tab" href="#payment" role="tab" aria-controls="payment" aria-selected="false">결제 관리</a>
	          </li>
	          
	          
	        </ul>
	        

	        
	        
	        
	
	       <div class="tab-content" id="myTabContent">
	        
	        
	          <div class="tab-pane fade show active" id="member" role="tabpanel" aria-labelledby="member-tab">
	          
	          <br>
	          <br>
	          
	          
	          	          
	          <form class="form-inline my-2 my-lg-0">
	          	<input class="form-control mr-sm-2" type="search"
	                 placeholder="회원 아이디를 입력해주세요."
	                 aria-label="Search" style="width: 250px;">
	                 
	         	 <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
	                  style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
	                  Search
	             </button>
	          </form>
		         
		         
		         
	          
	          <div align = "right">

        
 				 <button onclick="location.href='${contextPath}/member/adminInsert.do'" class="btn btn-outline-success my-2 my-sm-0" type="submit"
                        style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
                  등록</button>
                  
                 <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
                	     style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
                  변경</button>
                  
                 <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
                	     style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
                  삭제</button>
                  
	          </div>
	           
	           
	          <br>
	          
	          
		       <table border="1"  align="center"  width="80%">
	          	     <tr align="center">
	         			<th>회원 아이디</th>
	         			<th>회원 이름</th>
	         			<th>회원 폰번호</th>
	         			<th>회원 이메일</th>
	         			<th>회원 주소</th>
	         			<th>가입일자</th>
	                 </tr>
	                 
	   
	      	      <c:forEach var="student" items="${membersList}">     
	           		 <tr align="center">
	                	<td>${student.STUDENT_ID}</td>
	               	 	<td>${student.STUDENT_NAME}</td>
	               	 	<td>${student.STUDENT_PHONE}</td>
	               	 	<td>${student.STUDENT_EMAIL}</td>
	               	 	<td>${student.STUDENT_ADDR}</td>
	               	 	<td>${student.STUDENT_JOINDATE}</td>
	                 </tr>
	     	     </c:forEach>
              </table>

	          </div>
	
	
	
	
	
	
	          <div class="tab-pane fade show" id="instructor" role="tabpanel" aria-labelledby="instructor-tab">


	          <br>
	          <br>
	          
	          <form class="form-inline my-2 my-lg-0">
	          	<input class="form-control mr-sm-2" type="search"
	                 placeholder="강사 이름을 입력해주세요."
	                 aria-label="Search" style="width: 250px;">
	                 
	         	 <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
	                  style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
	                  Search
	             </button>
	          </form>
	          
	          
	          <div align = "right">
	          	 <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
                	     style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
                  등록</button>
                  
                 <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
                	     style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
                  변경</button>
                  
                 <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
                	     style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
                  삭제</button>
                  
	          </div>
	           
	          <br>

		       <table border="2"  align="center"  width="80%">
	          	     <tr align="center">
	         			<th>강사 번호</th>
	         			<th>강사 이름</th>
	                 </tr>
	   
	      	      <c:forEach var="instructor" items="${instructorList}">     
	           		 <tr align="center">
	                	<td>${instructor.INSTR_NUM}</td>
	               	 	<td>${instructor.INSTR_NAME}</td>
	                 </tr>
	     	     </c:forEach>
              </table>


	          </div>
	          
	          



 
	          <div class="tab-pane fade show" id="education" role="tabpanel" aria-labelledby="education-tab">
	          
	          <br>
	          <br>
	          
	          <div align = "right">
	          	 <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
                	     style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
                  강좌 업로드</button>
                  
                 <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
                	     style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
                  강좌 삭제</button>
                  
	          </div>
	           
	           
	          <br>
	          
	          
	          
	          
		       <table border="3"  align="center"  width="80%">
	          	     <tr align="center">
	         			<th>강사 번호</th>
	         			<th>강사 이름</th>
	                 </tr>
	   
	      	      <c:forEach var="instructor" items="${instructorList}">     
	           		 <tr align="center">
	                	<td>${instructor.INSTR_NUM}</td>
	               	 	<td>${instructor.INSTR_NAME}</td>
	                 </tr>
	     	     </c:forEach>
              </table>
              
	          </div>
	
	
	
	
	
	
	
	
	
	
	          <div class="tab-pane fade show" id="payment" role="tabpanel" aria-labelledby="payment-tab">
	             <br>
	             <h4 class="myDD_category" style="text-align:left;">프로필 설정 ></h4>
	             <br>
	             <div class="card text-center" style="width: 600px;">
	              <div class="card-body" style="margin-top:20px; margin-left:20px;">
	                <h5 class="card-title">000님</h5>
	                <br>
	                <p class="card-text" style="font-size: 16px;">아이디 :</p>
	                <br>
	                <p class="card-text" style="font-size: 16px;">비밀번호 : ______
	                   <a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
	                           position:relative; right: 200px; width:50px; height: 30px; font-size:14px;display:inline; float:right;">수정</a></p>
	                <br>
	                <p class="card-text" style="font-size: 16px;">휴대전화 : ____
	                   <a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
	                           	   position:relative; right: 200px; width:50px; height: 30px; font-size:14px;display:inline; float:right;">수정</a></p>
	                <br>
	                <p class="card-text" style="font-size: 16px;">이메일 주소 : ____
	                   <a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
	                           	   position:relative; right: 200px; width:50px; height: 30px; font-size:14px;display:inline; float:right;">수정</a></p>
	                <br>
	                <p class="card-text" style="font-size: 16px;">주소 : ____
	                   <a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
	                           	   position:relative; right: 200px; width:50px; height: 30px; font-size:14px;display:inline; float:right;">수정</a></p>
	                <br>
	              </div>
	              <a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
	                     position:relative; right: -450px; width:100px; margin:10px;">회원 탈퇴</a>
	             </div>
	          </div>
	          
	          
	          
	          

	          
	          
	       </div>
	      </div>
	 </div>   
	
	
	
	



</body>
</html>