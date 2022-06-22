<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored="false"
 %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 



<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />




<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>하단 고정바</title>


    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>

  
  
  
  <style>
   #chatbot-button{
       position : fixed;
       float : right;
       z-index : 99;
       bottom : 80px;
       right : 30px;
   }
   
   
   {
      position : absolute;
      left : 100px;
      top : 150px;
   }

  </style>
  
  
  
  
  <!-- '위로' 버튼 클릭 시, 페이지 상단으로 올라가도록 -->
  <script>
    $(function() {

        $("#MOVE_TOP_BTN").click(function() {
            $('html, body').animate({
                scrollTop : 0
            }, 400);
            return false;
        });
    });
  </script>
  
 
</head>




<body>
  <div style = "text-align:center;">

   <a href="${contextPath}/main.do">
      <img src="${contextPath}/resources/Image/fixedbar1.png" style="width:30px; margin-left:100px; margin-right:100px;"/>
   </a>
   <!-- 로그인 시, 나의 Ddada / 로그아웃 시, 로그인 창 나오도록 -->  
   <c:choose>
		 <c:when test="${isLogOn == true  && student != null}"> 
	   		<a href="${contextPath}/board/takeClassList.do">
	   		    <img src="${contextPath}/resources/Image/fixedbar2.png" style="width:30px; margin-left:100px; margin-right:100px;"/>
	   		</a>
	   	 </c:when>
	   	 <c:otherwise>
	   		<a href="${contextPath}/member/loginForm.do">
	   		    <img src="${contextPath}/resources/Image/fixedbar2.png" style="width:30px; margin-left:100px; margin-right:100px;"/>
	   		</a>
	   	 </c:otherwise>
   	</c:choose>
      
   <!-- 로그인 시, 장바구니 / 로그아웃 시, 로그인 창 나오도록 -->  
   <c:choose>
		 <c:when test="${isLogOn == true  && student != null}">  
   			<a href="#">
      		<img src="${contextPath}/resources/Image/fixedbar3.png" style="width:30px; margin-left:100px; margin-right:100px;"/> </a>
      	 </c:when>
      	 <c:otherwise>
	   		<a href="${contextPath}/member/loginForm.do">
	   		<img src="${contextPath}/resources/Image/fixedbar3.png" style="width:30px; margin-left:100px; margin-right:100px;"/>
	   		</a>
	   	 </c:otherwise>
   </c:choose>
   <!-- 페이지 상단으로 올라가도록 -->   
   <a id="MOVE_TOP_BTN" href="#">
      <img src="${contextPath}/resources/Image/fixedbar4.png" style="width:30px; margin-left:100px; margin-right:100px;"/> </a>


  </div>
  
  
  <div >
    <a id=chatbot-button href = "#chatbotPopup">
       <img src="${contextPath}/resources/Image/chatbot.png" width="60px"/>
    </a>
  </div>
  
  
  
 <script>
    $("#chatbot-button").click(function() {

      $("#chatbotPopup").dialog({
       width:250,  
       height:580,
       modal:false
      });
    });
 </script>
  
  
  
  
  <div id="chatbotPopup" class="modal" style="width:250px; height:600px; bottom : 10px; align:center;">
     <h4 style="text-align:center;"> 💙상담봇💙 </h4>
     
     <div class="chat" style = "border:2px solid #6ca8d8; width:200px; height:350px; text-align : center;" >
     채팅 화면
     </div>
     
     <br>
         
     <input type="search"
            placeholder="상담 내용 입력"
            aria-label="Search" style="width: 150px; display:inline;">     
     <button type="submit"
             style="border-color: black; background-color: rgb(186, 222, 248); color: black; display : inline;">
             상담</button>
     <br>      
     <br>  

     <p><a href="#"> 상담 페이지로 가기 </a></p>
 </div>



  

  
  
<!--    <div id="chatbotPopup" class="modal" style="width:250px; height:500px; bottom : 10px; align:center;">
     <h3 style="text-align:center;"> 💙상담봇💙 </h3>
     
     <div class="chat" style = "border:2px solid #6ca8d8; width:200px; height:300px; text-align : center;" >
     채팅 화면
     </div>
     
     <br>
         
     <input type="search"
            placeholder="무엇을 상담하시겠습니까?"
            aria-label="Search" style="width: 180px; display:inline-block;;">     
     <button type="submit"
             style="border-color: black; background-color: rgb(186, 222, 248); color: black; display : inline;">
             상담</button>
     <br>        
                     
     <p><a href="#"> 상담 페이지로 가기 </a></p>
 </div>


  <script>
    $('a[href="#chatbotPopup"]').click(function(event) {
      event.preventDefault();
 
      $(this).dialog({
       modal:false
        fadeDuration: 250
      });
    });
</script>
 -->
 

</body>
</html>